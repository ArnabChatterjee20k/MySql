import threading , json
class BankAccount:
    """
        Atomicity using rollback mechanisms in case of failure
        Consistency using checks and validations
        Isolation using thread locks to prevent concurrent access to data
        Durability using storage mechanisms
    """
    def __init__(self,balance = 0):
        self.balance = balance
        self.lock = threading.Lock()
    def deposit(self,amount):
        # during operation by locking the thread
        # if error occurs here the lock is released and prevents inconsistent state
        with self.lock:
            print("Depositing: ",amount)
            self.balance+=amount
    def withdraw(self,amount):
        with self.lock:
            if self.balance >= amount:
                print("Withdrawing:", amount)
                self.balance -= amount
            else:
                print("Insufficient funds")

def transfer_funds(amount:int|float,from_account:BankAccount,to_account:BankAccount):
    with from_account.lock:
        if from_account.balance >= amount:
            print("Transferring", amount, "from account A to account B")
            from_account.balance -= amount
            to_account.balance += amount
        else:
            print("Insufficient funds for transfer")

def persist_state(accounts):
    with open("bank_accounts.json", "w") as file:
        json.dump(accounts, file)

def load_state():
    try:
        with open("bank_accounts.json", "r") as file:
            return json.load(file)
    except FileNotFoundError:
        return None

def simulate_transaction():
    # Load previous state or create new accounts
    previous_state = load_state()
    if previous_state:
        account_A = BankAccount(previous_state["A"])
        account_B = BankAccount(previous_state["B"])
    else:
        account_A = BankAccount(100)
        account_B = BankAccount(50)

    # Simulate a transaction
    transfer_amount = 30
    transfer_funds(transfer_amount,account_A, account_B)

    # Persist current state
    current_state = {"A": account_A.balance, "B": account_B.balance}
    persist_state(current_state)

    print("Account A balance:", account_A.balance)
    print("Account B balance:", account_B.balance)


simulate_transaction()
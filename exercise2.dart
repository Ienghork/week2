class BankAccount {
  int accId;
  String accOwner;
  double _balance = 0;

  BankAccount({required this.accId, required this.accOwner});
  double balance() {
    return _balance;
  }

  void credit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (_balance - amount < 0) {
      print("balance no enough");
    } else {
      _balance -= amount;
    }
  }
}

class Bank {
  List<BankAccount> accInfo = [];
  BankAccount createAccount(int accountId, String accountOwner) {
    for (var acc in accInfo) {
      if (acc.accId == accountId) {
        print("ID account alrady exist");
      }
    }
    BankAccount newAcc = BankAccount(accId: accountId, accOwner: accountOwner);
    accInfo.add(newAcc);

    return newAcc;
  }
}

void main() {
  Bank b = Bank();
  var acc1 = b.createAccount(10, "bo");
  var acc2 = b.createAccount(20, "bo");

  acc1.credit(100);
  acc2.credit(200);
  acc1.credit(300);

  print("Account Owner: ${acc1.accOwner}");
  print("Balance: ${acc1.balance()}");
}

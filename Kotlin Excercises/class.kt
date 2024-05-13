class BankAccount(val accountNumber: String, var balance: Double) {

    fun deposit(amount: Double) {
        if (amount > 0) {
            balance += amount
            println("Deposit of $$amount successful. New balance: $$balance")
        } else {
            println("Invalid deposit amount.")
        }
    }

    fun withdraw(amount: Double) {
        if (amount > 0) {
            if (balance >= amount) {
                balance -= amount
                println("Withdrawal of $$amount successful. New balance: $$balance")
            } else {
                println("Insufficient funds for withdrawal.")
            }
        } else {
            println("Invalid withdrawal amount.")
        }
    }

    fun printBalance() {
        println("Current balance: $$balance")
    }
}

fun main() {
    val account = BankAccount("123456789", 1000.0)
    
    account.printBalance()
    account.deposit(500.0)
    account.withdraw(200.0)
    account.printBalance()
    account.withdraw(2000.0)
}

fun main() {
    val passwordLength = 8 // Length of the password
    val password = generatePassword(passwordLength)
    println("Generated Password: $password")
}

fun generatePassword(length: Int): String {
    val charPool : List<Char> = ('a'..'z') + ('A'..'Z') + ('0'..'9') + listOf('!', '@', '#', '$', '%', '^', '&', '*')
    return (1..length)
        .map { charPool.random() }
        .joinToString("")
}

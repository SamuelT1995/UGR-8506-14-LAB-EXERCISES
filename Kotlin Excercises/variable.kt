fun main() {
    print("Enter the first number: ")
    val number1 = readLine()?.toDoubleOrNull()

    print("Enter the second number: ")
    val number2 = readLine()?.toDoubleOrNull()

    print("Enter the operation (addition, subtraction, multiplication, division): ")
    val operation = readLine()

    if (number1 != null && number2 != null && operation != null) {
        val result = when (operation.toLowerCase()) {
            "addition" -> number1 + number2
            "subtraction" -> number1 - number2
            "multiplication" -> number1 * number2
            "division" -> if (number2 != 0.0) number1 / number2 else null
            else -> null
        }

        if (result != null) {
            println("Result: $result")
        } else {
            println("Error: Division by zero!")
        }
    } else {
        println("Error: Invalid input!")
    }
}

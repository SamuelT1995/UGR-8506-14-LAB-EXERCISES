fun transformToUppercase(strings: List<String>): List<String> {
    return strings.map { it.toUpperCase() }
}

fun filterNumbersGreaterThan(numbers: List<Int>, threshold: Int): List<Int> {
    return numbers.filter { it > threshold }
}

fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { acc, num -> acc + num }
}

fun main() {
    val strings = listOf("apple", "banana", "orange")
    val numbers1 = listOf(5, 12, 9, 7, 15, 20)
    val numbers2 = listOf(2, 8, 11, 6, 13)

    println("Transformed strings: ${transformToUppercase(strings)}")
    println("Numbers greater than 10 in numbers1: ${filterNumbersGreaterThan(numbers1, 10)}")
    println("Sum of numbers2: ${calculateSum(numbers2)}")
}

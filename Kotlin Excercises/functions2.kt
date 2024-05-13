fun findMax(numbers: List<Int>): Int? {
    if (numbers.isEmpty()) return null
    var max = numbers[0]
    for (number in numbers) {
        if (number > max) {
            max = number
        }
    }
    return max
}

fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}

fun calculateAverage(numbers: List<Double>): Double {
    if (numbers.isEmpty()) return 0.0
    var sum = 0.0
    for (number in numbers) {
        sum += number
    }
    return sum / numbers.size
}

fun main() {
    val numbers1 = listOf(5, 12, 9, 7, 15, 20)
    val numbers2 = listOf(2, 8, 11, 6, 13)
    val numbers3 = listOf(3.5, 6.2, 8.9, 4.1, 7.3)

    println("Max value in numbers1: ${findMax(numbers1)}")
    println("Even numbers in numbers2: ${filterEvenNumbers(numbers2)}")
    println("Average of numbers3: ${calculateAverage(numbers3)}")
}

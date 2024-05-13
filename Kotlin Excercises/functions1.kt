fun analyzeString(input: String): Triple<Int, Int, Int> {
    val words = input.split("\\s+".toRegex()).size
    val uppercaseCount = input.count { it.isUpperCase() }
    val vowelsCount = input.count { it.toLowerCase() in "aeiou" }

    return Triple(words, uppercaseCount, vowelsCount)
}

fun main() {
    val inputString = "Hello World! This is a Test String with Vowels and Uppercase Letters."
    val (wordCount, uppercaseCount, vowelsCount) = analyzeString(inputString)

    println("Number of words: $wordCount")
    println("Number of uppercase letters: $uppercaseCount")
    println("Number of vowels: $vowelsCount")
}

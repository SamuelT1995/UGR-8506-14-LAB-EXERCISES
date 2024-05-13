fun main() {
    val originalPrice = 100.0
    var discountPercentage = 0.6 // 60%
    val threshold = 0.5 // 50%
    var finalPrice: Double

    if (discountPercentage > threshold) {
        println("The discount percentage is too high. Adjusting to the threshold value.")
        discountPercentage = threshold
    }

    finalPrice = originalPrice * (1 - discountPercentage)

    println("Original Price: $$originalPrice")
    println("Discount Percentage: ${discountPercentage * 100}%")
    println("Final Price: $$finalPrice")
}

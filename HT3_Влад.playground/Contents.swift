import UIKit

var arr: [(Int, String)] = [(2, "c"), (6, "a"), (3, "d"), (1, "e"), (5, "b"),(8, "f")]

print(arr
    .map {(number: Int, string: String) in
        return (number * number, string)
    }
    .filter {(number: Int, string: String) in
        return number.isMultiple(of: 2)
    }
    .sorted(by: {$0.1 < $1.1}))

func arrSummar(arr: [Int], total: Int) -> (Int, Int) {
    arr.sorted()
    var left = 0
    var righ = arr.count - 1
    while left < righ {
        if arr[left] + arr[righ] < total {
            left += 1
        } else if arr[left] + arr[righ] > total {
            righ -= 1
        } else {
            return (arr[left], arr[righ])
        }
    }
    return (0, 0)
}

let array = [1,4,6,21]

arrSummar(arr: array, total: 22)



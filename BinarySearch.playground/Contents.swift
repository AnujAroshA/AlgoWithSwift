import Cocoa

let numbers = [1, 4, 6, 7, 10, 13, 17, 20, 27, 32]

func binarySearch(array: [Int], key: Int) -> Bool {
    
    if array.count == 0 {return false}
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = maxIndex/2
    let midValue = array[midIndex]
    print("midValue = \(midValue)")
    
    if key < array[minIndex] || key > array[maxIndex] {
        print("\(key) is not in the array")
        return false
    }
    
    if key > midValue {
        print("midIndex = \(midIndex) : maxIndex = \(maxIndex)")
        let slice = Array(array[midIndex + 1...maxIndex])
        print("key > midValue -> \(slice) \n")
        return binarySearch(array: slice, key: key)
    }
    
    if key < midValue {
        print("minIndex = \(minIndex) : midIndex = \(midIndex)")
        let slice = Array(array[minIndex...midIndex - 1])
        print("key < midValue -> \(slice) \n")
        return binarySearch(array: slice, key: key)
    }
    
    if key == midValue {
        print("\(key) found in the array")
        return true
    }
    
    return false
}

binarySearch(array: numbers, key: 17)

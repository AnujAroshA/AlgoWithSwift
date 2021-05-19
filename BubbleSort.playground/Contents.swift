import Foundation

let unsortedArray = [4, 5, 2, 1, 3]

func bubbleSort(array: [Int]) -> [Int] {
    
    var mutableArray = array
    
    for _ in 0..<mutableArray.count-1 {
        
        for y in 0..<mutableArray.count-1 {
            
            if (mutableArray[y] > mutableArray[y+1]) {
                
                let temp = mutableArray[y]
                mutableArray[y] = mutableArray[y+1]
                mutableArray[y+1] = temp
            }
        }
    }
    
    return mutableArray
}

print(bubbleSort(array: unsortedArray))

func bubbleSort2(array: [Int]) -> [Int] {
    
    var isSwapped = false
    var mutableArray = array
    
    repeat {
        isSwapped = false
        for y in 0..<mutableArray.count-1 {
            if (mutableArray[y] > mutableArray[y+1]) {
                mutableArray.swapAt(y+1, y)
                isSwapped = true
            }
        }
    } while isSwapped
    
    return mutableArray
}

print(bubbleSort2(array: unsortedArray))

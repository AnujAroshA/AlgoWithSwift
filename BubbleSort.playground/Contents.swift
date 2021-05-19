import Foundation

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


let unsortedArray = [4, 5, 2, 1, 3]
print(bubbleSort(array: unsortedArray))

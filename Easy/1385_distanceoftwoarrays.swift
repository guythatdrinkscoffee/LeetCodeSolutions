/* Given two integer arrays arr1 and arr2, and the integer d, return the distance value between the two arrays.
The distance value is defined as the number of elements arr1[i] such that there is not any element arr2[j] 
where |arr1[i]-arr2[j]| <= d. */
func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
    var distance = 0 
    
    for i in 0..<arr1.count{
        for j in 0..<arr2.count{
            if abs(arr1[i] - arr2[j]) <= d  {
                distance -= 1
                break
            }
        }
        
        distance += 1; 
    }

    return distance; 
}
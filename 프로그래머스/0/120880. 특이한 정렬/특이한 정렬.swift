import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    var nums = numlist.map { [abs(n-$0), $0]}
    
    for i in 0..<nums.count-1 {
        for j in i+1..<nums.count {
            if (nums[i][0] > nums[j][0]) || (nums[i][0] == nums[j][0] && nums[i][1] < nums[j][1]) {
                let temp = nums[i]
                nums[i] = nums[j]
                nums[j] = temp
            }
        }
    }
    
    return nums.map { $0[1] }
}
      
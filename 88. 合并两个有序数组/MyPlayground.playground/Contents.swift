import UIKit


class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var list1Index = m - 1
        var list2Index = n - 1
        var index = m + n - 1

        while index >= 0 {
            if list1Index < 0 {
                nums1[index] = nums2[list2Index]
                index -= 1
                list2Index -= 1
                continue
            }
            if list2Index < 0 {
                nums1[index] = nums1[list1Index]
                index -= 1
                list1Index -= 1
                continue
            }
            if nums1[list1Index] < nums2[list2Index] {
                nums1[index] = nums2[list2Index]
                index -= 1
                list2Index -= 1
            } else {
                nums1[index] = nums1[list1Index]
                index -= 1
                list1Index -= 1
            }
        }
    }
}

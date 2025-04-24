package main

import "fmt"

func main() {
	fmt.Println(removeElement([]int{4,2,0,2,2,1,4,4,1,4,3,2}, 4))
	// fmt.Println(removeElement([]int{3,3}, 3))
}

func removeElement(nums []int, val int) int {
	var ans = len(nums)
	for i := 0; i < ans; {
		if nums[i] == val {
			nums[i] = nums[ans - 1]
			ans--
		} else {
			i++
		}
	}
	return ans
}

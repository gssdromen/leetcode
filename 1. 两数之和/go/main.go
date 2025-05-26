package main

import "fmt"

func main() {
	fmt.Println(twoSum([]int{2, 2, 7, 15}, 9))
}

func twoSum(nums []int, target int) []int {
	if len(nums) < 2 {
		return []int{}
	}
	if len(nums) == 2 {
		if nums[0]+nums[1] == target {
			return []int{0, 1}
		} else {
			return []int{}
		}
	}

	left := 0

	for left < len(nums) {
		right := left + 1
		for right < len(nums) {
			if nums[left]+nums[right] == target {
				return []int{left, right}
			} else {
				right++
			}
		}
		left++
	}
	return []int{}
}

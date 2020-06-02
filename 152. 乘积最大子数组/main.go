package main

import "fmt"

func main() {
	fmt.Println(maxProduct([]int{1, 2, 3, -4}))
}

func MinOf(vars ...int) int {
	min := vars[0]

	for _, i := range vars {
		if min > i {
			min = i
		}
	}

	return min
}

func MaxOf(vars ...int) int {
	max := vars[0]

	for _, i := range vars {
		if max < i {
			max = i
		}
	}

	return max
}

func maxProduct(nums []int) int {
	count := len(nums)
	var minList []int = make([]int, count)
	var maxList []int = make([]int, count)
	var result = nums[0]

	for i := 0; i < count; i++ {
		if i == 0 {
			minList[0] = nums[i]
			maxList[0] = nums[i]
		} else {
			minList[i] = MinOf(nums[i], minList[i-1]*nums[i], maxList[i-1]*nums[i])
			maxList[i] = MaxOf(nums[i], minList[i-1]*nums[i], maxList[i-1]*nums[i])
		}
		result = MaxOf(result, maxList[i])
	}

	return result
}

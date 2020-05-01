package main

import "fmt"

func main() {
	fmt.Println(singleNumbers([]int{1, 2, 3, 3, 4, 4}))
}

func singleNumbers(nums []int) []int {
	if len(nums) <= 2 {
		return nums
	}

	var left = 0
	var right = 0
	var sum = 0
	var mask = 1
	for _, num := range nums {
		sum = sum ^ num
	}

	for mask&sum == 0 {
		mask = mask << 1
	}

	for _, num := range nums {
		if num&mask == 0 {
			left ^= num
		} else {
			right ^= num
		}
	}

	return []int{left, right}
}

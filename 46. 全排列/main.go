package main

import "fmt"

func main() {
	a := []int{1, 2, 3, 4}

	fmt.Println(permute(a))
}

func permute(nums []int) [][]int {
	if len(nums) == 1 {
		return [][]int{nums}
	}

	var result = [][]int{}

	for i, num := range nums {
		combine := make([]int, len(nums)-1)
		copy(combine[0:], nums[0:i])
		copy(combine[i:], nums[i+1:])

		subResult := permute(combine)
		for _, s := range subResult {
			result = append(result, append(s, num))
		}
	}

	return result
}

package main

import (
	"fmt"
	"math"
)

func main() {
	fmt.Println(minWindow("ab", "A"))

}

func minWindow(s string, t string) string {
	if len(s) == 0 {
		return ""
	}
	if len(t) > len(s) {
		return ""
	}

	var answerLength = math.MaxInt64
	var answerStartIndex = 0

	var keys = make(map[byte]int)
	var hasKeys = make(map[byte]bool)
	var windowKeys = make(map[byte]int)

	var check = func() bool {
		flag := true
		for k := range hasKeys {
			if windowKeys[k] < keys[k] {
				flag = false
				break
			}
		}
		return flag
	}

	for _, r := range t {
		keys[byte(r)]++
		hasKeys[byte(r)] = true
	}

	left := 0
	right := 0
	for right < len(s) {
		r := s[right]
		if hasKeys[r] {
			windowKeys[r]++
		}
		for check() {
			if right-left+1 < answerLength {
				answerLength = right - left + 1
				answerStartIndex = left
			}
			ar := s[left]
			if hasKeys[ar] {
				windowKeys[ar]--
			}
			left++
		}
		right++
	}

	if answerStartIndex+answerLength <= len(s) {
		return s[answerStartIndex : answerStartIndex+answerLength]
	}
	return ""
}

func minWindow(s string, t string) string {
	window, need := make(map[string]int), make(map[string]int)
	for _, v := range t {
		need[string(v)]++
	}
	left, right := 0, 0
	count, min := 0, len(s)+1
	res := ""
	for right < len(s) {
		if window[string(s[right])] < need[string(s[right])] {
			count++
		}
		window[string(s[right])]++
		for left < right && window[string(s[left])] > need[string(s[left])] {
			window[string(s[left])]--
			left++
		}
		width := right - left + 1
		if count == len(t) && min > width {
			min = width
			res = s[left : right+1]
		}
		right++
	}
	return res
}

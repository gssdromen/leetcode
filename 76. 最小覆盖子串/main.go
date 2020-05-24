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
	needs := make(map[uint8]int)
	includes := make(map[uint8]int)
	for i := range t {
		if _, ok := needs[t[i]]; !ok {
			needs[t[i]] = 1
		} else {
			needs[t[i]]++
		}
		includes[t[i]] = 0
	}

	left, right := 0, 0
	valid := 0
	minLength, start := 0, 0
	for right < len(s) {
		if _, ok := includes[s[right]]; ok {
			includes[s[right]]++
			if includes[s[right]] == needs[s[right]] {
				valid++
			}
		}
		right++

		for valid == len(needs) {
			if minLength == 0 || minLength > right-left {
				minLength = right - left
				start = left
			}
			if _, ok := includes[s[left]]; ok {
				if includes[s[left]] == needs[s[left]] {
					valid--
				}
				includes[s[left]]--
			}
			left++
		}
	}
	if minLength == 0 {
		return ""
	}
	return s[start : start+minLength]
}

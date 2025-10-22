package main

import "unicode"

func main() {

}

func isPalindrome(s string) bool {
	left, right := 0, len(s)-1
	for left < right {
		rLeft, rRight := rune(s[left]), rune(s[right])
		if !isValid(rLeft) {
			left++
		} else if !isValid(rRight) {
			right--
		} else if unicode.ToLower(rLeft) != unicode.ToLower(rRight) {
			return false
		} else {
			left++
			right--
		}
	}
	return true
}

// isValid 判断这个rune是否是数字或者字母
func isValid(r rune) bool {
	return unicode.IsDigit(r) || unicode.IsLetter(r)
}

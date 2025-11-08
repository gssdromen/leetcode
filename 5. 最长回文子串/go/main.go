package main

func main() {

}

func longestPalindrome(s string) string {
	count := len(s)
	answer := ""

	var dp = make([][]bool, count)
	for i := 0; i < count; i++ {
		dp[i] = make([]bool, count)
	}

	for length := 0; length < count; length++ {
		for left := 0; left+length < count; left++ {
			right := left + length
			if length == 0 {
				dp[left][right] = true
			} else if length == 1 {
				dp[left][right] = s[left] == s[right]
			} else {
				dp[left][right] = s[left] == s[right] && dp[left+1][right-1]
			}

			if dp[left][right] == true && (right-left+1) > len(answer) {
				answer = s[left : right+1]
			}
		}
	}

	return answer
}

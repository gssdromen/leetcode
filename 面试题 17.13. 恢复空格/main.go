package main

import (
	"fmt"
	"math"
)

const (
	P    = math.MaxInt32
	BASE = 41
)

func respace(dictionary []string, sentence string) int {
	hashValues := map[int]bool{}
	for _, word := range dictionary {
		hashValues[getHash(word)] = true
	}
	f := make([]int, len(sentence)+1)
	for i := 1; i < len(f); i++ {
		f[i] = len(sentence)
	}

	for i := 1; i <= len(sentence); i++ {
		f[i] = f[i-1] + 1
		hashValue := 0
		for j := i; j >= 1; j-- {
			t := int(sentence[j-1]-'a') + 1
			hashValue = (hashValue*BASE + t) % P
			if hashValues[hashValue] {
				fmt.Print("i:")
				fmt.Println(i)
				fmt.Print("j:")
				fmt.Println(j)
				f[i] = min(f[i], f[j-1])
			}
		}
	}
	fmt.Println(f)
	return f[len(sentence)]
}

func getHash(s string) int {
	hashValue := 0
	for i := len(s) - 1; i >= 0; i-- {
		tmp := int(s[i] - 'a')

		hashValue = (hashValue*BASE + tmp + 1) % P
	}
	return hashValue
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func main() {
	dict := []string{"looked", "just", "like", "her", "brother"}
	sen := "jesslookedjustliketimherbrother"
	fmt.Println(respace(dict, sen))
}

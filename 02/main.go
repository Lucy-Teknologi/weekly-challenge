package main

import (
	"fmt"
)

func main() {
	var width, input int
	var nearest []int

	fmt.Println("Enter width of square and multiplexer input, separated by a space:")
	fmt.Scanln(&width, &input)

	for current := width; current > 0; current-- {
		if current%input == 0 {
			nearest = append(nearest, current)
		}

		if len(nearest) == 1 {
			break
		}
	}

	for current := width; ; current++ {
		if current%input == 0 {
			nearest = append(nearest, current)
		}

		if len(nearest) == 2 {
			break
		}
	}

	if contains(nearest, width) {
		fmt.Println("Result:", width)
	} else {
		fmt.Println("Result:", nearest)
	}
}

func contains(slice []int, value int) bool {
	for _, item := range slice {
		if item == value {
			return true
		}
	}

	return false
}

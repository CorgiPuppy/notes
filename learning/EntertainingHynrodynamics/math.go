package main

import (
	"fmt"
	// "math"
)

var pi float64 = 3.14

func main() {
	var A1 float64 = 1
	// A /= math.Pow(100, 2)
	F1 := 10.0
	p := F1 / A1

	fmt.Println("Power of the 1 Piston:", F1, "N")
	fmt.Println("Area of the 1 Piston:", A1, "cm2")

	var A2 float64 = 10
	F2 := p * A2

	fmt.Println("Power of the 2 Piston:", F2, "N")
	fmt.Println("Area of the 2 Piston:", A2, "cm2")

	fmt.Println("Pressure:", p, "N/cm2")
}
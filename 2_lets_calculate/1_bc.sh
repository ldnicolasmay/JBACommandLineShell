#!/usr/bin/env bash

# bc (Basic Calculator) utility

# less than
bc <<< "10 < 1"

# not equals
bc <<< "10 != 11"

# && => both operands are non-zero
bc <<< "5 && 6"
bc <<< "0 && 6"

# || => at least one operand is non-zero
bc <<< "0 || 123"

# ! => not
bc <<< "!0"    # => 1
bc <<< "!1"    # => 0
bc <<< "!123"  # => 0

# using bc's standard math library; use -l flag

bc -l <<< "s(30)"            # => sin(30)
bc -l <<< "4 * a(1)"         # => 3.14159265358979323844 pi
bc -l <<< "s(4 * a(1))"      # => .00000000000000000002 sin(pi)
bc -l <<< "s(4 * a(1) / 2)"  # => 1.00000000000000000000 sin(pi/2)

bc -l <<< "c(3)"     # cosine
bc -l <<< "a(1)"     # arctangent
bc -l <<< "l(45)"    # natural log
bc -l <<< "e(1)"     # Euler's number
bc -l <<< "sqrt(9)"  # square root

bc -l <<< "l(e(1))"  # => .99999999999999999999

#Arithmetic operation that returns a floating-point number
bc -l <<< "(1 + 2)/7 * 2 ^ 2"
#Using sine and cosine functions
bc -l <<< "s(1) + c(1)"
#Using logarithmic and exponential functions
bc -l <<< "e(1) + l(5)"
#Finding the square root of a number
bc -l <<< "sqrt(27)"

# Convert binary to octal
bc -l <<< "ibase=2; obase=8; 10"
bc -l <<< "ibase=2; obase=8; 1111"
bc -l <<< "ibase=2; obase=8; 10000"

# Convert decimal to binary
bc -l <<< "obase=2; 2"
bc -l <<< "obase=2; 15"
bc -l <<< "obase=2; 12345678"

# Use "scale" to control length of floating-point numbers
bc -l <<< "scale=3; a(30)"


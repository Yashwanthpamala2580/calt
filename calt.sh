#!/bin/bash

# Addition function
add() {
    echo "Result: $(($1 + $2))"
}

# Subtraction function
subtract() {
    echo "Result: $(($1 - $2))"
}

# Multiplication function
multiply() {
    echo "Result: $(($1 * $2))"
}

# Division function
divide() {
    if [ $2 -eq 0 ]; then
        echo "Error: Division by zero is not allowed!"
    else
        echo "Result: $(($1 / $2))"
    fi
}

# User input
echo "Enter first number:"
read num1
echo "Enter second number:"
read num2
echo "Choose operation: add, subtract, multiply, divide"
read operation

case $operation in
    add) add $num1 $num2 ;;
    subtract) subtract $num1 $num2 ;;
    multiply) multiply $num1 $num2 ;;
    divide) divide $num1 $num2 ;;
    *) echo "Invalid operation!" ;;
esac


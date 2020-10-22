#!/bin/bash
echo "welcome to Arithematic Computation and Sorting"
echo
#uc1:taken three user input
read -p "Enter the a input" input1
read -p "Enter the b input" input2
read -p "Enter the c input" input3
echo
#uc2
firstEquationResult=$(( $input1 + $input2 * $input3))
        echo $firstEquationResult
echo
#uc3
 
secondEquationResult=$(( $input1 * $input2 + $input3 ))
        echo $secondEquationResult

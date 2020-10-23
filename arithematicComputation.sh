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
echo
#uc4
thirdEquationResult=$(( $input3 + $input1 / $input2 ))
        echo $thirdEquationResult
echo
#uc5
forthEquationResult=$(( $input1 % $input2 + $input3 ))
        echo $forthEquationResult
#uc6
#declare -p result
result[firstEquationResult]=$firstEquationResult
result[secondEquationResult]=$secondEquationResult
result[thirdEquationResult]=$thirdEquationResult
result[forthEquationResult]=$fourthEquationResult
echo ${result[@]}
echo "-----------------------------------------------"
#uc7
declare -A storeResult
declare -a arrayElements
storeResult=(["1"]=0 ["2"]=0 ["3"]=0 ["4"]=0 )

function getInputs()
{
read -p "Enter First Number " numberOne
read -p "Enter Second Number " numberTwo
read -p "Enter Third Number " numberThree

findResult
}

function findResult()
{
        firstEquationResult=$(( $numberOne + $numberTwo * $numberThree ))
        storeResult[1]=$firstEquationResult

        secondEquationResult=$(( $numberOne * $numberTwo + $numberThree  ))
        storeResult[2]=$secondEquationResult

        thirdEquationResult=$(( $numberThree + $numberOne / $numberTwo ))
        storeResult[3]=$thirdEquationResult

        fourthEquationResult=$(( $numberOne % $numberTwo + $numberThree  ))
        storeResult[4]=$fourthEquationResult
}

function readValuesToArray()
{
        for ((index=0; index<=${#storeResult[@]}; index++ ))
        do
                arrayElements[index]=${storeResult[$index]}
        done
        descendingSort
}

function descendingSort()
{
        temp=0
        for ((i=0; i<${#arrayElements[@]}; i++ ))
        do
                for ((j=i+1; j<${#arrayElements[@]}; j++ ))
                do
                        if [[ ${arrayElements[i]%.*} -lt ${arrayElements[j]%.*} ]]
                        then
                                temp=${arrayElements[i]}
                                arrayElements[i]=${arrayElements[j]}
                                arrayElements[j]=$temp
                        fi
                done
        done
        echo Array In Descending Order..${arrayElements[@]}
}

getInputs
readValuesToArray





























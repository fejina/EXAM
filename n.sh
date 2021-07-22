
arr=(10 8 20 100 12)
n=5  
arr1=(11 81 21 101 13)

echo "Array1 in original order"
echo ${arr[*]}

# Performing Bubble sort  


for ((i = 0; i<n; i++))
do
      
    for((j = 0; j<n-i-1; j++))
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
echo "Array in sorted order :"
echo ${arr[*]}

echo "Array2 in original order"
echo ${arr1[*]}
for ((i = 0; i<n; i++))
do
      
    for((j = 0; j<n-i-1; j++))
    do
      
        if [ ${arr1[j]} -gt ${arr1[$((j+1))]} ]
        then
            # swap
            temp1=${arr1[j]}
            arr1[$j]=${arr1[$((j+1))]}  
            arr1[$((j+1))]=$temp1
        fi
    done
done 
echo "Array2 in sorted order :"
echo ${arr1[*]}
declare -a q1

    j=0
    k=0
    i=0
    while [ $i -le $n ] && [ $j -le $n ]    
    do   
        
        if [ ${arr[i]} -ge ${arr1[j]} ]    
        then
         q1[$k]=${arr1[j]}
         j=`expr $j + 1`
         k=`expr $k + 1`
         else
         q1[$k]=${arr[i]} 
         i=`expr $i + 1`
         k=`expr $k + 1`
       fi     
    done    
    while [ $i -lt $n ]
    do
        q1[$k]=${arr[i]} 
         i=`expr $i + 1`
         k=`expr $k + 1`

     done
     while [ $j -lt $n ]
    do
        q1[$k]=${arr1[j]}
         j=`expr $j + 1`
         k=`expr $k + 1`

     done

      echo q1 :: 
    echo ${q1[*]}


    mid = `expr 2* $n / 2`
    med = ${arr1[mid]}
    echo $med
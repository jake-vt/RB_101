=begin
------------------------------------------------------------------------------------------
### - A method that takes two arrays of numbers and returns the result of merging the arrays.
### - The elements of the first array should become the elements at the even indexes of the returned array
### - while the elements of the second array should become the elements at the odd indexes.
      
    ### - For instance: merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]

### - Assume that both array arguments have the same number of elements.

1) Invite and accept array 1
2) Invite and accept array 2
3) Iterate through both arrays alternating which array value to insert
4) Print the result
------------------------------------------------------------------------------------------
=end

arr1 = [1, 2, 3]
arr2 = [4, 5, 6]
result = []

def Merge_Alternate_Index(arr1, arr2, result)
  loop do 
   result << arr1.shift
   result << arr2.shift
   break if arr1.empty? && arr2.empty?
  end
end

Merge_Alternate_Index(arr1, arr2, result)

print result
print arr1
print arr2

  

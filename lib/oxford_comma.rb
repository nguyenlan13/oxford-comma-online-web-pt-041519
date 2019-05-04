# def oxford_comma(array)
#   if array.length <= 2
#     return array.join(" and ")
#   else
#     array[-1].insert(0,"and ")
#     array.join(", ")
 
    
#   end
# end

def oxford_comma(array)
  if array.length <= 2
    return array.join(" and ")
  end
  split_index = array.length - 2
  first_part = array[0...split_index]
  second_part = array[split_index...array.length]
  
  join_first_part = first_part.join(", ")
  join_second_part = second_part.join(", and ")
  
  join_first_part + ", " + join_second_part
end
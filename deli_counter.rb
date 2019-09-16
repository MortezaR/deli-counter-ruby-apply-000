# Write your code here.

katz_deli = []

def line(arr)
  rtn_str = "The line is currently: "
  if(arr.length > 0)
    arr.each_with_index do |n, i|
      rtn_str += (i+1).to_s + ". " + n + " "
    end
    rtn_str = rtn_str[0...-1]
  else
    rtn_str = "The line is currently empty."
  end
  puts rtn_str
  return rtn_str
end


def take_a_number(arr, name)
  arr << name
  puts "Welcome, #{name}. You are number " + arr.length.to_s + " in line."
  return arr
end

def now_serving(arr)
  if(arr.length > 0)
    puts "Currently serving " + arr[0] + "."
    return arr.shift()
  else
    puts "There is nobody waiting to be served!"
    return []
  end
end
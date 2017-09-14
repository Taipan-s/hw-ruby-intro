# When done, submit this entire file to the autograder.

# Part 1
def sum arr
sum = 0.0
if arr.length>0 then
    arr.each do |e|
        sum+=e
    end
    return sum
end

def max_2_sum arr
    s = 0
    if arr.length == 0
        return s
    end
    if arr.length == 1
        return arr.first
    end
    if arr.length > 1 then
        arr.sort!
        arr.reverse!
        s=arr.slice(0)+arr.slice(1)
    end
    return s
end

def sum_to_n? arr, n
    if arr.length == 0
        return FALSE
    end
    if arr.length == 1
        return arr.first==n
    end
    s=arr.combination(2).find{|x,y| x+y==n}
    unless s
        return FALSE
        else return TRUE
    end
end

# Part 2

def hello(name)
        s="Hello, "+name
        puts s
end

def starts_with_consonant? s
        a=["a","e","i","o","u","A","E","I","O","U"]
        if s.length == 0
            return FALSE
        end
        if a.include?(s[0])
            return FALSE
        end
        else
        return TRUE
end

def binary_multiple_of_4? s
    s.reverse!
    s.each_char do |x|
        if (x != "0")&(x != "1") then
            return FALSE
        end
    end
    if s.length < 3 then
        return FALSE
    end
    a=s.slice(0,2)
    b=s.slice(2,s.length-2)
    a.each_char do |x|
        if (x != "0") then
            return FALSE
        end
    end
    b.each_char do |x|
        if (x != "0") then
            return TRUE
        end
    end
    return FALSE
end

# Part 3

class BookInStock
attr_accessor :isbn
attr_accessor :price

def initialize(num, cost)
    if(num.length==0) then
        raise ArgumentError.new("ArgumentError: Invalid ISBN")
    end
    if(cost<=0) then
        raise ArgumentError.new("ArgumentError: Invalid Price")
    end
    @isbn = num
    @price = cost
end

def price_as_string
    f= @price
    f=f.round(2)
    a=f.to_s
    b=a.reverse
    if b.index(".")==1 then
        a=a+"0"
    end
    return "$"+a
end

end

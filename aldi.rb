flipInt(input);

@input = 123321

def flipInt(n)
  @digit = 0
  @result = 0

  while n > 0
    @digit = n % 10;    
    @result = @result * 10 + @digit;
    n = (n / 10) | 0;
  end
  
  return @input == @result
end

puts flipInt(@input)
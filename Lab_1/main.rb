# Problem (1):
def string_repitition(str, num)
  num >= 1 ? (puts str * num) : (puts 'Cannot repeat with negative value !!')
end
# Problem (2):
def check_start_if(str)
    puts str.downcase.start_with?("if")    
end
# Problem(3):
def char_exchange(str)
    puts String.new(str[-1] + str[1...-1] + str[0])
end
# Problem (4):
def char_front_back(str)
    puts String.new(str[-1] + str[0..-1] + str[-1])
end
# Problem(5):
def test_leap_year(year)
   if year % 4 === 0
        if year % 100 === 0
            if year % 400 === 0
                puts "#{year} is a leap year"
            else
                puts "#{year} is NOT a leap year"
            end
        else
            puts "#{year} is a leap year"
        end
    else
        puts "#{year} is NOT a leap year"
   end
end
# Problem(6):
def rotate_arr(arr)
    print arr.rotate(count=1)
    puts ''
end
# Problem (7):
def compute_sum(arr)
    sum = 0
    i = 0
    while i < arr.length
        if arr[i] === 17
            i += 2
        else
            sum += arr[i]
            i += 1
        end
    end
    puts sum
end

string_repitition('Ra', 5)
string_repitition('Ra', -5)

check_start_if("Ifooo")
check_start_if("Ramez")

char_exchange("Ramez")
char_front_back("Java")

test_leap_year(2012)
test_leap_year(1500)
test_leap_year(1600)
test_leap_year(2020)

rotate_arr([1, 2, 5])
rotate_arr([1, 2, 3])

compute_sum([3, 5, 17, 6])
compute_sum([3, 17, 1, 7])

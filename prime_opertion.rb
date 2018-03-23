require 'prime'
class Prime_opertion

  def start(number)
    ans = 0
    count = 1
    ans_count = 0
    count_check = 0
    checking = 0
    final_ans = 0
    prime_numbers = Prime.take_while {|p| p < number} # all prime numbers in 2 .. to number

    for i in 0..prime_numbers.length - 1

      for j in i..prime_numbers.length - 1

        if checking < number
          checking = checking + prime_numbers[j]  #adding prime numbers

          if Prime.prime? checking   #Added number check if its prime are not

            if checking < number
              ans = checking
              ans_count = count   #number of terms
            end
          end
          count = count + 1
        end
      end
      count = 1
      checking = 0
      if ans_count > count_check   #check which term is high
        count_check = ans_count
        final_ans = ans
      end
    end
    puts "Number of Terms #{count_check}"
    puts "Answer #{final_ans}"
  end

end

prime = Prime_opertion.new
prime.start(1000000)





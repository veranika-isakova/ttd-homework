class Codebreaker
  class Game
    attr_reader :output

    def initialize(output)
      @output = output
    end

    def start(secret_number)
      @secret_number = secret_number

      output.puts "Welcome to Codebreaker"
      output.puts "Enter guess:"
    end

    def guess(input)

      result_number_match = ""
      result_exact_match = ""
      
      @secret_number.split("").each do |number|
        if @secret_number.index(number) == input.index(number)
          result_exact_match << ('+')
        elsif input.include? number
          result_number_match << ('-')
        end
      end

      common_result = result_exact_match + result_number_match

      output.puts(common_result)

      if input.length == 4
        output.puts ""
      else
        output.puts "Try guessing a number with four digits"
      end

    end
  end
end

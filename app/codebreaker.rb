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
      # Make sure to replace next line with the actual implemented marking algorithm,
      # using the @secret_number
      result_number_match = ""
      result_exact_match = ""

      @secret_number.split("").each do |number|
        if input.include? number
          result_number_match << ('-')
        end
        if @secret_number.index(number) == input.index(number)
          result_exact_match << ('+')
        end
      end

      output.puts(result_number_match)
      output.puts(result_exact_match)

      if input.length == 4
        output.puts ""
      else
        output.puts "Try guessing a number with four digits"
      end

    end
  end
end

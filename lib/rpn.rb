rpn_string = ARGV[0]

class RpnSolver 

    def rpn_solver(rpn)
        rpn_array = rpn.split(" ")
        operators = "+-/*"
        stack = []
        result = 0
        rpn_array.each do |token|
            puts stack.to_s    
            if operators.include? token
                operand_1 = stack.pop()
                operand_2 = stack.pop()
                
                result = evaluate_result(token,operand_1,operand_2)
                
                stack.push(result) 
            else 
                stack.push(token)
            end
        end
        result
    end 

    def evaluate_result(token,operand_1,operand_2)
        result = 0
        case token
        when "+"
            result = operand_1.to_i + operand_2.to_i
        when "-"
            result = operand_2.to_i - operand_1.to_i 
        when "/"
            result = operand_2.to_i / operand_1.to_i
        when "*"
            result = operand_1.to_i*operand_2.to_i
        end 

        result
    end 
end

rpn = RpnSolver.new
puts rpn.rpn_solver(rpn_string)
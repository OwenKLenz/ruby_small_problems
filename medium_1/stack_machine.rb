# Input:
  # A string of space delimited commands (words) to be performed on a register
  # Different commands performed different operations on the register and/or the stack

# Output:
  # Whatever gets printed to the screen by argument commands (ie: "PRINT")
  
# Rules:
  # Basically, we are adding/removing values to/from the register or reassigning the register and the stack and occasionally outputting those values to the display.
  # n -     Place a value n in the "register". Do not modify the stack.
  # PUSH -  Push the register value on to the stack. Leave the value in the register.
  # ADD -   Pops a value from the stack and adds it to the register value, storing the result in the register.
  # SUB -   Pops a value from the stack and subtracts it from the register value, storing the result in the register.
  # MULT -  Pops a value from the stack and multiplies it by the register value, storing the result in the register.
  # DIV -   Pops a value from the stack and divides it into the register value, storing the integer result in the register.
  # MOD -   Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
  # POP -   Remove the topmost item from the stack and place in register
  # PRINT - Print the register value

# Algorithm:
#   Init an empty array for our stack
#     - VAR stack is []
  
#   Init a register variable to 0
#     - VAR register is 0
    
#   Split the string up into an array of words to be iterated over
#     - CALL split on the array
    
#   Iterate over the words and perform each appropriate action on the stack/register or output value
#     - CALL each with |command| parameter
    
#   Case statement hands each command within the iterator
#     When... with command parameter
#     - PUSH
#       - CALL push on stack to append register
#     - ADD
#       - CALL pop on stack and += that to register
#     - SUB
#       - CALL pop on stack and -= that from register
#     - MULT
#       - CALL pop on stack and *= register by return value
#     - DIV
#       - CALL pop on stack and /= register by return value
#     - MOD
#       - CALL pop on stack and %= register with return value 
#     - POP
#       - CALL pop on stack reassign register to return value
#     - PRINT
#       - Output register value
#     - n
#       - else place command (number string) converted to integer in register
      
def minilang(commands)
  stack = []
  register = 0
  command_arr = commands.split

  command_arr.each do |command|
    case command
    when "PUSH"
      stack.push(register)
    when "ADD"
      register += stack.pop
    when "SUB"
      register -= stack.pop
    when "MULT"
      register *= stack.pop
    when "DIV"
      if stack.last == 0
        puts "Divide by zero error. Can't perform \"DIV\" command."
      else
        register /= stack.pop
      end
    when "MOD"
      if stack.last == 0
        puts "Divide by zero error. Can't perform \"MOD\" command."
      else
        register %= stack.pop
      end
    when "POP"
      register = stack.pop
    when "PRINT"
      puts register
    else
      register = command.to_i
    end
  end
end

# #Examples:
# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8
# minilang('5 PUSH POP PRINT')
# # 5
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')

# minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV PRINT')
# (nothing printed; no PRINT commands)



# Further Exploration:
# (3 + (4 * 5) - 7) / (5 % 3)

# # Sample Stack:
# 20
# 7
# 2

# 5 % 3
# push

# 7
# push

# multiply 4 by 5
# push

# register = 3

# ADD (20)

# SUB (7)

# DIV(2)

# PRINT

# 3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV

# With Error handling
def minilang(tokens)
  stack = []
  register = 0

  tokens.split.each do |token|
    case token
    when "PUSH" then stack.push(register)
    when "PRINT" then puts register
    when token.to_i.to_s then register = token.to_i # Integer token
    else
      return "Error: Can't pop from an empty stack!" if stack.size < 1

      case token
      when "ADD" then register += stack.pop

      when "SUB" then register -= stack.pop
      when "MULT" then register *= stack.pop
      when "DIV" then 
        if stack.last == 0
          return "Divide by zero error. Can't perform \"DIV\" token."
        else
          register /= stack.pop
        end
      when "MOD" then 
        if stack.last == 0
          return "Divide by zero error. Can't perform \"MOD\" token."
        else
          register %= stack.pop
        end
      when "POP" then register = stack.pop
      else
        return "Error: Invalid token entered"
      end
    end
  end
  nil
end

#Examples:
p minilang('PRINT')
# 0

p minilang('5 PUSH 3 MULT PRINT')
# 15

p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8
p minilang('5 PUSH POP PRINT')
# 5

p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

p minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

p minilang('-3 PUSH 5 SUB PRINT')
# 8

p minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# Further Exploration
p minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV PRINT')

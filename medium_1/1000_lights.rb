# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Input an integer
# output: an Array

# Rules:
# Over n cycles of light switching
# iterate from 1..n |i|
# on each iteration chnage the position of every ith light


# algorithm:
# Initialize an array array of booleans
# initialize a counter to 1
# iterate over the array
# switch every boolean
# then every 2nd boolean
# then every 3rd boolean
# etc.

# At the end iterate over the array with index
# append the index to a return array if boolean is true
def lights(int)
  lights = Array.new(int, false)
  counter = 1
  int.times do
    lights.each_with_index do |light, index|

      if (index + 1) % counter == 0
        lights[index] = !light
      end
    end
    counter += 1
  end
  
  describe_lights_state(lights)
  
  # return_array = []

  # lights.each_with_index do |light, index|
  #   if light
  #     return_array << index + 1
  #   end
  # end
  # return_array
end

def describe_lights_state(lights)
  on_lights = []
  off_lights = []

  lights.each_with_index do |light, index|
    if light
      on_lights << index + 1
    else
      off_lights << index + 1
    end
  end
  puts "Lights #{on_lights[0..-2].join(', ')} and #{on_lights[-1]} are on and "\
       "lights #{off_lights[0..-2].join(', ')} and #{off_lights[-1]} are off."
end


lights(5)
lights(10)
lights(1000)

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].
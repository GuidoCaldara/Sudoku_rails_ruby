require 'pry-byebug'

def slice_the_array(array)
  if array.size < 4
    return array[0..2]
  elsif  array.size >= 4 && array.size < 7
    return array[3..5]
  elsif  array.size >= 7
    return array[6..8]
  end
end

def check_array(min, max)
  range = (min...max)
   if ((number == each_array[range[0]) || (number == each_array[range[1]]) || (number == each_array[range[2]]))
    return false
  end
end


def check_first_three(finalArray, array)
  my_array = slice_the_array(array)

  my_array.each do |each_array|
    array.each_with_index do |number, number_index|
      if(number_index >= 0 && number_index < 3)
        check_array(0,3)
      finalArray.each do |array|
        return false if array[number_index] == number
        end
      end
      if(number_index >= 3 && number_index < 6)
        if ((number == each_array[3]) || (number == each_array[4]) || (number == each_array[5]))
          return false
        end
        finalArray.each do |array|
          return false if array[number_index] == number
          end

        end

        if(number_index >= 6 && number_index < 9)
          if ((number == each_array[6]) || (number == each_array[7]) || (number == each_array[8]))
            return false
          end
          finalArray.each do |array|
            return false if array[number_index] == number
            end

          end

        end
      end

      return true
    end


    def check_second_three(finalArray, array)

      array.each_with_index do |number, number_index|
        finalArray.each do |array|
          if number == array[number_index]
            return false
          end
        end
      end
      true
    end



    def addALine(finalArray)
     sum = 0
     count = 0
     condition = true
     while(condition == true)
      array = Array.new
      array = ["1","2","3","4","5","6","7","8","9"].shuffle
      if (finalArray.size == 3) || (finalArray.size == 6)
        if !check_second_three(finalArray, array)
          count += 1
          redo
        else
          return array
          condition == false
        end
      else
        if !check_first_three(finalArray, array)
          count += 1
          redo
        else
          return array
          condition == false
        end
      end
    end
  end






  def generateGrid()
    finalArray = []
    finalArray.push(["1","2","3","4","5","6","7","8","9"].shuffle)
  #p "first line ok"
  # p finalArray.size
  finalArray.push(addALine(finalArray))
  #p "second line ok"
    # p finalArray.size

    finalArray.push(addALine(finalArray))
  #p "third line ok"
  # p finalArray.size

  finalArray.push(addALine(finalArray))
  #p "4 line ok"
  # p finalArray.size

  #p "5 line ok"
  finalArray.push(addALine(finalArray))
  # p "6 line ok"
  finalArray.push(addALine(finalArray))
  # p "7 line ok"
  finalArray.push(addALine(finalArray))
  # p "8 line ok"
  finalArray.push(addALine(finalArray))
  finalArray.push(addALine(finalArray))

end

array = generateGrid
   final = []
     array.each{|el|  final << el.join}
p [final.join]

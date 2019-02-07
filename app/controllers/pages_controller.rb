class PagesController < ApplicationController
  def home
    @numbers = [["7", "3", "2", "5", "9", "8", "6", "1", "4"], ["9", "6", "1", "3", "4", "7", "5", "8", "2"], ["4", "8", "5", "6", "2", "1", "7", "3", "9"], ["8", "4", "9", "7", "3", "5", "1", "2", "6"], ["6", "2", "3", "1", "8", "4", "9", "5", "7"], ["5", "1", "7", "9", "6", "2", "8", "4", "3"], ["3", "7", "8", "2", "1", "9", "4", "6", "5"], ["1", "9", "6", "4", "5", "3", "2", "7", "8"], ["2", "5", "4", "8", "7", "6", "3", "9", "1"]]

  end

  def check_first_three(finalArray, array)
    conut = 0
    if finalArray.size < 4
      my_array = finalArray[0..2]
    elsif  finalArray.size >= 4 && finalArray.size < 7
      my_array = finalArray[3..5]
    elsif  finalArray.size >= 7
      my_array = finalArray[6..8]
    end


    my_array.each do |each_array|
      array.each_with_index do |number, number_index|
        if(number_index >= 0 && number_index < 3)
         if ((number == each_array[0]) || (number == each_array[1]) || (number == each_array[2]))
          return false
        end
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
    final =  finalArray.each{|el| puts el.join}
    return final
  end



















end

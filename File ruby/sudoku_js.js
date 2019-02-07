function shuffleArray() {
    let array = ["1","2","3","4","5","6","7","8","9"]
    for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]];
    }
    return array
}


function checkFirstThree(finalArray, array){
  let myArray = []
  let result = true
  if (finalArray.length < 4){
    myArray = finalArray.splice(0,3)
  } else if (finalArray.length >= 4 && finalArray.length < 7){
    myArray = finalArray.splice(3,6)
  } else if (finalArray.length >= 7){
    myArray = finalArray.splice(6,9)
  }
  myArray.forEach(function(each_array){
    array.forEach(function(number, number_index){
      if (number_index >= 0 && number_index < 3) {
        if ((number == each_array[0]) || (number == each_array[1]) || (number == each_array[2])){
          return false
          //console.log("1")
        }
        finalArray.forEach(function(array){
          if (array[number_index] == number) {
          return false
          //console.log("2")

          }
        })
      }
      if (number_index >= 3 && number_index < 6) {
        if ((number == each_array[3]) || (number == each_array[4]) || (number == each_array[5])){
          //console.log("3")
          return false
        }
        finalArray.forEach(function(array){
          if (array[number_index] == number) {
          //console.log("4")
          return false
          }

        })
      }
      if (number_index >= 6 && number_index < 9) {
        if ((number == each_array[6]) || (number == each_array[7]) || (number == each_array[8])){
          //console.log("5")
          return false
        }
        finalArray.forEach(function(array){
          if (array[number_index] == number) {
          //console.log("6")
          return false
          }
        })
      }
    })
  })

  return true
}

function checkSecondThree(finalArray, array){
  for(let i = 0; i < array.length; i++){
    finalArray.forEach(function(element){
      if (array[i] == element[i]){
        return false
      }
    })
  }
  return true
}


  function addLine(finalArray){
  let condition = true
  let result = []
  while ( condition == true ){
    let array = shuffleArray()
    if ((finalArray.length == 3) || (finalArray.length == 6)){
      if (checkSecondThree(finalArray, array) == false){
        addLine()
      } else {
        result = array
        break
      }
    } else {
      if (checkFirstThree(finalArray, array) == false){
        addLine()
      } else {
        result =  array
        break
      }
    }
  }
 return result
 }

function generateGrid(){

}

generateGrid()

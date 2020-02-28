const reverseArray = (arr) => {
    let rev_arr = [];
    let index = 0;
    for (let i = arr.length-1; i>=0; i--) {
      rev_arr[index] = arr[i];
      index++;
    }
    return rev_arr;
  };

  const greetAliens = (arr) => {
    for (let i of arr) {
      console.log("Oh powerful "+ i +", we humans offer our unconditional surrender!");
    }
  };

  const convertToBaby = (arr) => {
    let add_arr = [];
    for (let i=0; i<arr.length; i++) {
      add_arr[i] = 'baby ' + arr[i];
    };
    return add_arr;
  };

  
  const numbers = [5, 3, 9, 30];

  const smallestPowerOfTwo = arr => {
        let results = [];
        // The 'outer' for loop - loops through each element in the array
        for (let i = 0; i < arr.length; i++) {
              const number = arr[i];
  
              // The 'inner' while loop - searches for smallest power of 2 greater than the given number
              let j = 1;
              while (j < number) {
                    j = j * 2;
              }
              results.push(j);
        }
        return results
  }


  const veggies = ['broccoli', 'spinach', 'cauliflower', 'broccoflower'];

  const politelyDecline = (veg) => {
        console.log('No ' + veg + ' please. I will have pizza with extra cheese.');
  }
  
  // Checkpoint 1 solutions:
  const declineEverything = arr => {
    arr.forEach(politelyDecline)
  }
  
  /*
  // As a function declaration:
  function declineEverything(arr) {
        arr.forEach(politelyDecline)
  }
  */
  
  
  // Checkpoint 2 solutions:
  // Using an anonymous function and string interpolation:
  const acceptEverything = arr => {
    arr.forEach(e => {
      console.log(`Ok, I guess I will eat some ${e}.`)
    })
  }
  
  /*
  // Using a named function and string concatenation:
  const grudginglyAccept = veg => {
        console.log('Ok, I guess I will eat some ' + veg + '.');
  }
  const acceptEverything = arr => {
        arr.forEach(grudginglyAccept)
  }
  
  // Using a loop:
  const acceptEverything = arr => {
   for(let i = 0; i<arr.length; i++){
      console.log(`Ok, I guess I will eat some ${arr[i]}.`)
   }
  }
  */

 const numbers = [2, 7, 9, 171, 52, 33, 14]

 const toSquare = num => num * num
 
 // Write your code here:
 
 
 
 const squareNums = (arr) => {
   let pow_arr = arr.map(toSquare);
   return pow_arr;
 };
 
 console.log(squareNums(numbers));

 const shoutGreetings = (arr) => {
    let newarr = arr.map(string =>  string.charAt(0).toUpperCase() + string.slice(1) + "!");
    return newarr;
  };

  const sortYears = (years) => {
    let sorted_year = years.sort().reverse();
    return sorted_year;
  };

  const justCoolStuff = (arr1, arr2) => {
    let inter_arr = [];
    for (let word of arr1) {
      if (arr2.includes(word)) {
        inter_arr.push(word);
      }
    }
    return inter_arr;
  }
  const justCoolStuff = (firstArray, secondArray) => firstArray.filter(item => secondArray.includes(item))

  /*
  // As a function declaration AND using named function w/ a loop:
  function justCoolStuff(firstArray, secondArray) {
        function isInSecondArray(item){
              for(let i = 0; i<secondArray.length; i++){
                    if (secondArray[i] === item){
                          return true
                    }
              }
              return false 
        }
        return firstArray.filter(isInSecondArray)
  }
  */
  
  const coolStuff = ['gameboys', 'skateboards', 'backwards hats', 'fruit-by-the-foot', 'pogs', 'my room', 'temporary tattoos'];
  
  const myStuff = [ 'rules', 'fruit-by-the-foot', 'wedgies', 'sweaters', 'skateboards', 'family-night', 'my room', 'braces', 'the information superhighway']; 
  
  console.log(justCoolStuff(myStuff, coolStuff))  



  const isTheDinnerVegan = food => {
    const isVegan = (food) => {
      if(food.source === 'plant') {
          return true;
      }
      return false; 
    }
    return food.every(isVegan);
  }
  
  
  
  // const meal = [{name: 'arugula', source: 'plant'}, {name: 'tomatoes', source: 'plant'}, {name: 'lemon', source:'plant'}, {name: 'olive oil', source: 'plant'}];
  
  // console.log(meal[0].source);

  // Feel free to comment out the code below to test your function
  
  const dinner = [{name: 'hamburger', source: 'meat'}, {name: 'cheese', source: 'dairy'}, {name: 'ketchup', source:'plant'}, {name: 'bun', source: 'plant'}, {name: 'dessert twinkies', source:'unknown'}];
  
  console.log(isTheDinnerVegan(dinner))
  // Should print false


const speciesArray = [ {speciesName:'shark', numTeeth:50}, {speciesName:'dog', numTeeth:42}, {speciesName:'alligator', numTeeth:80}, {speciesName:'human', numTeeth:32}];

const sortSpeciesByTeeth = arr => arr.sort((speciesObj1, speciesObj2) => speciesObj1.numTeeth > speciesObj2.numTeeth)

/*
// As a function declaration AND using a named function:
function sortSpeciesByTeeth(arr) {
      const compareTeeth = (speciesObj1, speciesObj2) => speciesObj1.numTeeth > speciesObj2.numTeeth
      return arr.sort(compareTeeth)
}
*/

console.log(sortSpeciesByTeeth(speciesArray))


// Write your code here:
const findMyKeys = (arr) => {
  return arr.findIndex(element => element === "keys");
}

// Feel free to comment out the code below to test your function

const randomStuff = ['credit card', 'screwdriver', 'receipt', 'gum', 'keys', 'used gum', 'plastic spoon'];

console.log(findMyKeys(randomStuff))
// Should print 4


const dogFactory = (name, breed, weight) => {
  return {
    _name: name,
    _breed: breed,
    _weight: weight,
    get name() {
      return this._name;
    },
    set name(name) {
      this._name = name;
    },
    get breed() {
      return this._breed; 
    },
    set breed(breed) {
      this._breed = breed;
    },
    get weight() {
      return this._weight;
    },
    set weight(weight) {
      this._weight = weight;
    },
    bark() {
      return 'ruff! ruff!';
    },
    eatTooManyTreats() {
      this._weight += 1;
    }
  }
}

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


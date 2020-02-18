function canIVote(number) {
    if (number >= 18) {
      return true
    } else {
      return false
    }
}


function agreeOrDisagree(word1, word2) {
    if (word1 === word2) {
      return 'You agree!'
    } else {
      return 'You disagree!'
    }
}


const lifePhase = age => {
    if (age < 0 || age > 140) {
        return 'This is not a valid age'
    } else if (age < 4) {
        return 'baby'
    } else if (age < 13) {
        return 'child'
    } else if (age < 20) {
        return 'teen'
    } else if (age < 65) {
        return 'adult'
    } else {
        return 'senior citizen'
    }
}


function finalGrade(grade1, grade2, grade3) {
    let grades = [grade1, grade2, grade3];
    let count = 0;
    for (let grade of grades) {
      if (grade >= 0 && grade <= 100) {
        count += 1;
      }
    }
    if (count == 3) {
      let avg = (grade1+grade2+grade3)/3;
      if (avg >= 0 && avg <= 59) {
        return 'F';
      } else if (avg >= 60 && avg <= 69) {
        return 'D';
      } else if (avg >= 70 && avg <= 79) {
        return 'C';
      } else if (avg >= 80 && avg <= 89) {
        return 'B';
      } else if (avg >= 90 && avg <= 100) {
        return 'A';
      }     
      
    } else {
      return 'You have entered an invalid grade.';
    }
}


function reportingForDuty(rank, lastName) {
    return `${rank} ${lastName} reporting for duty!`
}


const rollTheDice = () => {
    // Math.random() gives us a random number from 0 up to, but not including, 1
    // We multiplied that by 6 to get a number between 0 and up to, but not including, 6
    // But since we actually wanted numbers from 1 to 6, inclusive, we added 1
      let die1 = Math.floor(Math.random()*6) + 1
      let die2 = Math.floor(Math.random()*6) + 1
      return die1 + die2
}


  
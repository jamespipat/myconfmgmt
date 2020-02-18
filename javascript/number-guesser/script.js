let humanScore = 0;
let computerScore = 0;
let currentRoundNumber = 1;

// Write your code below:

const generateTarget = () => { 
    return Math.floor(Math.random()*10);
}

const generateTarget = (user, com, secret) => {
    if (user == com) {
       return true;
    } else if (Math.abs(user-secret) <  Math.abs(com-secret)) {
        return true;
    } else {
      return false;
    }
}

const updateScore = (winner) => {
    switch (winner) {
        case 'human':
            humanScore +=1;
            break;
        case 'computer':
            computerScore;
            break;
        default:
            break;
    }
}


const advanceRound = () => currentRoundNumber += 1;
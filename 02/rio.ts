interface UpperAndLowerBoundSize {
  lower: number;
  upper: number;
};

const getNearestMultiple = (length: number, multiple: number): UpperAndLowerBoundSize => {
  // Get the remainder
  const remainder = length % multiple

  // Return upper and lower bounds
  return {
    lower: length - remainder,
    upper: length + (multiple - remainder),
  }
}

// TEST #1
const squareLength = 300;
console.log(getNearestMultiple(squareLength, 8))

// RESULT #1
// {
//   "lower": 296,
//   "upper": 304
// }

// --------------------------------------------

// TEST 2
const squareLength2 = 300;
console.log(getNearestMultiple(squareLength2, 7))

// RESULT #2
// {
//   "lower": 294,
//   "upper": 301
// } 

// TEST 3
const squareLength3 = 1500;
console.log(getNearestMultiple(squareLength3, 11))

// RESULT #3
// {
//   "lower": 1496,
//   "upper": 1507
// } 

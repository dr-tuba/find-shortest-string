function findShortestString(arr) {
  // let smallest = arr[0]
  // for (const word of arr) {
  //   if (word.length < smallest.length) {
  //     smallest = word
  //   }
  // }
  // return smallest
  
  return arr.reduce((accum, currentValue) => {
    console.log(accum, currentValue);
    return currentValue.length < accum.length 
    ? currentValue 
    : accum;
   }, arr[0])
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 'a'");
  console.log("=>", findShortestString(['aaa', 'a', 'bb', 'ccc']));

  console.log("");

  console.log("Expecting: 'hi'");
  console.log("=>", findShortestString(['cat', 'hi', 'dog', 'an']));

  console.log("");

  console.log("Expecting: 'lily'");
  console.log("=>", findShortestString(['flower', 'juniper', 'lily', 'dadelion']));

  // BENCHMARK HERE
}

module.exports = findShortestString;

// Please add your pseudocode to this file
// And a written explanation of your solution

// function 1

function add (a, b) {
  return a + b
}

console.log(add(18, 40))

// function 2 - function expression

const subtract = function (a, b) {
  return a - b
}

console.log(subtract(30, 49))

// function 3 - arrow function
// arrow function -> ES6
// implicit return

const multiply = (a, b) => add(a, b) * subtract(a, b)

console.log(multiply(18, 7))

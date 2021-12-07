// const name = "Dean"
let hungry = true
let thirsty = true

// && -- AND --> keduanya harus true
// || -- OR  --> salah satunya harus true

// if(hungry && thirsty) {
//   // `` -> backtick -> template literals
//   // ${variable} -> ${} -> variable
//   console.log(`${name} is hungry and thirsty`)
// } else if(!hungry && thirsty){
//   console.log(`${name} is thirsty`)
// } else {
//   console.log(`${name} is full`)
// }

// switch-case

let personName = ''

if(!personName) personName = 'Ika'

switch(hungry) {
  case true:
    console.log(`${personName} is hungry`)
    break;
  case false:
    console.log(`${personName} is not hungry`)
  default:
    console.log("Invalid value")
}

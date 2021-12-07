// primitif

// var -> default declaration

// 2015 -> ES6
// let   -> sama seperti var, hanya saja dia bersifat scoped dan tidak dapat di-declare ulang
// const -> sama seperti let, hanya saja dia tidak dapat di-reassign lagi

// declare + assign variable
let angka = 12           // number
let kata = "Budi"        // string
let benar = true         // boolean

// [re-]assignment: assign nilai baru ke variable
angka = 13

// declaration: membuat variable baru
let tidakAda // undefined

// console.log(angka)
// console.log(kata)
// console.log(benar)
// console.log(typeof undefined)

// special primitive
// console.log(typeof null)

// structural
let objek = {} // object kosong -- kurung kumis
let urutan = [] // array kosong -- kurung kotak


// // math operation

// let angkaBaru = 10

// console.log(angkaBaru)

// // + - * / %

// // angkaBaru = angkaBaru + 10
// angkaBaru += 10

// console.log(angkaBaru)

// // % - modulus
// // mencari nilai hasil sisa dari pembagian
// // 20 - 7 = 13
// // 13 - 7 = 6 // ini sisa baginya
// // 6 - 7 = -1

// angkaBaru = angkaBaru % 7

// console.log(angkaBaru)

// // urutan operasi matematika
// // () -> tanda kurung
// // * / % -> kali bagi modulus
// // + - -> tambah kurang

// angkaBaru = (10 + 5) * 4 - 8 % 4 * 9

// console.log(angkaBaru)

// angkaBaru += 'a'

// console.log(angkaBaru)

// angkaBaru += 20

// console.log(angkaBaru)

// angkaBaru -= 20

// console.log(angkaBaru) // NaN -> Not-a-Number

// operasi perbandingan

// // === -> nilai DAN tipe data harus sama
// console.log(5 === 5) // true
// console.log('5' === 5) // false

// // == -> HANYA nilai yang harus sama
// console.log(5 == 5) // true
// console.log('5' == 5) // true

// // != (atau tanda seru, sama dengan) -> HANYA nilai yang tidak boleh sama
// console.log('58' != 56) // true
// console.log('56' != 56) // false

// // !== (tanda seru, sama dengan sama dengan) -> nilai DAN tipe data tidak boleh sama
// console.log('56' !== 56) // true
// console.log(56 !== 56) // false

// > -> lebih dari
console.log('a10' > 8) // false
console.log(5 > 8) // false

// < -> kurang dari
console.log(10 < 8) // false
console.log(5 < 8) // true

// <= -> kurang dari atau sama dengan
console.log(10 <= 8) // false
console.log(8 <= 8) // true

// >= -> lebih dari atau sama dengan
console.log(10 >= 8) // true
console.log(8 >= 8) // true
console.log(5 >= 8) // false

const laptop = {
  processor: 'Intel Pentium 4',
  RAM: 8,
  display: 'fullHD',
  storageType: 'SSD',
  storageSize: 1024,
  powerState: true,
}

// console.log(laptop)

// let key = 'display'

// console.log(laptop[key])
// console.log(laptop['display'])
// console.log(laptop.display)

laptop.tampilan = '2k'

console.log(laptop)

delete laptop.display

console.log(laptop)


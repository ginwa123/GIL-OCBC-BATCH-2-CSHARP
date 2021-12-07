// men-define array

const participants = [ 'Ika', 'David', 'Widya', 'Oki' ]

// mengakses array

participants.forEach((participant, index) => {
  participants[index] = `${participant} ${index}`
})

console.log(participants)

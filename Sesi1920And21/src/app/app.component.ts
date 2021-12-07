import { Component } from '@angular/core';
import { Country } from './Models/country.model';
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent {
  title = 'myAngularSesi19'
  ginwa = "ginwa is my name"


  messageFromChild = ""
  countries: Country[] = [
    { name: "Indonesia", landMass: 60, populations:20 },
    { name: "United States Of America", landMass: 70, populations: 20 },
    { name: "Republic Of China", landMass: 80, populations: 100},
    { name: "Rusia", landMass: 100, populations: 10 }
  ]

  showMessage(e: string) {
    console.log(e)
    this.messageFromChild = e
  }

  countriesByMass() {
    const sortedArray: Country[] =  this.countries.sort((a,b)=> {
      return b.landMass - a.landMass
    })
    return sortedArray
  }

  countriesByPopulations() {
    const sortedArray = this.countries.sort((a,b) => {
      return b.populations - a.populations
    })
    return sortedArray
  }

}

import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Sesi22';

  myBirthday = new Date("1998-10-01")

  heroes = [
    {id: 1, name: "Gilang"},
    {id: 2, name: "yuki"},
    {id: 3, name: "maeda"}
  ]
}

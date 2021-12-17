import { Component, OnInit, ViewEncapsulation } from '@angular/core';

@Component({
  selector: 'app-noencapsulaion',
  templateUrl: './noencapsulaion.component.html',
  styleUrls: ['./noencapsulaion.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class NoencapsulaionComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

}

import { Component, OnInit, ViewEncapsulation } from '@angular/core';

@Component({
  selector: 'app-shadowdomencapsulation',
  templateUrl: './shadowdomencapsulation.component.html',
  styleUrls: ['./shadowdomencapsulation.component.css'],
  encapsulation: ViewEncapsulation.ShadowDom
})
export class ShadowdomencapsulationComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

}

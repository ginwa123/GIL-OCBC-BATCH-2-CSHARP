import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-toolbar',
  templateUrl: './toolbar.component.html',
  styleUrls: ['./toolbar.component.css']
})
export class ToolbarComponent implements OnInit {
  @Input() messageFromParent = ""

  @Output() clickHandler: EventEmitter<string> = new EventEmitter()

  constructor() { }

  ngOnInit(): void {
  }

  onClickListener() {
    console.log("clicked")
    this.clickHandler.emit("from your child")
  }

}

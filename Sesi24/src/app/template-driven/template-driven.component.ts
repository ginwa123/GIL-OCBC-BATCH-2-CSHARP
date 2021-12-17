import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Task } from '../task';

@Component({
  selector: 'app-template-driven',
  templateUrl: './template-driven.component.html',
  styleUrls: ['./template-driven.component.css']
})
export class TemplateDrivenComponent implements OnInit {
  tasks: Task[] = [];
  categories = ["School", "Work", "Hobby"]

  constructor() { }

  ngOnInit(): void {
  }

  onSubmit(form : NgForm) {
    const {taskName, category } = form.value
    console.log(form.value);
    this.tasks = [...this.tasks, new Task(taskName, false, category)]
    console.log(this.tasks)
    form.reset()
    
  }

}

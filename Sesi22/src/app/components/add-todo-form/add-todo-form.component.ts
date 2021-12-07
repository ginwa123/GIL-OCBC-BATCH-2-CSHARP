import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { Todo } from 'src/app/models/Todo';

@Component({
  selector: 'app-add-todo-form',
  templateUrl: './add-todo-form.component.html',
  styleUrls: ['./add-todo-form.component.css']
})
export class AddTodoFormComponent implements OnInit {
  @Output() addTodoEvent = new EventEmitter<Todo>()

  inputTodo: string = ""

  constructor() { }

  ngOnInit(): void {
  }

  addTodo() {
    const todo: Todo = {
      content: this.inputTodo,
      is_completed: false
    }

    this.addTodoEvent.emit(todo)
    this.inputTodo = ""
  }

}

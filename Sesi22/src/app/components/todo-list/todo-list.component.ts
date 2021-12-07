import { Component, OnInit } from '@angular/core';
import { Todo } from 'src/app/models/Todo';

@Component({
  selector: 'app-todo-list',
  templateUrl: './todo-list.component.html',
  styleUrls: ['./todo-list.component.css']
})
export class TodoListComponent implements OnInit {

  todos: Todo[]=[]
  constructor() { }

  ngOnInit(): void {
    this.todos = [
      {
        content: "First todo",
        is_completed: true
      },
      {
        content: "Second todo",
        is_completed: false
      }
    ]
  }

  toogleDone(id: number) {
    this.todos.map((v, i) => {
      if (i == id) v.is_completed = !v.is_completed
      console.log(v)
      return v
    })
  }

  deleteTodo(id: number) {
    this.todos = this.todos.filter((v, i) => i !== id)
  }

  addTodo(todo: Todo) {
    this.todos.push(todo)
  }

}

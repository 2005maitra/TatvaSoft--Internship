import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { RouterOutlet } from '@angular/router';
import { Menu1Service } from './services/menu1.service';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, FormsModule, CommonModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'ldrp';
  name = ''
  isNameVisible = true;
  ldrpStudents = ['Dhruvil', 'Jinit', 'Yash']

  constructor(private menu1Service: Menu1Service) { }

  onClick(){
    console.log("in component")
    this.menu1Service.onSubmit(this.name)
  }
}

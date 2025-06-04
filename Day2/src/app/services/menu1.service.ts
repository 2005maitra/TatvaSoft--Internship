import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class Menu1Service {

  constructor() { }

  onSubmit(name: string) {
    console.log("in service")
    console.log(name);
  }
}

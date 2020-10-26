import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Empleado } from '../Model/Empleado';

@Injectable({
  providedIn: 'root'
})
export class ListarEmpleadoService {
  constructor(private http: HttpClient) { }
  url = 'https://localhost:44379/api/Empleados';

  getEmpleados() {
    return this.http.get<Empleado[]>(this.url);
  }
}

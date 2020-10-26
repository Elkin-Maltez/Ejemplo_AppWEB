import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ListarEmpleadoService } from 'src/app/Services/listar-empleado.service';

@Component({
  selector: 'app-listar-empleado',
  templateUrl: './listar-empleado.Component.html',
  styleUrls: ['./listar-empleado.component.css']
})
export class ListarEmpleadoComponent implements OnInit {
  constructor(private service: ListarEmpleadoService, router: Router) { }
  empleados: Empleado[];
  ngOnInit() {
    this.service.getEmpleados()
      .subscribe(Data => this.empleados = Data);
  }
}

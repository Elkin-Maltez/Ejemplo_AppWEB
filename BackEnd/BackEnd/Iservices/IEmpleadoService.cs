﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BackEnd.Models;

namespace BackEnd.Iservices
{
    public interface IEmpleadoService
    {
        Empleado Add(Empleado oEmpleado);
        List<Empleado> Gets();
        Empleado Get(int EmpleadoId);
        string Delete(int EmpleadoId);
        Empleado Update(Empleado oEmpleado);
    }
}

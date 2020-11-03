//
//  ViewController.swift
//  practicaTableView
//
//  Created by Alumno on 11/3/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

//Implementar protocolos de DataSource y Delegate
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var alumnos : [Alumno] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 71
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! CeldaAlumnoController
        celda.lblNombre.text = alumnos[indexPath.row].nombre
        celda.lblMatricula.text = alumnos[indexPath.row].matricula
        celda.lblCarrera.text = alumnos[indexPath.row].carrera
        
        return celda
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        alumnos.append(Alumno(nombre: "Jojose Gonzales", matricula: "9872", carrera: "Lic. Administracion"))
        alumnos.append(Alumno(nombre: "Ana Grijalba", matricula: "9632", carrera: "Ing. Industrial"))
        alumnos.append(Alumno(nombre: "Mario Mario", matricula: "6969", carrera: "Lic. Gastronomia"))
        alumnos.append(Alumno(nombre: "Luigi Mario", matricula: "0420", carrera: "Ing. Gastronomia"))
    }


}


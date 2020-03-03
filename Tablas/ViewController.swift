//
//  ViewController.swift
//  Tablas
//
//  Created by R.Fuentes on 2/20/19.
//  Copyright © 2019 R.Fuentes. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var contenidoCelda = ["pdf1","pdf2","pdf3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Se asigna el responsable del protocolo, es el mismo ViewController
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCelda.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row) //Muestra en que fila esta
        
        let celda = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        celda.textLabel?.text = contenidoCelda[indexPath.row]
        
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("Estoy pulsando la fila \(indexPath.row)")
        let idPdfSeleccionado = indexPath.row
        self.performSegue(withIdentifier: "pantallaDosSegue", sender: idPdfSeleccionado)
      
    }


   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       //   let idPdfSeleccionadoRecibido = sender as! NSIndexPath
        //Después crear otra variable para obtener el numero del row:
       // let idx = idPdfSeleccionadoRecibido.row
    
            if segue.identifier == "pantallaDosSegue" {
                let idPdfSeleccionadoRecibido = sender as! Int
                //let idx = idPdfSeleccionadoRecibido.row
                let objPantalla2:ViewController2 = segue.destination as! ViewController2
                objPantalla2.nombrePdfRecibido = contenidoCelda[idPdfSeleccionadoRecibido]
            }
        
        
    }
       
}


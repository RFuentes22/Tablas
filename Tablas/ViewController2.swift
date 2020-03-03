//
//  ViewController2.swift
//  Tablas
//
//  Created by R.Fuentes on 2/21/19.
//  Copyright © 2019 R.Fuentes. All rights reserved.
//

import UIKit
import WebKit

class ViewController2: UIViewController {

    
    @IBOutlet var vistaWeb: WKWebView!
    
    var nombrePdfRecibido:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("Se activo la func viewDidLoad de pantalla 2")
        mostrarPdf()
    
    }
    
    func mostrarPdf(){
        
    //1 Direccion del archivo pdf
        let direccionPdf = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePdfRecibido!, ofType: "pdf", inDirectory: "PDF")!)
            
            
        
    //2 Transformar pdf a data
        
        let datosPdf = try? Data(contentsOf: direccionPdf)
    
    //3 Mostrar datos en webView
        
        
        vistaWeb.load(datosPdf!, mimeType: "application/pdf", characterEncodingName: "utf-8", baseURL: direccionPdf)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

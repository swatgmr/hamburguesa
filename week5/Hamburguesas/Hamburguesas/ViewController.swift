//
//  ViewController.swift
//  Hamburguesas
//
//  Created by guillermo martinez rodriguez on 06/12/15.
//  Copyright © 2015 guillermo martinez rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var pais: UILabel!
    @IBOutlet weak var hamburguesa: UILabel!
    @IBOutlet weak var precio: UILabel!


    
    // Instancia de la clase ColeccionDePaises.
    let paises = ColeccionDePaises()
    
    // Instancia de la clase ColeccionDeHamburguesas.
    let hamburguesas = ColeccionDeHamburguesas()
    
    // Instancia de la clase ColeccionDePrecios.
    let precios = ColeccionDePrecios()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func Dame() {
        pais.text = paises.obtenPais()
        hamburguesa.text = hamburguesas.obtenHamburguesa()
        precio.text = String(precios.obtenPrecio())
    }


}


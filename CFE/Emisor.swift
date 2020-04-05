//
//  Emisor.swift
//  CFE
//
//  Created by Daniel Bonini on 6/6/16.
//  Copyright © 2016 Daniel Bonini. All rights reserved.
//

import Foundation

open class Emisor: NSObject {
    open var ruc: Int = 0
    open var denominacion: String = ""
    open var nombreComercial: String = ""
    open var giro: String = ""
    open var telefono: String = ""
    open var correoElectronico: String = ""
    open var nombreCasaPrincipalSucursal: String = ""
    open var codigoCasaPrincipalSucursal: Int = 0
    open var domicilioFiscal: String = ""
    open var ciudad: String = ""
    open var departamento: String = ""
    open var informacionAdicional: String = ""
}

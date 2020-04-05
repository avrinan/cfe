//
//  Item.swift
//  CFE
//
//  Created by Daniel Bonini on 6/7/16.
//  Copyright © 2016 Daniel Bonini. All rights reserved.
//

import Foundation

open class Item: NSObject {
    open var nroSecuencial = 0
    open var tablaDeCodigosDelItem = [CodItem]()
    open var indicadorDeFacturacion = 0
    open var indicadorAgenteResponsable = ""
    open var nombreDelItem = ""
    open var descripcionAdicional = ""
    open var cantidad = 0
    open var unidadDeMedida = ""
    open var precioUnitario = 0.0
    open var descuento = 0.0
    open var montoDescuento = 0.0
    open var tablaDeDistribucionDelDescuento = [Descuento]()
    open var recargo = 0.0
    open var montoRecargo = 0.0
    open var tablaDeDistribucionDelRecargo = [Recargo]()
    open var tablaDeRetencionesPercepciones = [Impuesto]()
    open var monto = 0.0
}

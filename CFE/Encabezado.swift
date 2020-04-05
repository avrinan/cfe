//
//  Encabezado.swift
//  CFE
//
//  Created by Daniel Bonini on 6/6/16.
//  Copyright © 2016 Daniel Bonini. All rights reserved.
//

import Foundation

public class Encabezado: NSObject {
    
    // MARK: Identificacion del comprobante
    public var version = ""
    public var tipoCFE = 0
    public var serieComprobante = ""
    public var numeroComprobante = 0
    public var fechaComprobante = NSDate()
    public var indicadorTipoTrasladoBienes = 0
    public var fechaDesde = NSDate()
    public var fechaHasta = NSDate()
    public var indicadorMontosBrutos = 0
    public var formaDePago = 0
    public var fechaVencimiento = NSDate()
    public var clausulaVenta = ""
    public var modalidadVenta = 0
    public var viaDeTransporte = 0
    public var informacionAdicionalComprobante = ""
    
    public var emisor = Emisor()
    public var receptor = Receptor()
    public var totales = Totales()
    
    init(tipoComprobante: Int, serie: String, numero: Int, fecha: NSDate, indicadorTTB: Int, fchDesde: NSDate, fchHasta: NSDate, indicadorMB: Int, formaPago: Int, fchVencimiento: NSDate, clausula: String, modalidad: Int, via: Int, info: String) {
        
        version = "1.0"
        tipoCFE = tipoComprobante
        serieComprobante = serie
        numeroComprobante = numero
        fechaComprobante = fecha
        indicadorTipoTrasladoBienes = indicadorTTB
        fechaDesde = fchDesde
        fechaHasta = fchHasta
        indicadorMontosBrutos = indicadorMB
        formaDePago = formaPago
        fechaVencimiento = fchVencimiento
        clausulaVenta = clausula
        modalidadVenta = modalidad
        viaDeTransporte = via
        informacionAdicionalComprobante = info
    }
}
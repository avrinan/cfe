//
//  CFE.swift
//  CFE
//
//  Created by Daniel Bonini on 6/6/16.
//  Copyright © 2016 Daniel Bonini. All rights reserved.
//

import Foundation

open class Certificado: NSObject {

    open var fechaAlta: Date
    open var url: String
    open var anioMesCargo: Int
    open var codigoSeguridad: String
    
    // MARK: Zona A - Encabezado
    open var version: String
    open var tipoCFE: Int
    open var serieCFE: String
    open var numeroCFE: Int
    open var fechaCFE: Date
    open var indicadorTipoTrasladoBienes: Int
    open var fechaDesde: Date
    open var fechaHasta: Date
    open var indicadorMontosBrutos: Int
    open var formaDePago: Int
    open var fechaVencimiento: Date
    open var clausulaVenta: String
    open var modalidadVenta: Int
    open var viaDeTransporte: Int
    open var informacionAdicionalComprobante: String
    
    open var emisor: Emisor
    open var receptor: Receptor
    
    // MARK: Totales
    open var tipoMonedaTransaccion: String
    open var tipoCambio: Double
    open var totalMontoNoGravado: Double
    open var totalMontoExportacionYAsimiladas: Double
    open var totalImpuestoPercibido: Double
    open var totalMontoIVAEnSuspenso: Double
    open var totalMontoNetoIVATasaBasica: Double
    open var totalMontoNetoIVAOtraTasa: Double
    open var tasaMinimaIVA: Double
    open var tasaBasicaIVA: Double
    open var totalIVATasaMinima: Double
    open var totalIVATasaBasica: Double
    open var totalIVAOtraTasa: Double
    open var totalMontoTotal: Double
    open var totalMontoRetenidoPercibido: Double
    open var totalCreditosFiscales: Double
    open var lineas: Int
    open var tablaRetencionPercepcionCretidoFiscal: [Impuesto]
    open var montoFacturable: Double
    open var montoTotalAPagar: Double
    
    // MARK: Zona B - Detalle de productos y servicios
    open var detalleProductosServicios: [Item]

    
    public init(tipoComprobante: Int, fechaComprobante:Date, fechaCarga:Date, monto:Double, numeroComprobante:Int, serieComprobante:String, urlCFE:String, codigoSeg: String) {
        fechaAlta = fechaCarga
        url = urlCFE
        codigoSeguridad = codigoSeg
        
        let components = (Calendar.current as NSCalendar).components([.year, .month], from: fechaComprobante)
        anioMesCargo = components.year!*100+components.month!
        
        version = "1.0"
        tipoCFE = tipoComprobante
        serieCFE = serieComprobante
        numeroCFE = numeroComprobante
        fechaCFE = fechaComprobante
        indicadorTipoTrasladoBienes = 0
        fechaDesde = Date()
        fechaHasta = Date()
        indicadorMontosBrutos = 0
        formaDePago = 0
        fechaVencimiento = Date.distantFuture
        clausulaVenta = ""
        modalidadVenta = 0
        viaDeTransporte = 0
        informacionAdicionalComprobante = ""
        
        emisor = Emisor()
        receptor = Receptor()
        tipoMonedaTransaccion = ""
        tipoCambio = 0.0
        totalMontoNoGravado = 0.0
        totalMontoExportacionYAsimiladas = 0.0
        totalImpuestoPercibido = 0.0
        totalMontoIVAEnSuspenso = 0.0
        totalMontoNetoIVATasaBasica = 0.0
        totalMontoNetoIVAOtraTasa = 0.0
        tasaMinimaIVA = 0.0
        tasaBasicaIVA = 0.0
        totalIVATasaMinima = 0.0
        totalIVATasaBasica = 0.0
        totalIVAOtraTasa = 0.0
        totalMontoTotal = 0.0
        totalMontoRetenidoPercibido = 0.0
        totalCreditosFiscales = 0.0
        lineas = 0
        tablaRetencionPercepcionCretidoFiscal = [Impuesto]()
        montoFacturable = 0.0
        montoTotalAPagar = monto
        
        detalleProductosServicios = [Item]()
    }

}

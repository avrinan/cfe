//
//  Totales.swift
//  CFE
//
//  Created by Daniel Bonini on 6/6/16.
//  Copyright © 2016 Daniel Bonini. All rights reserved.
//

import Foundation

public class Totales: NSObject {
    public var tipoMonedaTransaccion: String = ""
    public var tipoCambio: Double = 0
    public var totalMontoNoGravado: Double = 0
    public var totalMontoExportacionYAsimiladas: Double = 0
    public var totalImpuestoPercibido: Double = 0
    public var totalMontoIVAEnSuspenso: Double = 0
    public var totalMontoNetoIVATasaBasica: Double = 0
    public var totalMontoNetoIVAOtraTasa: Double = 0
    public var tasaMinimaIVA: Double = 0
    public var tasaBasicaIVA: Double = 0
    public var totalIVATasaMinima: Double = 0
    public var totalIVATasaBasica: Double = 0
    public var totalIVAOtraTasa: Double = 0
    public var totalMontoTotal: Double = 0
    public var totalMontoRetenidoPercibido: Double = 0
    public var totalCreditosFiscales: Double = 0
    public var lineas: Int = 0
    public var tablaRetencionPercepcionCretidoFiscal = [RetPerCred]()
    public var montoFacturable: Double = 0
    public var montoTotalAPagar: Double = 0
  
}
//
//  TelaBase.swift
//  GymWorkoutUITests
//
//  Created by bootcamp on 05/10/19.
//  Copyright © 2019 Adrian de Almeida. All rights reserved.
//

import XCTest

protocol TelaBase {
    
}

extension TelaBase {
    var app: XCUIApplication{
        return XCUIApplication()
    }
    
    func findAll(_ type: XCUIElement.ElementType) -> XCUIElementQuery{
        return app.descendants(matching: type)
    }
    
    func sendText(idCampo: XCUIElement, texto: String){
        idCampo.tap()
        idCampo.typeText(texto)
    }
    
    func setDatePicker(idCampo: XCUIElement, dia: String, mes: String, ano: String){
        idCampo.tap()
        app.datePickers.pickerWheels.element(boundBy: 0).adjust(toPickerWheelValue: dia)
        app.datePickers.pickerWheels.element(boundBy: 1).adjust(toPickerWheelValue: mes)
        app.datePickers.pickerWheels.element(boundBy: 2).adjust(toPickerWheelValue: ano)
    }
    
    
    func waitForExpectation(object: Any?, time: Double){
        _ = XCTWaiter.wait(for: [XCTNSPredicateExpectation(predicate: NSPredicate(format: "exists == true"), object: object)], timeout: time)
    }
}

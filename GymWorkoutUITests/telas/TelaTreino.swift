//
//  TelaTreino.swift
//  GymWorkoutUITests
//
//  Created by bootcamp on 05/10/19.
//  Copyright © 2019 Adrian de Almeida. All rights reserved.
//

import XCTest

class TelaTreino: TelaBase {
    private lazy var elementosBotao = findAll(.button)
    private lazy var elementosStaticText = findAll(.staticText)
    public lazy var addTreinoBotao = elementosBotao["addTreino"]
    public lazy var apagarTreino = elementosBotao["Deletar"]
    public lazy var apagarTreinoDialog = elementosBotao["Deletar"].firstMatch
    
    
    init(){
     waitForExpectation(object: addTreinoBotao, time: 10)
    }
    
    func addTreino() -> TelaCriarTreino {
        addTreinoBotao.tap()
        return TelaCriarTreino()
    }
    
    func apagarTreino(nomeDoTreino: String) -> TelaTreino {
        elementosStaticText[nomeDoTreino].swipeLeft()
        apagarTreino.tap()
        apagarTreinoDialog.tap()
        return self
    }
}

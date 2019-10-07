//
//  TreinoTest.swift
//  GymWorkoutUITests
//
//  Created by bootcamp on 05/10/19.
//  Copyright © 2019 Adrian de Almeida. All rights reserved.
//

import XCTest

class TreinoTest: BaseTests {
    
    private lazy var treino = TelaTreino()
    let nomeTreino = "Treino Inicial"
    
    override func setUp() {
        super.setUp()
        if(!app.staticTexts[nomeTreino].exists){
            _ = treino.addTreino().toDo(nome: nomeTreino, diaInicio: "10", mesInicio: "outubro", anoInicio: "2019", diaFinal: "30", mesFinal: "dezembro", anoFinal: "2020", tipo: "ABC")
        }
    }
    
    func testApagarTreino(){
        _ = treino.apagarTreino(nomeDoTreino: nomeTreino)
        XCTAssertFalse(treino.app.staticTexts[nomeTreino].exists)
    }
    
    func testExemplo() {
        let addTreino = TelaTreino()
        addTreino.addTreino()
        print(app.debugDescription)
    }
}

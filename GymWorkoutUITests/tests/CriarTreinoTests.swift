//
//  CriarTreinoTests.swift
//  GymWorkoutUITests
//
//  Created by bootcamp on 05/10/19.
//  Copyright © 2019 Adrian de Almeida. All rights reserved.
//

import XCTest

class CriarTreinoTests: BaseTests {
    lazy var criarTreino = TelaCriarTreino()
    let nomeTreino = "Treino Inicial"
    
    override func setUp() {
        super.setUp()
        let treino = TelaTreino()
        if(treino.app.staticTexts[nomeTreino].exists){
            treino.apagarTreino(nomeDoTreino: nomeTreino)
        }
        criarTreino = treino.addTreino()
    }
    
    func testCadastrarTreino() {
        _ = criarTreino.toDo(nome: nomeTreino, diaInicio: "10", mesInicio: "outubro", anoInicio: "2019", diaFinal: "30", mesFinal: "dezembro", anoFinal: "2020", tipo: "ABC")
        XCTAssertTrue(app.staticTexts[nomeTreino].exists)
    }
    
}

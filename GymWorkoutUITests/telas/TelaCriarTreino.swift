//
//  TelaCriar.swift
//  GymWorkoutUITests
//
//  Created by bootcamp on 05/10/19.
//  Copyright © 2019 Adrian de Almeida. All rights reserved.
//

import XCTest

class TelaCriarTreino: TelaBase {
    private lazy var elementosBotao = findAll(.button)
    private lazy var elementosTextField = findAll(.textField)
    private lazy var elementosTexto = findAll(.staticText)
    
    public lazy var botaoSalvar = elementosBotao["botaoSalvar"]
    public lazy var botaoab = elementosBotao["AB"]
    public lazy var botaoabc = elementosBotao["ABC"]
    public lazy var botaoabcd = elementosBotao["ABCD"]
    public lazy var campoNome = elementosTextField["campoNome"]
    public lazy var campoDataInicio = elementosTextField["campoDataInicio"]
    public lazy var campoDataFinal = elementosTextField["campoDataFinal"]
    public lazy var mensagemErroNomeVazio = elementosTexto["Campo Nome não pode ser vazio!"]
    public lazy var mensagemErroDataInicioVazio = elementosTexto["Campo Data Inicio não pode ser vazio!"]
    public lazy var mensagemErroDataFinalVazio = elementosTexto["Campo Data Final não pode ser vazio!"]
    
    func inserirNomeDoTreino(nome: String) -> TelaCriarTreino{
        sendText(idCampo: campoNome, texto: nome)
        return self
    }
    
    func inserirDataDeInicio(dia: String, mes: String, ano: String) -> TelaCriarTreino{
        setDatePicker(idCampo: campoDataInicio, dia: dia, mes: mes, ano: ano)
        return self
    }
    
    func inserirDataDeFinal(dia: String, mes: String, ano: String) -> TelaCriarTreino{
        setDatePicker(idCampo: campoDataFinal, dia: dia, mes: mes, ano: ano)
        return self
    }
    
    func escolherTipoDoTreino(tipo: String) -> TelaCriarTreino {
        switch tipo {
        case "ABC":
            botaoabc.tap()
            break
        case "ABCD":
            botaoabcd.tap()
            break
        default:
            botaoab.tap()
            break
        }
        return self
    }
    
    func salvar() -> TelaCriarTreino {
        botaoSalvar.tap()
        return self
    }
    
    func toDo(nome: String, diaInicio: String, mesInicio: String, anoInicio: String, diaFinal: String, mesFinal: String, anoFinal: String, tipo: String) -> TelaTreino {
        _ = inserirNomeDoTreino(nome: nome)
        _ = inserirDataDeInicio(dia: diaInicio, mes: mesInicio, ano: anoInicio)
        app.buttons["OK"].tap()
        _ = inserirDataDeFinal(dia: diaFinal, mes: mesFinal, ano: anoFinal)
        app.buttons["OK"].tap()
        _ = escolherTipoDoTreino(tipo: tipo)
        salvar()
        return TelaTreino()
    }
}

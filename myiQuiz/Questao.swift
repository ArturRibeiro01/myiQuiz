//
//  Questao.swift
//  myiQuiz
//
//  Created by Artur Mac on 22/12/24.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [
    Questao(
        titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter ?",
        respostas: ["Expecto Patronum","Avada Kedavra","Expelliarmus","Accio"],
        respostaCorreta: 2),
    
    Questao(
        titulo: "Quando foi lançado o filme Avatar 2?",
        respostas: ["2014","2023","2022"],
        respostaCorreta: 1),
    
    Questao(
        titulo: "Em que ano Vingadores Ultimato foi lançado?",
        respostas: ["2019","2018","2017"],
        respostaCorreta: 0),
]



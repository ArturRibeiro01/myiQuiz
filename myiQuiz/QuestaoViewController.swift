//
//  QuestaoViewController.swift
//  myiQuiz
//
//  Created by Artur Mac on 01/12/24.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao = 0
    var numeroQuestao = 0
    
    let UIColorDefault =
    UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)

    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    @IBOutlet var botoesRespostas: [UIButton]!
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        print(sender.tag)
        let usuarioAcertouaResposta =
        questoes[numeroQuestao].respostaCorreta == sender.tag
        
        if usuarioAcertouaResposta {
            pontuacao += 1
            sender.backgroundColor =
            UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else {
            sender.backgroundColor =
            UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if numeroQuestao < questoes.count - 1 {
            numeroQuestao += 1
            Timer.scheduledTimer(
                timeInterval: 1.2,
                target: self,
                selector: #selector(configurarQuestao),
                userInfo: nil,
                repeats: false
            )
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarQuestao()
    }
    
    func configurarLayout() {
        navigationItem.hidesBackButton = true
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        
        for botao in botoesRespostas {
            botao.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configurarQuestao() {
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        
        for botao in botoesRespostas {
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = UIColorDefault
        }
    }
}




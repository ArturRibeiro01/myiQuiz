//
//  ViewController.swift
//  myiQuiz
//
//  Created by Artur Mac on 30/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var botaoIniciarQuiz: UIButton!

    @IBAction func botaoPressionado(_ sender: Any) {
//        print("Botao Pressionado2")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }

    func configuraLayout() {
        botaoIniciarQuiz.layer
            .cornerRadius = 12.0
    }
}









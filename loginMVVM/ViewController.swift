//
//  ViewController.swift
//  loginMVVM
//
//  Created by Wesley Prado on 20/06/2024.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //Conexão dos IBOutlets dos elementos da tela, para que possamos interagir com os mesmos.
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var usuarioLabel: UILabel!
    @IBOutlet weak var usuarioTextField: UITextField!
    @IBOutlet weak var senhaLabel: UILabel!
    @IBOutlet weak var senhaTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.usuarioTextField.delegate = self
        self.senhaTextField.delegate = self
    }

    @IBAction func loginActionButton(_ sender: Any) {
    }
    
    //Método do foco do teclado.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.usuarioTextField {
            self.senhaTextField.becomeFirstResponder()
        }else{
            self.senhaTextField.resignFirstResponder()
        }
        return true
    }
    
}

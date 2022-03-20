//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Joffrey on 14/09/2021.
//

import UIKit

class ViewController: UIViewController {
    
    //Initalisation des widgets
    
    @IBOutlet weak var logo_app: UIImageView!
    @IBOutlet weak var saisir_valeur: UITextField!
    @IBOutlet weak var dollars_aff: UILabel!
    @IBOutlet weak var btn_reset: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Convertir euros en dollars
    func calculerEurosEnDollars(euros:Double) -> Double{
        let dollars : Double = (euros*1.18)/1
        return dollars
    }
    
    //Valeur affichée sur le storyboard
    
    @IBAction func quandUserChangeValeur(_ sender: Any) {
        let euros : Double = Double(saisir_valeur.text!) ?? 0.0
        let valeur : Double = calculerEurosEnDollars(euros: euros)
        let dollars : String = String((valeur * 10)/10)
        dollars_aff.text = "Valeur convertie en dollars : \(dollars)"
    }
    
    //Réininitialisation du widget quand l'utilisateur tape sur le bouton "Réinitaliser"
    
    @IBAction func btn_reset(_ sender: Any) {
        saisir_valeur.text = "0"
    }
    
    
    
    
    
}


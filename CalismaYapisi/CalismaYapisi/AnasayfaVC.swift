//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Samet on 4.12.2023.
//Sayfa açıldığı andaki çalışan kod didload dır

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelAnasayfa.text = "Hoşgeldin"
    }

    
    @IBAction func buttonYap(_ sender: Any) {
        labelAnasayfa.text = "Merhaba"
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: nil)
    }
    
}


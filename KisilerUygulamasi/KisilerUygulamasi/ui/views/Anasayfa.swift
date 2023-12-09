//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Samet on 9.12.2023.
//

import UIKit

class Anasayfa: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonDetay(_ sender: Any) {
        let kisi = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "111111")
        performSegue(withIdentifier: "toDetay", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" { //bunun anlamı segue todetay olduğunda aşağıdaki kodu çalıştır
            if let kisi = sender as? Kisiler {
                let gidilecekVC = segue.destination as! KisiDetay
                gidilecekVC.kisi = kisi
            }
        }
    }
}


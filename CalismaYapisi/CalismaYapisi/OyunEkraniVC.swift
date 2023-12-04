//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by Samet on 4.12.2023.
// buttongeri deki kodlara iyi bak birisi bir önceki sayfaya dönmesi için.Diğeri en en baştaki sayfaya dönmesi için

import UIKit

class OyunEkraniVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func buttonBitir(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        //navigationController?.popViewController(animated: true)  bir önceki sayfaya dönüş
        navigationController?.popToRootViewController(animated: true) //Ana Sayfaya dönüş
    }
    
}

//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Samet on 4.12.2023.
//Sayfa açıldığı andaki çalışan kod didload dır

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    
    //Alt tarafdaki kavramları tasarımlarda çok kullanılır mülakatlarda çıkar bil mutlaka
    //Leading-Left
    //Trailing-Rigt
    
    
    override func viewDidLoad() { //Uygulama ilk açıldığında çalışır ve birkez çalışır.
        super.viewDidLoad()
        labelAnasayfa.text = "Hoşgeldin"
        print("viewDidLoad çalıştı")
    }
    
    //Yaşam döngüsü için çok öenmli methodları aşağıda yazıyorum.Üsteki viewdidload buna dahil
    
    override func viewWillAppear(_ animated: Bool) {//Sayfa her göründüğünde çalışır
        print("viewWillAppear çalıştı")
        //Aynı zamanda sayfaya geri dönüldüğünde bu çalışır
    }
     
    override func viewWillDisappear(_ animated: Bool) {//Sayfa görünmez olduğunda çalışır
        print("viewWillDisappear çalıştı")
    }
    
//************************************************************************************************
    
    @IBAction func buttonYap(_ sender: Any) {
        labelAnasayfa.text = "Merhaba"
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Samet", yas: 23, boy: 1.83, bekar: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu çalıştı") //Sayfalar arası geçişi dinlemek için yazılan kod
        
        if segue.identifier == "oyunEkraninaGecis" {
            print("oyunEkraninaGecis Çalıştı")
            
            if let veri = sender as? Kisiler {
                
                
                let gidilecekVC = segue.destination as! OyunEkraniVC
                gidilecekVC.kisi = veri
            }
        }
    }
    
    
    @IBAction func buttonadd(_ sender: Any) {
        print("Add seçildi")
    }
    
    @IBAction func buttonSave(_ sender: Any) {
        print("Save seçildi")
    }
    
    
    
}


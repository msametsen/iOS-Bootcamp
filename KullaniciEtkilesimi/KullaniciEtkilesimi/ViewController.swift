//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by Samet on 6.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
     
    //Butonları bağladın şimdi de içindeki yazıları dolduruyorum kod ile
    @IBAction func buttonAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message:"mesaj" , preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel) { action in
            print("İptal Seçildi")//konsol da görmek içindir bu
        }
        
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) { action in
            print("Tamam Seçildi")//konsol da görmek içindir bu
        }
        
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
    }
    
    
    
    
    
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message:"mesaj" , preferredStyle: .actionSheet) //alert tek farkı .actionSheet yazmaktır
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel) { action in
            print("İptal Seçildi")//konsol da görmek içindir bu
        }
        
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) { action in
            print("Tamam Seçildi")//konsol da görmek içindir bu
        }
        
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
    }
    
    

    
    
    
    @IBAction func buttonOzelAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message:"mesaj" , preferredStyle: .alert)
        
        //Yazı girme kısmının özelliklerini kodladık
        alertController.addTextField { textField in
            textField.placeholder = "Veri Giriniz" //Arkada sönük olarak yazacak kelime
            textField.keyboardType = .numberPad    //çıkacak klavye türü
            textField.isSecureTextEntry = true     //şifre girerken gizli mi görünsün
            
        }
       
        let tamamAction = UIAlertAction(title: "Kaydet", style: .cancel) { action in
            let tf = alertController.textFields![0] as UITextField //[0] yazmamın sebebi ilk satırda yaptığım için zaten başka girilecek yer yok olsa diğeride [1] olurdu
            
            if let alinanVeri = tf.text {
                print("Veri : \(alinanVeri)") //yazdığım şifreyi konsolumda görmek için
            }
            print("Kaydet Seçildi")//konsol da görmek içindir bu
        }
        
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
    }
    
}


//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Samet on 9.12.2023.
//

import UIKit

class Anasayfa: UIViewController{

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var kisilerTableView: UITableView!
    var kisilerListesi = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self//searchbar protocole bagladık.Bu çok fazla kullanılır.ONEMLI!!
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "1111")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Samet", kisi_tel: "3252")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "Beyza", kisi_tel: "4578")
        kisilerListesi.append(k1)
        kisilerListesi.append(k2)
        kisilerListesi.append(k3)

        
    }
    
    //konsolda anasayfaya döndüğümüzü görmek için
    override func viewWillAppear(_ animated: Bool) {
        print("Anasayfaya dönüldü")
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {//filtreleme yaptık gittigim sayfanın id sini vererek eger bu sayfa ise calıstır demek.
            if let kisi = sender as? Kisiler {
                let gidilecekVC = segue.destination as! KisiDetay
                gidilecekVC.kisi = kisi
                
            }
        }
    }
    
    }


extension Anasayfa : UISearchBarDelegate {//extension yazarak sayfamızı genisletmis oluruz.Extension parantezlerin dışında yazılan bir kodlamadır.Anasayfa : dedigimiz icin bütün kodlamalar Anasayfayı temsil edecek anlamına gelir.
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Kişi Ara : \(searchText)")
    }
}

extension Anasayfa : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListesi.count//kisilerListesi kümem kaç tane ise o kadar hücre olustur demektir.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kisi = kisilerListesi[indexPath.row]//Bu kod kisileri hucrelere sırayla yazdırmamızı saglar.
        
        let hucre = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre") as! KisilerHucre
        
        hucre.labelKisiAd.text = kisi.kisi_ad
        hucre.labelKisiAd.text = kisi.kisi_tel
    
        return hucre
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {//bu kod ile hangi satırı sectigmi anlayabiliyorum.
        let kisi = kisilerListesi[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: kisi)//performsegue transfer etmemize yarar ıd ile hangi sayfaya gececegini sender ile hangi veriyi gecirecegini kodlarız.
    }
    
    //Solda leading sağdan trailing denir
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let silAction = UIContextualAction(style: .destructive, title:"Sil"){
            UIContextualAction,view,bool in
            let kisi = self.kisilerListesi[indexPath.row]
            
            //Silmek için emin misin allert ve iç yazılarını oluşturuyorum
            let alert = UIAlertController(title: "Silme İşlemi", message: "\(kisi.kisi_ad!) silinsin mi?)", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel)
            alert.addAction(iptalAction)
            
            let evetlAction = UIAlertAction(title: "Evet", style: .destructive){action in
                print("Kişi Sil : \(kisi.kisi_id!)")
            }
            alert.addAction(evetlAction)
            
            self.present(alert, animated: true)
            
        }
        
        return UISwipeActionsConfiguration(actions: [silAction])
    }
    
}



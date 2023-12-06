//
//  ViewController.swift
//  TabBarKullanimi
//
//  Created by Samet on 6.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabBarItems = tabBarController?.tabBar.items {
            let anasayfaItem = tabBarItems[0]
            let ayarlatItem = tabBarItems[1]
            anasayfaItem.badgeValue = "3"//Tabbardaki simgelirin üstündeki kırmızı ifade bu
            ayarlatItem.badgeValue = "Yeni"
        }
        
        let apperance = UITabBarAppearance()  //Tabbar arka plan değiştirme
        apperance.backgroundColor = UIColor.systemIndigo
        
        //Düzgün görünmesi için bu kodlar şart.Apple öneriyor kesin yaz geç
        renkDegistir(itemAppearance: apperance.stackedLayoutAppearance)
        renkDegistir(itemAppearance: apperance.inlineLayoutAppearance)
        renkDegistir(itemAppearance: apperance.compactInlineLayoutAppearance)
        
        //Bu aşağıdaki kodlar tabbar her ekranda düzgün çalışması için gerek kodlar.Vc de var
        tabBarController?.tabBar.standardAppearance = apperance
        tabBarController?.tabBar.scrollEdgeAppearance = apperance
    }
    
    func renkDegistir(itemAppearance:UITabBarItemAppearance) {
        //Seçili olduğu durum
        itemAppearance.selected.iconColor = UIColor.systemOrange
        itemAppearance.selected.titleTextAttributes = [.foregroundColor : UIColor.systemOrange]
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemMint
        //Seçili olmayan durum
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor : UIColor.white]
        itemAppearance.normal.badgeBackgroundColor = UIColor.lightGray
    }


}


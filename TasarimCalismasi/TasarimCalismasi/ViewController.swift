//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by Samet on 2.12.2023.

// Icon Kitchen kullan süper bir site.Uygulama ikonu yapmak için

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Pizza"
        
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named:  "anaRenk")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named:  "yaziRenk1")!,.font : UIFont(name: "Pacifico-Regular", size: 22)!]
        navigationController?.navigationBar.barStyle = .black
        
        //Bu aşağıdaki kodlar bütün telefonlarda(dynamic island falan uyum sağlaması için gerekli)
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
    }


}


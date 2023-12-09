//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by Samet on 6.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var mSwitch: UISwitch! //Bunu yapmamızın sebebi switch en son hangi durumda kaldığını okumak bu yüzden outlet olarak tanımladık(konsol)
    
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!//Bunu yapmamızın sebebi switch en son hangi durumda kaldığını okumak bu yüzden outlet olarak tanımladık(konsol)
    
    
    @IBOutlet weak var labelSlider: UILabel!
    
    
    @IBOutlet weak var slider: UISlider!
    
    
    @IBOutlet weak var labelSteper: UILabel!
    
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() { //Sayfa ilk açıldığında çalışan yer burasıdır
        super.viewDidLoad()
        labelSlider.text = String(Int(slider.value))//Sayfa yüklendiğinde slider değerini göstermesi için gereken kod
        indicator.isHidden = true
        
    }


    @IBAction func buttonYap(_ sender: Any) {
        if let alinanVeri = textFieldGirdi.text {   //Alınan veriyi yazdırması için gereken kod
            labelSonuc.text = alinanVeri
        }
    }
    
    
    @IBAction func buttonMutlu(_ sender: Any) {
        imageView.image = UIImage(named: "mutlu")
    }
    
    
    @IBAction func buttonUzgun(_ sender: Any) {
        imageView.image = UIImage(named: "uzgun")
    }
    
    
    @IBAction func buttonGoster(_ sender: Any) {
        print("Switch Durum : \(mSwitch.isOn)") //Switch son durumunu okumak için(konsolda)
    }
    
    
    @IBAction func switchDegisim(_ sender: UISwitch) {  //Burdaki sender ne yazdığına dikkat et
        if sender.isOn {
            print("Switch : On") //konsolda görmek için yaptık
        }else {
            print("Switch : Off") //konsolda görmek için yaptık
        }
    }
    
    
    @IBAction func segmentedDegisim(_ sender: UISegmentedControl) {
        let secilenIndeks = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenIndeks) //hangi segmenti seçtiğimizi okumak için
        print("Seçim : \(secilenKategori!)")
    }
    
    
    @IBAction func sliderDegisim(_ sender: UISlider) {
        labelSlider.text = String(Int(sender.value))  //Değeri labelde görmek için gereken kod.Int yapmamızın sebebi tam sayılı değerler göstersin diye.
    }
    
    
    
    @IBAction func stepperDegisim(_ sender: UIStepper) {
        labelSteper.text = String(Int(sender.value))
    }
    
    
    @IBAction func buttonBasla(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    
    @IBAction func buttonDur(_ sender: Any) {
        indicator.isHidden = true
        indicator.stopAnimating()
    }
    
}


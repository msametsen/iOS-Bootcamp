import UIKit

//class ismi büyük harfle başlat
class Araba {
    var renk:String?  //böyle yaparak ben sonradan değer atayacağımı söylüyorum
    var hiz:Int?
    var calisiyorMu:Bool?
    
    //yukarısındaki tanım yerine aşağıdakini kullanırız hep çok öenmlidir.
    init(renk:String,hiz:Int,calisiyorMu:Bool) {
        self.renk = renk
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu // Shadowing denir.
    }
    
    
    func calistir() {
        calisiyorMu = true
        hiz = 5
    }
    
    func durdur() {
        calisiyorMu = false
        hiz = 0
    }
    
    
    func hizlan(kackm:Int) {
        hiz!+=kackm
    }
    
    func yavasla(kackm:Int) {
        hiz!-=kackm
    }
    
    
    func bilgiAl(){
        print("-----------------------")
        print("Renk          : \(renk!)")
        print("Hızı          : \(hiz!)")
        print("Çalışıyor Mu? : \(calisiyorMu!)")

    }
}

//Nesne oluşturma
//var bmw = Araba()
//var ford = Araba()

//Değer atama

var bmw = Araba(renk: "Kırmızı", hiz: 100, calisiyorMu: true)  //böyle işleri inanılmaz kolaylaştırdık

//bmw.renk = "Kırmızı"
//bmw.hiz = 100
//bmw.calisiyorMu = true   //böyle yapmak yerine yukarındaki gibi yap
//ford.renk = "Beyaz"
//ford.hiz = 0
//ford.calisiyorMu = false

//Değer okuma
//print("-----------------------")
//print("Renk          : \(bmw.renk!)")
//print("Hızı          : \(bmw.hiz!)")
//print("Çalışıyor Mu? : \(bmw.calisiyorMu!)")

//print("-----------------------")
//print("Renk          : \(ford.renk!)")
//print("Hızı          : \(ford.hiz!)")
//print("Çalışıyor Mu? : \(ford.calisiyorMu!)")  böylede yapabilriz ama biz kolay olsun diye alttaki yönetimi kullanıcaz.

bmw.bilgiAl()
bmw.durdur()
bmw.bilgiAl()
bmw.hizlan(kackm: 50)
bmw.bilgiAl()
bmw.yavasla(kackm: 10)
bmw.bilgiAl()



//ford.bilgiAl()
//ford.calistir()
//ford.bilgiAl()



//*******************************************3.GÜN*******************************************************************

//Geri dönüş değeri olan(retunr) lü fonkiyonlarda mutlaka -> yapılıp sonrasında türünü(string,int vs.) belirtilmeli

class Fonksiyonlar {
    //Geri dönüş değeri olmayan(void)
    func selamla1() {
        let sonuc = "Merhaba Ahmet"
        print(sonuc)
    }
    
    
    //Geri dönüş değeri olan(return)
    func selamla2() -> String {
        let sonuc = "Merhaba Ahmet"
        return sonuc
    }
    
    
    
    //parametre
    func selamla3(isim:String) {
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }
    
    
    func toplama(sayi1:Int,sayi2:Int) -> Int {
        let toplam = sayi1 + sayi2
        return toplam
    }
    
    
    
    //Overloading-Bu sayede aynı isimli func tekrar tekrar kullanmamızı sağlar.Ama en az bir değerin türü değişmeli yada yeni bir parametre eklemelisin
    func carpma(sayi1:Int,sayi2:Int) {
       print("Çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Int,sayi2:Int,isim:String) {
       print("Çarpma : \(sayi1 * sayi2) - İşlemi Yapan: \(isim)")
    }
    
    
}

let f = Fonksiyonlar()
f.selamla1()

let gelenSonuc = f.selamla2()
print("Gelen Sonuç : \(gelenSonuc)")

f.selamla3(isim: "Samet")

let gelenToplam = f.toplama(sayi1: 10, sayi2: 20)
print("Gelen Toplam : \(gelenToplam)")

f.carpma(sayi1: 10, sayi2: 25)
f.carpma(sayi1: 3, sayi2: 5, isim: "Samet")


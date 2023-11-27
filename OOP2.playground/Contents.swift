import UIKit

//Static değişkenler ve metodlar

class ASinifi {
    static var x = 10
    
    static func metod() {
        print("Metod Çalıştı")
    }
}

let a = ASinifi()

//print(ASinifi().x)//Sanal nesne-virtual object diye tanımlanır bu durum

print(ASinifi.x)

ASinifi.metod()




//Enumeration-Örneğin kçalışan bir yazılımcının konserve boyutlarını bilmesine gerek yok.KonserveBoyut yazıp . koyunca seçenkleri çıkacaktır.Enumeration bu işe yarar

enum KonserveBoyut {
    case kucuk
    case orta
    case buyuk
}


func ucretHesapla(boyut:KonserveBoyut,adet:Int) {
    switch boyut {
    case .kucuk: print("Fiyat : \(adet * 13) tl")
    case .orta : print("Fiyat : \(adet * 24) tl")
    case .buyuk: print("Fiyat : \(adet * 45) tl")
    }
}

ucretHesapla(boyut: .orta, adet: 100)




//Composition
class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int?,kategori_ad:String?){
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}


class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int?,yonetmen_ad:String?) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}


class Filmler {
    var film_id:Int?
    var film_adi:String?
    var film_yil:Int?
    var katagori:Kategoriler? //işte bu Composition oluyor.Kısaca nesneden class erişim sağladık-Veri tabanlarında klnr.
    var yonetmen:Yonetmenler?
    
    init(film_id:Int?,film_adi:String?,film_yil:Int?,katagori:Kategoriler?,yonetmen:Yonetmenler?) {
        self.film_id = film_id
        self.film_adi = film_adi
        self.film_yil = film_yil
        self.katagori = katagori
        self.yonetmen = yonetmen
    }
}

let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")

let f1 = Filmler(film_id: 1, film_adi: "Django", film_yil: 2013, katagori: k1, yonetmen: y1)

print("Film id       : \(f1.film_id!)")
print("Film ad       : \(f1.film_adi!)")
print("Film yıl      : \(f1.film_yil!)")
print("Film kategori : \(f1.katagori!.kategori_ad!)")
print("Film yönetmen : \(f1.yonetmen!.yonetmen_ad!)")

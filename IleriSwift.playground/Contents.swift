import UIKit

//guard sadece false durumunda çalışır

func kisiTanima(ad:String) {
    if ad == "Ahmet" {
         
    }else{
        print("Tanınmayan Kişi")
    }
}

kisiTanima(ad: "Ahmet")


func kisiTanima2(ad:String) {
    guard ad == "Ahmet" else{
        print("Tanınmayan Kişi")
        return
    }
    
    print("Tanınmayan Kişi")
}

kisiTanima2(ad: "Samet")




//Hata Ayıklama
//1.Compile Error : Editör(derleyici)hataları
//2.Run Time Error(Exception):Kod yazarken hata görünmez ama uygulamayı çalıştırıdığımızda hata alır.

enum Hatalar : Error {
    case sifiraBolunmeHatasi
}


//Bu fonksiyonda hata olabilir çünü belki böldüğün sayı 0 böyle bir şey olmaması için
func bolme(sayi1:Int,sayi2:Int) throws -> Int {
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}


do{
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi {
    print("Sayı sıfıra bölünmez")
}

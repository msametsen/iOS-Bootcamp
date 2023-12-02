import UIKit

//Array-Daha çok bunu kullanırız.[] kullanman array olduğu anlamına gelir.
var numaralar = [10,20,30]
var meyveler = [String]() //Daha çok bu tür yazıcaz

//Veri ekleme
meyveler.append("Elma")//Bu 0. index olur
meyveler.append("Muz")
meyveler.append("kiraz")
print(meyveler)

//Güncelleme
meyveler[0] = "Yeni Elma"
print(meyveler)

//Insert-Ekleme anlamına gelir append farkı istediğin yere ekliyebilirsin.(append sona ekler)
meyveler.insert("Portakal", at: 1)
print(meyveler)

//Veri okuma
print(meyveler[2])


print("Boyut : \(meyveler.count)")
print("Boş Kontrol : \(meyveler.isEmpty)")


for meyve in meyveler {
    print("Sonuç 1 : \(meyve)")
}

for (indexs,meyve) in meyveler.enumerated() {
    print("\(indexs). -> \(meyve)")
}

//Silme
meyveler.remove(at: 1)
print(meyveler)

//Nesne Tabanlı

class Ogrenciler {
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int,ad:String,sinif:String) {
        self.no    = no
        self.ad    = ad
        self.sinif = sinif
    }
}

var o1 = Ogrenciler(no: 200, ad:"Zeynep" , sinif: "9C")
var o2 = Ogrenciler(no: 300, ad:"Ahmet" , sinif: "11Z")
var o3 = Ogrenciler(no: 100, ad:"Beyza" , sinif: "12A")

var ogrencilerListesi = [Ogrenciler]()
ogrencilerListesi.append(o1)
ogrencilerListesi.append(o2)
ogrencilerListesi.append(o3)

for o in ogrencilerListesi {
    print("No: \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

//Filtreleme     $0 diyerek o sınıfdaki nesnelere erişiyoruz
var f1 = ogrencilerListesi.filter({$0.no! > 100}) //No su 100 den büyükleri getir demek bu
print("Filtreleme 1")
for o in f1 {
    print("No: \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}


var f2 = ogrencilerListesi.filter({$0.ad!.contains("y")})//içerisinde y olanları getir demek bu
print("Filtreleme 2")
for o in f2 {
    print("No: \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}


//Sıralama(Sorting)
var s1 = ogrencilerListesi.sorted(by: {$0.no! > $1.no!})
print("Sayısal büyükten küçüğe")
for o in s1 {
    print("No: \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

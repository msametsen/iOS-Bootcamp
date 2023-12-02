import UIKit

//Set-Yazdığın verileri sıra ile çıktısını almaz karışık çıktı alır.Var olan eleman tekrar eklenemz
var meyveler = Set<String>()

//Veri ekleme.Burda arrayde olduğu gibi append ile değil insert ile ekliyorum
meyveler.insert("Elma")
meyveler.insert("Portakal")
meyveler.insert("Muz")
print(meyveler)

meyveler.insert("Amasya Elması")
print(meyveler)


for meyve in meyveler {
    print("Sonuç : \(meyve)")
}

print("Boyut : \(meyveler.count)")
print("Boş Mu: \(meyveler.isEmpty)")

//Tüm verileri silme
meyveler.removeAll()
print(meyveler)





//Dictionary-Key value şeklinde çalışır belirttiğin ilk tür key sonraki value olur
var iller = [Int:String]()

//Veri ekleme
iller[16] = "Bursa"
iller[34] = "İstanbul"
print(iller)

//Veri okuma
print(iller[16]!)

//Veri güncelleme
iller[16] = "Yeni Bursa"
print(iller)

for (anahtar,deger) in iller {
    print("\(anahtar) -> \(deger)")
}

import UIKit

var ogrenciAdi = "Samet"
var ogrenciYas = 22
var ogrenciBoy = 1.83
var ogrenciBasharf = "S"
var ogrenciDevamEdiyorMu = true

print(ogrenciAdi)
print(ogrenciYas)
print(ogrenciBoy)
print(ogrenciBasharf)
print(ogrenciDevamEdiyorMu)



//Değişkenin türünü belirtmek zorunda değilsin ama biz örnek olsun diye belirttik.
var urun_id:Int = 3416
var urun_adi:String = "Macbook Pro"
var urun_adet:Int = 100
var urun_fiyat:Int = 34999
var urun_tedarikci:String = "Apple"

print("Ürün id          : \(urun_id)")
print("Ürün adı         : \(urun_adi)")
print("Ürün adet        : \(urun_adet)")
print("Ürün fiyat       : \(urun_fiyat)")
print("Ürün tedarikcisi : \(urun_tedarikci)")


//***************************************************************************************************************


//Constant - Sabitler

let numara = 100
print(numara)
//numara = 200 burda numaraya yeni değer atıyamazsın çünkü let değişkeni ile yazdın.let değiştirilemez(önerilen budur)
//print(numara)


//Type Casting - Tür Dönüşümü
//sayısaldan -> sayısala
var i = 42
var d = 56.78

var sonuc1 = Double(i)
var sonuc2 = Int(d)

print(sonuc1)
print(sonuc2)

//sayısaldan -> metine
var sonuc3 = String(i)//"42"
var sonuc4 = String(d)//"56.78"

print(sonuc3)
print(sonuc4)

//metinden -> sayısala
var yazi = "34"

if let sonuc5 = Int(yazi) {
    print(sonuc5)
}  //çıktıda optional gelmemesi için if let kullandık

import UIKit

//Karşılaştırma operatörleri
var a = 40
var b = 50

var x = 90
var y = 80

print("a == b : \(a == b)")
print("a != b : \(a != b)")
print("a > b  : \(a > b)")
print("a < b  : \(a < b)")
print("a >= b : \(a >= b)")
print("a <= b : \(a <= b)")


print("a > b || x > y : \(a > b || x > y)") // ||(veya anlamına gelir)
print("a > b && x > y : \(a > b && x > y)") // &&(ve anlamına gelir)


//*******************************************************************************************************************


//if

var yas = 15
var isim = "Mehmet"

if yas >= 18 {
    print("Reşitsiniz")
}else{
    print("Reşit Değilsiniz")
}

if isim == "Ahmet" {
    print("Merhaba Ahmet")
}else if isim == "Mehmet"{
    print("Merhaba Mehmet")
}else{
    print("Tanınmayan Kişi")
}


var ka = "admin"
var s = 123456

if ka == "admin" && s == 123456 {
    print("Hoşgeldiniz")
}else{
    print("Hatalı Giriş")
}


var sonuc = 9

if sonuc == 9 || sonuc == 7 {
    print("Sonuç 9 veya 10 dur")
}else{
    print("Sonuç 9 veya 10 değildir")
}



//Switch--Bu kavram if gibi değildir bir değer verirsin onu case ler ile denersin

var gun = 3

switch gun {
case 1: print("Pazartesi")
case 2: print("Salı")
case 3: print("Çarşamba")
case 4: print("Perşembe")
case 5: print("Cuma")
case 6: print("Cumartesi")
case 7: print("Pazar")
default: print("Böyle Bir Gün Yok")
}


//Döngüler

for x in 1...3 {
    print("Döngü 1 : \(x)")
}

for a in stride(from: 10, through: 20, by: 5) {
    print("Döngü 2 : \(a)")
} //from kaçtan başıyacak,throuhg kaça kadar gidecek,by kaçar kaçar artıcak anlamına gelir

for b in stride(from: 10, through: 20, by: -5) {
    print("Döngü 3 : \(b)")
} //burdada azalmasını yaptık



var sayac = 1

while sayac < 4 {
    print("Döngü 4 : \(sayac)")
    sayac = sayac + 1
}




for i in 1...5 {
    if i == 3 {
        break
    }
    print("Döngü 5 : \(i)")
} //break o adımda durduru


for i in 1...5 {
    if i == 3 {
        continue
    }
    print("Döngü 6 : \(i)")
} //continue o adımı pas geçip devam eder.break ve continue koşul olmalı yoksa uygulama başlar başlamaz kapanır.

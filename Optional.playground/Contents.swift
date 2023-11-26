import UIKit

//Tanımlama

//null un swift deki adı nil dir.
var str:String?
str = "Merhaba"

if str != nil { //nil değilse bunu yazdır anlamına gelir
    print(str!) //unwrap yaptık yoksa çıktıda optional yazardı
}else{
    print("str nil değer içeriyor")
}



//optional binding
if let temp = str {
    print(temp) //otomatik unwrap oldu
}else{
    print("str nil değeri içeriyor")
}

//illa if let olmak zorunda değil ilerde değeri değiştireceksen varlı kullanabilrsin

if var temp = str {
    print(temp) //otomatik unwrap oldu
    temp = "Nasılsın"  //var lı değer atadığımız için burda değiştirebildik
    print(temp)
}else{
    print("str nil değeri içeriyor")
}

    




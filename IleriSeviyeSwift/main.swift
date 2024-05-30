//
//  main.swift
//  IleriSeviyeSwift
//
//  Created by iOS-Lab11 on 29.05.2024.
//

import Foundation

//Nesne oluşturma
let ogrSinif = UserClass(isim: "Tuba", yas: 27, meslek: "Mühendis" )
print(ogrSinif.isim)

var ogrStruct = UserStruct(isim: "Ayşe", yas: 25, meslek: "Muhasebeci")
print(ogrStruct.yas)

/*
ogrSinif.yas = 30
print(ogrSinif.yas)

ogrStruct.yas = 30
print(ogrStruct.yas)

// Referans ve Değer Farkı

let ogrSinifKopyasi = ogrSinif
var ogrStructKopyası = ogrStruct

// oluşturulan yeni değişkenlerde bir önceki değeri tutar örneğin yaş artık 30 olduğu için ikisi de ekrana 30 yazar

print("Sınıf Kopyası Yaş: ", ogrSinifKopyasi.yas)
print("Struct Kopyası Yaş: ", ogrStructKopyası.yas)

// değerleri değiştirelim

ogrSinifKopyasi.yas = 34
ogrStructKopyası.yas = 35

print("Sınıf Kopyası Yaş: ", ogrSinifKopyasi.yas)
print("Struct Kopyası Yaş: ", ogrStructKopyası.yas)

// Orijinal değişkenlerde yaş değerini görme

//UserClass'tan oluşturulan ilk nesne kopyası oluşturulduktan sonraki değeri verir.
// Burada Reference Type vardır. Kopyalama yapıldığnıda tek bir obje, iki referans var.
print("Sınıf - Yaş: ", ogrSinif.yas)

// UserStruct'tan oluşturulan ilk nesne kopyasının değerini vermez.
// Burada Value type vardır. Kopyalama yapıldığında iki obje var
print("Struct - Yaş: ", ogrStruct.yas)
*/

//UserClass için:
print("Öğrencinin Baştaki Yaşı: ",ogrSinif.yas)
print("Fonksiyon Çağırıldı")
ogrSinif.yasiArttir()
print("Öğrencinin Fonksiyon Çağırıldıktan Sonraki Yaşı: ", ogrSinif.yas)

print("-------------------------------------")

print("Öğrencinin Baştaki Yaşı: ",ogrStruct.yas)
print("Fonksiyon Çağırıldı")
ogrStruct.yasiArttir()
print("Öğrencinin Fonksiyon Çağırıldıktan Sonraki Yaşı: ", ogrStruct.yas)

// Tuple:

var myTuple = (10, 20)
print(myTuple.0) // 0. indeks
print(myTuple.1) // 1. indeks

var myTuple2 = (10, 20, 30, 40)

// 3. İndisin Değerini Değştirme
myTuple2.3 = 50
print("3. indeksin değeri: ", myTuple2.3)

// let ile de oluşturulabilir
let myTuple3 = ("Tuba", 10)
print(myTuple3.1)

// tuple içerisine dizi ekleme
let myTuple4 = ("Atıl", [1, 2, 3, 4])
print(myTuple4.1[2])

// Değer atamadan tuple oluşturma

let tupleOlusturma : (String, String)

tupleOlusturma.0 = "Tuba"
tupleOlusturma.1 = "AKBAŞ"
print(tupleOlusturma)

let newTuple = (isim: "Tuba", soyisim: "Akbaş")
print(newTuple.soyisim)

// Guard Let: if let'in tersidir denilebilir

let numara = "Tuba"

// burada Int'e çeviyoruz fakat ya numara 5 değilde farklı bir şey olarak gelseydiyi düşünüyoruz. O yüzden if let yapısını kullanıyorduk.
// Int(numara)

// string bir değer ister ve geri int döndürür
func inteCevirenIfLetFonksiyonu (string : String) -> Int {
    if let cevrilenDeger = Int(string) {
        return cevrilenDeger
    } else {
        return 0
    }
}

print(inteCevirenIfLetFonksiyonu(string: numara))

func inteCevirenGuardLetFonksiyonu(string: String) -> Int {
    // bunu yapan yapamazsan else aktar
    guard let cevrilecekDeger = Int(string) else {
        return 0
    }
    return cevrilecekDeger
}

print(inteCevirenGuardLetFonksiyonu(string: numara))

// Switch - Case Kullanımı


//if-else örneği
func gunBul(gunSayisi: Int){
    var gunStringi = ""
    
    if gunSayisi > 0 {
        if gunSayisi == 1 {
            gunStringi = "Pazartesi"
        } else if gunSayisi == 2 {
            gunStringi = "Sali"
        } else if gunSayisi == 3 {
            gunStringi = "Çarşamba"
        } else if gunSayisi == 4 {
            gunStringi = "Perşembe"
        } else if gunSayisi == 5 {
            gunStringi = "Cuma"
        } else if gunSayisi == 6 {
            gunStringi = "Cumartesi"
        } else {
            gunStringi = "Pazar"
        }
    return print(gunSayisi, ". Gün:", gunStringi)
    } else {
        print("Lütfen 0'dan Büyük Bir Sayı Giriniz!")
    }
}
gunBul(gunSayisi: 5)


// Aynı örneğin switch case kullanımı ile yapalım
var gunStringi = ""
var gunSayisi = 2

switch gunSayisi {
    case 1:
        gunStringi = "Pazartesi"
    case 2:
        gunStringi = "Salı"
    case 3:
        gunStringi = "Çarşamba"
    case 4:
        gunStringi = "Perşembe"
    case 5:
        gunStringi = "Cuma"
    case 6:
        gunStringi = "Cumartesi"
    default:
        gunStringi = "Pazar"
    
}

print("Switch-Case: ", gunStringi)


/* Protokol Nedir?
 - Swift'te "protocol" (protokol), bir sınıf, yapı veya enum gibi belirli bir türün davranışlarını belirlemek için kullanılan bir yapıdır.
 - Protokoller, belirli bir metod, özellik veya diğer gereksinimlerin bir kombinasyonunu tanımlayarak bir "arayüz" oluştururlar.
 -
 */

// "Karakter" adında bir protokol tanımlandı. Herhangi bir tür, bu protokolü uygulayarak,saldiriGucu adında özelliği ve savasBaslat() adında bir metodunu sağlamak zorundadır.

protocol Karakter {
    var saldiriGucu: Int {get}
    func savasBaslat()
}
// Struct'lar kalıtımı sınıflandan alamıyor fakat protokollerden alabiliyor.

struct Batman : Karakter {

    var saldiriGucu: Int = 100
    
    func savasBaslat() {
        print("Savaş Başladı")
    }
}

// Sınıflarda hem kalıtım hem de da protokol kullanılabilir

class Animal {
    func running(){
        print("Koşuyor")
    }
}

class Cat: Animal, Karakter{
    var saldiriGucu: Int = 20
    
    func savasBaslat() {
        print("Savaş Başladi")
    }
}
let dobby = Cat()
dobby.running()
print("Saldiri Gücü: ", dobby.saldiriGucu)
dobby.savasBaslat()




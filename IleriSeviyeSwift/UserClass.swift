//
//  UserClass.swift
//  IleriSeviyeSwift
//
//  Created by iOS-Lab11 on 29.05.2024.
//

import Foundation

class UserClass {
    
    var isim : String
    var yas : Int
    var meslek : String
    
    //init yapma işlemi eğer yapılmazsa hata verir
    init(isim : String, yas : Int, meslek : String) {
        self.isim = isim
        self.yas = yas
        self.meslek = meslek
    }
    
    func yasiArttir(){
        self.yas += 1
    }
}

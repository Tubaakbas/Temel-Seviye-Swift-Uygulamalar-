//
//  UserStruct.swift
//  IleriSeviyeSwift
//
//  Created by iOS-Lab11 on 29.05.2024.
//

import Foundation

struct UserStruct {
    
    //init yapmaya gerek yok nesne oluştuğunda isim, yaş ve meslek bilgilerini ister
    
    var isim : String
    var yas : Int
    var meslek : String
    
    // fun yasiArttir() şekilnde yazınca hata verdiği için mutating eklendi
    mutating func yasiArttir(){
        self.yas += 1
    }
}

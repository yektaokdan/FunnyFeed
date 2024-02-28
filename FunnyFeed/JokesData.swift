//
//  JokesData.swift
//  FunnyFeed
//
//  Created by yekta on 28.02.2024.
//

import Foundation

struct Welcome:Identifiable,Codable{
    let id=UUID()
    let type :String
    let value : [Value]
}


struct Value:Identifiable, Codable{
    let id:Int
    let joke:String
    let categories : [String]
}

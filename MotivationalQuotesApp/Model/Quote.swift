//
//  Quote.swift
//  MotivationalQuotesApp
//
//  Created by mac on 9/25/21.
//

import Foundation

class Quote: Identifiable, Decodable{
    
    var id: UUID?
    var name : String
    var image: String
    var quotes: [String]
    
    
}

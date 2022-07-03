//
//  Quote.swift
//  MotivationalQuotesApp
//
//  Created by Tony-eniola on 9/25/21.
//

import Foundation

class Quote: Identifiable, Decodable{
    
    var id: UUID?
    var name : String
    var image: String
    var quotes: [String]  // Because of the way this array is(it directly contains string and not a custom data type), you need to use an index based foreach to loop through it's element, if it was containing an array of a custom data type eg  var quotes: [Quotes], you could use a foreach based on the viewmodel or model to loop throught it.
    
    
}

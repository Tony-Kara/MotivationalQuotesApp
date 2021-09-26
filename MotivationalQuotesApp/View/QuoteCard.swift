//
//  QuoteCard.swift
//  MotivationalQuotesApp
//
//  Created by mac on 9/26/21.
//

import SwiftUI

struct QuoteCard: View {
    var quotecard: Quote
    
    var body: some View {
        if quotecard.quotes.count > 0 {
        Text(quotecard.quotes[0])  // This fetches only the first element in the array of quotes, the first row of string
            .font(Font.custom("Avenir Heavy", size: 20))
            .fontWeight(.bold)
            
            // Name
            Text("- " + quotecard.name)
            
    }
    }
}

struct QuoteCard_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        QuoteCard(quotecard: model.qoutes[0])
    }
}

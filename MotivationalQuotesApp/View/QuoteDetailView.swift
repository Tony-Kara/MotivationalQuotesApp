//
//  QuoteDetailView.swift
//  MotivationalQuotesApp
//
//  Created by mac on 9/25/21.
//

import SwiftUI

struct QuoteDetailView: View {
    var quote: Quote
    var body: some View {
        VStack{
            ScrollView {
                
                VStack(alignment: .leading, spacing: 20){
                   
                       Text(quote.name)
                        .padding(.bottom, 5)
                        .font(Font.custom("Avenir Heavy", size: 25))
                         
                    
                    ForEach(0..<quote.quotes.count){ index in
                        
                        Text(quote.quotes[index])
                    }
                    .padding(.bottom, 5)
                   
                   Spacer()
                    
                }
                .padding()
                
            }
        }
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        QuoteDetailView(quote: model.qoutes[0])
    }
}

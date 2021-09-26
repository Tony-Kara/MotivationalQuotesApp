//
//  ContentView.swift
//  MotivationalQuotesApp
//
//  Created by mac on 9/25/21.
//

import SwiftUI

struct QuoteListView: View {
    @EnvironmentObject var model: QuoteModel
    var quoteModel: Quote
    var body: some View {
        
       
        
        NavigationView {
            VStack {
                Text("Quotes")
                        .bold()
                        .padding(.top, 40)
                        .font(Font.custom("Avenir Heavy", size: 24))
                    
                    ScrollView {
                        
                        LazyVStack {
                          
                            ForEach(model.qoutes){ q in
                                
                                NavigationLink(
                                    destination: QuoteDetailView(quote: q),
                                    label: {
                                        ZStack {
                                            Image(q.image)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .cornerRadius(15)
                                            
                                            VStack(alignment: .leading, spacing: 10.0) {
                                              
                                                    QuoteCard(quotecard: q)
                                            }
                                            .padding([.top, .leading], 20.0)
                                            .shadow(color: .black, radius: 10, x: 2, y: 2)
                                            
                                        }
                                        .foregroundColor(Color.white)
                                        .frame(width: .none, height: 400, alignment: .center)
                                        .clipped()
                                        .cornerRadius(15)
                                        .padding([.leading, .trailing])
                                    })
                                
                            }
                       }
                        
                    }
            }
            .navigationBarHidden(true)
            .padding(.leading)
        }
      
       
    }
}

struct QuoteListView_Previews: PreviewProvider {
    static var previews: some View {
       let model = QuoteModel()
        QuoteListView( quoteModel: model.qoutes[0])
            .environmentObject(QuoteModel())
    }
}

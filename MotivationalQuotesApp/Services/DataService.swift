//
//  DataService.swift
//  MotivationalQuotesApp
//
//  Created by mac on 9/25/21.
//

import Foundation

class DataService {
    
    static  func getLocalData() -> [Quote] {
          
      // Parse local json file
      
      // Get a url path to the json file
      let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
      
      // Check if pathString is not nil, otherwise...
      guard pathString != nil
      else {
          return [Quote]()
      }
      
      // Create a url object
      let url = URL(fileURLWithPath: pathString!)
      
      do {
          // Create a data object
          let data = try Data(contentsOf: url)
          
          // Decode the data with a JSON decoder
          let decoder = JSONDecoder()
          
          do {
              
              let quoteData = try decoder.decode([Quote].self, from: data)
              
              // Add the unique IDs
              for r in quoteData { // loop thorugh the data and add a UUID number to each object in the array, this is important since this particular key value pair was not present in the original API whch is the local directory and will have caused an error.
                  r.id = UUID()
                 
              }
              
              // Return the quotes
              return quoteData
          }
          catch {
              // error with parsing json
              print(error)
          }
      }
      catch {
          // error with getting data
          print(error)
      }
      
      return [Quote]()
          
          
          
      }
    
    
    
    
}

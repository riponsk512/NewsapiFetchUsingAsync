//
//  DataFetch.swift
//  NewsapiFetchUsingAsync
//
//  Created by Ripon sk on 09/10/22.
//

import Foundation
import UIKit
final class DataFetch{
    public static var shared = DataFetch()
    func dataFetch() async->Results?{
        guard let url = URL(string: "https://newsapi.org/v2/everything?q=tesla&from=2022-09-09&sortBy=publishedAt&apiKey=e115e6ab261f450f96461da99307275c") else{
            return nil
        }
        do{
            let (data,_) = try await URLSession.shared.data(from: url)
            return try JSONDecoder().decode(Results.self, from: data)
            
        }catch{
            return nil
        }
        
    }
}

//
//  ApiManager.swift
//  FipeMVVM
//
//  Created by Michel dos Santos on 30/11/20.
//
import UIKit


class ApiManager{
    
    var apiBaseUrl = "https://parallelum.com.br/fipe/api/v1"
    
    func loadData(path: string , onComplete: @escaping (Bool) -> Void) {
            AF.request("\(apiBaseUrl)/\(path)").responseJSON { response in
                if let json = response.value as? [[String: Any]] {
                    var brands = [Brand]()
                    for item in json {
                        brands.append(Brand(fromDictionary: item))
                    }
                    self.arrayBrands = brands
                    onComplete(true)
                    return
                }
                onComplete(false)
            }
        }
}

//
//  ApiManager.swift
//  FipeMVVM
//
//  Created by Michel dos Santos on 30/11/20.
//
import UIKit
import Alamofire


class ApiManager{
    
    var arrayDate = [BaseClassAPI]()
    
    var apiBaseUrl = "https://parallelum.com.br/fipe/api/v1"
    
    func loadData(path: String , onComplete: @escaping (Bool) -> Void) {
            AF.request("\(apiBaseUrl)/\(path)").responseJSON { response in
                if let json = response.value as? [[String: Any]] {
                    var brands = [BaseClassAPI]()
                    for item in json {
                        brands.append(BaseClassAPI(fromDictionary: item))
                    }
                    self.arrayDate = brands
                    onComplete(true)
                    return
                }
                onComplete(false)
            }
        }
}

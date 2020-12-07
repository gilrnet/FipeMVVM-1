//
//  BaseClassAPI.swift
//  FipeMVVM
//
//  Created by Michel dos Santos on 30/11/20.
//

import Foundation

class BaseClassAPI: NSObject {
    var id: String!
    var name: String!

    init(fromDictionary dictionary: [String: Any]) {
        id = dictionary["codigo"] as? String
        name = dictionary["nome"] as? String

        if id == nil {
            if let intId = dictionary["codigo"] as? Int {
                id = "\(intId)"
            }
        }
    }

}

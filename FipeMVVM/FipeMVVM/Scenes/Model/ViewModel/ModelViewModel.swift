//
//  ModelViewModel.swift
//  FipeMVVM
//
//  Created by Michel dos Santos on 05/12/20.
//

import Foundation

class ModelViewModel{
    
   static var id: String = "1"
    
    var apiManager = ApiManager()
    
    var arrayModel = [BaseClassAPI]()
    
    func getModel (onComplete: @escaping (Bool) -> Void)
    {
        apiManager.loadDataModel(path:"carros/marcas/\(ModelViewModel.id)/modelos") { sucess in
            self.arrayModel = self.apiManager.arrayDate
            onComplete(true)
            return
        }
        
        onComplete(false)
        return
    }
    
    func getArrayModel() -> [BaseClassAPI]{
        return arrayModel
    }
    
    func getNameModel(index: Int) -> String{
        
        return arrayModel[index].name
    }
    
    func getIdModel(index: Int) -> String{
        return arrayModel[index].id
    }
    
    
}

//
//  YearModelViewModel.swift
//  FipeMVVM
//
//  Created by Michel dos Santos on 06/12/20.
//

import Foundation

class YearModelViewModel{
    
    static var idBrand: String = "2"
    static var idModel: String = "2"
    
    var apiManager = ApiManager()
    
    var arrayYearModel = [BaseClassAPI]()
    
    func getYearModel (onComplete: @escaping (Bool) -> Void)
    {
        apiManager.loadData(path: "carros/marcas/\(YearModelViewModel.idBrand)/modelos/\(YearModelViewModel.idModel)/anos") { sucess in
            self.arrayYearModel = self.apiManager.arrayDate
            onComplete(true)
            return
        }
        
        onComplete(false)
        return
    }
    
    func getArrayYearModel() -> [BaseClassAPI]{
        return arrayYearModel
    }
    
    func getYear(index: Int) -> String{
        
        return arrayYearModel[index].name
    }
    
   
    
    func getIdYear(index: Int) -> String{
        return arrayYearModel[index].id
    }
    
    func getIdBrand() -> String{
        return YearModelViewModel.idBrand
    }
}
    
    


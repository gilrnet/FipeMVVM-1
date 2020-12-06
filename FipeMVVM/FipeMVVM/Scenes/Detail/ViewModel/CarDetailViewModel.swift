//
//  CarDetailViewModel.swift
//  FipeMVVM
//
//  Created by Michel dos Santos on 06/12/20.
//

import Foundation


class CarDetailViewModel {
    
    static var idBrand: String = "1"
    static var idModel: String = "1"
    static var idCarYear: String = "1"
    
    
    var apiManager = ApiManager()
    
    var carDetail: CarDetail?
    
    func getCarDetail (onComplete: @escaping (Bool) -> Void)
    {
        apiManager.loadDataCarDetail (path: "/carros/marcas/\(CarDetailViewModel.idBrand)/modelos/\(CarDetailViewModel.idModel)/anos/\(CarDetailViewModel.idCarYear)") { sucess in
            
            self.carDetail = self.apiManager.carDetail
            onComplete(true)
            return
        }
        
        onComplete(false)
        return
    }
    
   
    
    func getCarModel() -> String{
        return "MODELO:\((carDetail?.modelo)!)"
    }
    
    func getCarBrand() -> String{
        return "MARCA:\((carDetail?.marca)!)"
    }
    
    func getCarYear() -> String{
        return String("ANO: \((carDetail?.anoModelo)!)")
    }
    
    func getCarValue() -> String{
        return "R$: \((carDetail?.valor)!)"
    }
    
}
    
    


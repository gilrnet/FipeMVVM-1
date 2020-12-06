//
//  CarDetailViewController.swift
//  FipeMVVM
//
//  Created by Michel dos Santos on 06/12/20.
//

import UIKit

class CarDetailViewController: UIViewController {
    
    
    
    @IBOutlet var labelModel:UILabel!
    @IBOutlet var labelBrand:UILabel!
    @IBOutlet var labelValue:UILabel!
    @IBOutlet var labelyear:UILabel!
    
    var viewModel = CarDetailViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.getCarDetail { seucess in
            if seucess{
                self.setupLabels()
            }
            
        }

   
    }
    
    func setupLabels(){
        labelBrand.text = viewModel.getCarBrand()
        labelModel.text = viewModel.getCarModel()
        labelyear.text = viewModel.getCarYear()
        labelValue.text = viewModel.getCarValue()
    }

}

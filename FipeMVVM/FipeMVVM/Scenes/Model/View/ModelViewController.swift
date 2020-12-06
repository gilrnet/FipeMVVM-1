//
//  ModelViewController.swift
//  FipeMVVM
//
//  Created by Michel dos Santos on 05/12/20.
//

import UIKit

class ModelViewController: UIViewController {
    @IBOutlet weak var tableViewModel: UITableView!
    
   var viewModel = ModelViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewModel.delegate = self
        tableViewModel.dataSource = self
        
        viewModel.getModel { sucess in
            self.tableViewModel.reloadData()
        }
        
    }

}

extension ModelViewController: UITableViewDelegate{
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let screenAddMovie = UIStoryboard(name: "Model", bundle: nil).instantiateInitialViewController() as? ModelViewController{
//
//                    navigationController?.pushViewController(screenAddMovie, animated: true)
//
//                }
//    }
}

extension ModelViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel.getArrayModel().count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = viewModel.getNameModel(index: indexPath.row)
        
        return cell
    }

}


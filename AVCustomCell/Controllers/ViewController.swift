//
//  ViewController.swift
//  AVCustomCell
//
//  Created by Artjoms Vorona on 13/11/2019.
//  Copyright © 2019 Artjoms Vorona. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cars = Car.createCarList()

    @IBOutlet var carsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func funcAddNewItemTapped(_ sender: UIBarButtonItem) {
        addNewItem()
    }
    
    func addNewItem() {
        let alert = UIAlertController(title: "Add new item", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Enter maker"
        }
        alert.addTextField { (textField) in
            textField.placeholder = "Enter model"
        }
        alert.addTextField { (textField) in
            textField.placeholder = "Enter type"
        }
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { (action) in
            let newCar = Car(maker: (alert.textFields?[0].text)!, model: (alert.textFields?[1].text)!, type: (alert.textFields?[2].text)!)
            self.cars.insert(newCar, at: 0)
            self.carsTableView.reloadData()
        }))
        self.present(alert, animated: true, completion: nil)
    }
    

}//end class

//MARK: Extensions
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell", for: indexPath ) as? CarTableViewCell else {
            return UITableViewCell()
        }
        
        let car = cars[indexPath.row]
        cell.setLabelsText(with: car)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let alert = UIAlertController(title: "Are sure you want to delete this item?" , message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (_) in
                self.cars.remove(at: indexPath.row)
                tableView.reloadData()
            }))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}


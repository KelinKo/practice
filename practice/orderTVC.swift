//
//  orderTVC.swift
//  practice
//
//  Created by kelinko on 2019/5/19.
//  Copyright © 2019 kelinko. All rights reserved.
//

import UIKit

class orderTVC: UITableViewController {
    
    var someFood = [Food]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        someFood.append(Food(name: "大麥克", price: 72, image:UIImage(named: "1")! ))
        someFood.append(Food(name: "雙層牛肉吉士堡", price: 62, image:UIImage(named: "2")! ))
        someFood.append(Food(name: "安格斯黑牛堡", price: 99, image: UIImage(named: "3")!))
        someFood.append(Food(name: "嫩煎雞腿堡", price: 82, image: UIImage(named: "4")!))
        someFood.append(Food(name: "麥香雞", price: 49, image: UIImage(named: "5")!))
        someFood.append(Food(name: "麥克雞塊（6塊）", price: 59, image: UIImage(named: "6")!))
        someFood.append(Food(name: "麥克雞塊（10塊）", price: 99, image: UIImage(named: "7")!))
        someFood.append(Food(name: "勁辣雞腿堡", price: 72, image: UIImage(named: "8")!))
        someFood.append(Food(name: "麥脆雞腿(2塊）", price: 110, image: UIImage(named: "9")!))
        someFood.append(Food(name: "麥脆雞翅（2塊）", price: 90, image: UIImage(named: "10")!))
        someFood.append(Food(name: "黃金起司豬排堡", price: 52, image: UIImage(named: "11")!))
        someFood.append(Food(name: "麥香魚", price: 49, image: UIImage(named: "12")!))
        someFood.append(Food(name: "千島黃金蝦堡", price: 69, image: UIImage(named: "13")!))
        someFood.append(Food(name: "BLT安格斯黑牛堡", price: 109, image: UIImage(named: "14")!))
        someFood.append(Food(name: "BLT辣脆雞腿堡", price: 109, image: UIImage(named: "15")!))
        someFood.append(Food(name: "BLT嫩煎雞腿堡", price: 109, image: UIImage(named: "16")!))
        someFood.append(Food(name: "蕈菇安格斯黑牛堡", price: 119, image: UIImage(named: "17")!))
        someFood.append(Food(name: "凱薩脆雞沙拉", price: 99, image: UIImage(named: "18")!))
        someFood.append(Food(name: "義式烤雞沙拉", price: 99, image: UIImage(named: "19")!))
        
        
        
        


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
   


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return someFood.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderCell", for: indexPath) as! orderTVCell
        let food = someFood[indexPath.row]
        cell.foodImage.image = food.image
        cell.foodResult.text = food.name

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detail = someFood[indexPath.row]
            let detailVC = segue.destination as! ProductDetailVC
            detailVC.something = detail
        }
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

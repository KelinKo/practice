//
//  sideTableViewController.swift
//  practice
//
//  Created by kelinko on 2019/5/19.
//  Copyright © 2019 kelinko. All rights reserved.
//

import UIKit

class sideTableViewController: UITableViewController {
    
    var sideFood = [Side]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideFood.append(Side(name:"經典配餐", price: 50, image: UIImage(named: "A")!))
        sideFood.append(Side(name:"清爽配餐", price: 50, image: UIImage(named: "B")!))
        sideFood.append(Side(name:"酷炫配餐", price: 65, image: UIImage(named: "C")!))
        sideFood.append(Side(name:"勁脆配餐", price: 68, image: UIImage(named: "D")!))
        sideFood.append(Side(name:"搖搖豪麥配餐", price: 79, image: UIImage(named: "E")!))
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sideFood.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sideCell", for: indexPath) as! sideTableViewCell
        let side = sideFood[indexPath.row]
        cell.sideImage.image = side.image
        cell.sideResult.text = side.name

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detail = sideFood[indexPath.row]
            let detailVC = segue.destination as! sideViewController
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

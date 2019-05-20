//
//  ResultTableViewController.swift
//  practice
//
//  Created by kelinko on 2019/5/19.
//  Copyright © 2019 kelinko. All rights reserved.
//

import UIKit

class ResultTableViewController: UITableViewController {
    
    var order = [Order]()

    override func viewDidLoad() {
        
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        fetchOrder()
        
    }
 
    func fetchOrder(){
        let urlString = "https://sheetdb.io/api/v1/9w62zgu0ygqaq"
        if let url = URL(string: urlString){
            let task = URLSession.shared.dataTask(with: url) { (data, respone, error) in
                if let data = data {
//                    do{
//                        let decoder = JSONDecoder()
//                         let order = try decoder.decode([Order].self, from: data)
//                        print("good")
//                    }catch{
//                        print(error)
//                    }
                    let decoder = JSONDecoder()
                    if let order = try?decoder.decode([Order].self, from: data){
                        self.order = order
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                            print("HI")
                        }
                    }
                    else{
                        print("error")
                    }
                    
                }
            }
            task.resume()
        
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return order.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultCell", for: indexPath) as! ResultTableViewCell
        let result = order[indexPath.row]
        cell.lbMain.text = result.name
        cell.lbSide.text = result.side
        cell.lbDrink.text = result.drink

        // Configure the cell...

        return cell
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

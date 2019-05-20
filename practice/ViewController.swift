//
//  ViewController.swift
//  practice
//
//  Created by kelinko on 2019/5/19.
//  Copyright © 2019 kelinko. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    
   
    
    @IBOutlet weak var mainMeal: UITextField!
 
    @IBOutlet weak var drinkSegemnt: UISegmentedControl!
    
    @IBOutlet weak var sideSegemnt: UISegmentedControl!
    
    @IBOutlet weak var orderPiker: UIPickerView!
    
    var drink = ""
    var sideMeal = ""
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    
    @IBAction func submit(_ sender: Any) {
        
        let url = URL(string: "https://sheetdb.io/api/v1/9w62zgu0ygqaq")
        var urlRequest = URLRequest(url: url!)
        urlRequest.httpMethod = "POST"
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
     
        let main = mainMeal.text ?? ""
        selectSideMeal()
        selectDrink()
        let order = Order(name: main, side: sideMeal, drink: drink)
        let orderData = OrderData(data:[order])
        if let data = try? JSONEncoder().encode(orderData) {
            let task = URLSession.shared.uploadTask(with: urlRequest, from: data) { (retData, response, error) in
                let decoder = JSONDecoder()
                if let retData = retData, let dic = try? decoder.decode([String: Int].self, from: retData), dic["created"] == 1 {
                    
                    DispatchQueue.main.async {
                        self.navigationController?.popViewController(animated: true)
                    }
                    
                } else {
                    print("error")
                }
                
            }
            task.resume()
        }
        
    }
        
        
        
    
    
    @IBAction func clickClear(_ sender: Any) {
        mainMeal.text = ""
            }
    
    
    
    func selectDrink(){
        let selectedIndex = drinkSegemnt.selectedSegmentIndex
        switch selectedIndex {
        case 0:
            drink = "可樂"
        case 1:
            drink = "雪碧"
        case 2:
            drink = "檸檬紅茶"
        case 3:
            drink = "綠茶"
        case 4:
            drink = "咖啡"
        default:
            break
        }
        
    }
    
    func selectSideMeal(){
        let selectedIndex = drinkSegemnt.selectedSegmentIndex
        switch selectedIndex {
        case 0:
            sideMeal = "經典配餐"
        case 1:
            sideMeal = "清爽配餐"
        case 2:
            sideMeal = "酷炫配餐"
        case 3:
            sideMeal = "勁脆配餐"
        case 4:
            sideMeal = "豪麥配餐"
        default:
            break
        }
        
    }
    
   
    
    
    


}


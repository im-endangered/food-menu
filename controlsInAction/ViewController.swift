//
//  ViewController.swift
//  controlsInAction
//
//  Created by admin on 07/11/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var switchLabel: UILabel!
    
    @IBOutlet weak var findingLabel: UILabel!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var priceSlider: UISlider!
    @IBOutlet weak var vegSwitch: UISwitch!
    @IBOutlet weak var priceDisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        findingLabel.isHidden=true
        priceDisplay.text="Rs.100"
        // Do any additional setup after loading the view.
    }
    var vegItems=["Panir Masala":100,"Aloo fry":50,"Veg momo":129,"Bhatmas saadeko":200,"bara":130]
    var nonVegItems=["Chicken masala":300,"Chicken momo":180,"Chhoila":150,"Chicken sekwa":250]
    @IBAction func searchButton(_ sender: Any) {
        findingLabel.isHidden=false
        var text=""
//            var filter=Int(priceSlider.value)
        for (k,v) in vegItems{
            if v <= Int(priceSlider.value) {
                text+="\(k) : \(v)\n"
            }
        }
        if(vegSwitch.isOn){
            if text==""{
                text="Oops! no results found. Please update your search"
            }
            findingLabel.text=text
        }
        else{
            for (k,v) in nonVegItems{
                if v <= Int(priceSlider.value) {
                    text+="\(k) : \(v)\n"
                }
            }
            if text==""{
                text="Oops! no results found. Please update your search"
            }
            findingLabel.text=text
        }
    }
    
    @IBAction func priceFunction(_ sender: Any) {
        priceDisplay.text="Rs."+String(Int(priceSlider.value))
    }
}


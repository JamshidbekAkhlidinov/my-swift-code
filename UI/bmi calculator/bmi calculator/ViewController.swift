//
//  ViewController.swift
//  bmi calculator
//
//  Created by ustadev.uz on 22/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    private var heightValue:Double = 0.0
    private var weightValue:Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChanche(_ sender: UISlider) {
        //3 - 100 %
        //1.5 - 50 %
        heightValue = Double(sender.value  * 3)
        heightLabel.text = String(format: "%.1f",heightValue) + "m"
    }
    @IBAction func weightChanche(_ sender: UISlider) {
        //500 - 100 %
        //100 - 50 %
        weightValue = Double(sender.value * 100 * 2)
        weightLabel.text = String(format:"%.1f",weightValue) + "kg"

    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        
        let bmi:Double = weightValue / (pow(heightValue, 2))
        
        var message = ""
        
        if bmi < 18.5 {
            message = "Ko’proq so’g’lom ovqat yeng"
        }else if bmi > 18.5 && bmi < 24.9 {
            message = "Siz ayni me’yordasiz"
        }else if bmi >  24.9 {
            message = "Kamroq ovqat yeng"
        }else{
            message = "hisoblay olmadim."
        }
        
        
//        let alert = UIAlertController(title: "Result", message: message, preferredStyle: .alert)
//        let action = UIAlertAction(title: "OK", style: .default)
//        
//        alert.addAction(action)
//        present(alert, animated: true)
        
        if let successView = storyboard?.instantiateViewController(withIdentifier:"successView") as? SuccessViewController {
            successView.message = message
            dismiss(animated: true)
            present(successView, animated: true,completion: nil)
        }
    }
}


class SuccessViewController:UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    var message:String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text  = message
    }
    
    @IBAction func closeAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}


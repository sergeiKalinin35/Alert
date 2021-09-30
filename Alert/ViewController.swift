//
//  ViewController.swift
//  Alert
//
//  Created by Sergey on 30.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var alertLabel: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//MARK: - Простой Алерт
    @IBAction func AlertButton(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Внимание!",
                                      message: "Нажми кнопку для закрытия окна",
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }
    
//MARK: - Второй вариант

    
    @IBAction func alertTwo(_ sender: UIButton) {
        
        alertLabel.text = "🧸 Улыбку "
        alert(title: "Вариант ", message: "Номер Два", style: .alert)
        
        
    }
    
    func alert(title: String, message: String, style: UIAlertController.Style){
        
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: style)
        
        
      
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default) { (action) in
            
            let text = alert.textFields?.first
            self.alertLabel.text! += (text?.text!)! + (" 🧸")
            
        })
        
        alert.addTextField { textField in }
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }


//MARK: - Третий вариант от SEaN Allen

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }

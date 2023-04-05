//
//  ViewController.swift
//  database_Today_new
//
//  Created by R&W on 05/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var t1: UITextField!
    @IBOutlet weak var t2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        Sqlite.createFile()
    }

    @IBAction func savebuttonAction(_ sender: Any) {
        
        if let x = t1.text , let y = Int(x) {
            Sqlite.addData( id: y,name: t2.text!)
        }
    }
    @IBAction func DeleteButtonAction(_ sender: Any) {
        if let x = t1.text , let y = Int(x) {
            Sqlite.delteData( id: y,name: t2.text!)
        }
        
    }
    @IBAction func ShowButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier:"ViewController2" ) as! ViewController2
        navigationController?.pushViewController(navigation, animated: true)
    }
    
}


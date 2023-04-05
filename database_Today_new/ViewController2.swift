//
//  ViewController2.swift
//  database_Today_new
//
//  Created by R&W on 05/04/23.
//

import UIKit

class ViewController2: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    var arr2 = Sqlite.getData()

    @IBOutlet weak var tableviewFrom: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.label1.text = arr2[indexPath.row].id.description
        cell.label2.text = arr2[indexPath.row].name
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

   

}

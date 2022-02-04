//
//  TableViewController.swift
//  XIBFinal
//
//  Created by 탁제원 on 2022/02/04.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let cellIdentifier = "tableViewCell"
    let cellInfo = ["집에", "가고", "싶다", "야호", "내일은", "주말@!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        self.navigationItem.title = "테이블뷰"
        
        let tableNib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(tableNib, forCellReuseIdentifier: self.cellIdentifier)
    }
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier) as? TableViewCell else {
            return UITableViewCell()
        }
        
        cell.cellLabel.text = cellInfo[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
}

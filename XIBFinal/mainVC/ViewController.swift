//
//  ViewController.swift
//  XIBFinal
//
//  Created by 탁제원 on 2022/02/04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.title = "MAIN VIEW"
    }

    @IBAction func toTableView(_ sender: UIButton) {
        let tableViewController = TableViewController(nibName: "TableViewController", bundle: nil)
        self.navigationController?.pushViewController(tableViewController, animated: true)
    }
    
    @IBAction func toCollectionView(_ sender: UIButton) {
        let collectionViewController = CollectionViewController(nibName: "CollectionViewController", bundle: nil)
        self.present(collectionViewController, animated: true, completion: nil)
    }
}


//
//  ViewController.swift
//  MarvelApi
//
//  Created by Mithun Samy on 18/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTV()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.title = "In pending"
        // Do any additional setup after loading the view.
    }
    
    func configureTV() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.tableFooterView = UIView()
        tableView.tableFooterView = UIView()
        tableView.backgroundColor = .systemGray5
        if #available(iOS 15.0, *) {
            tableView.sectionHeaderTopPadding = 0
            tableView.sectionFooterHeight = 0
        } else {
            // Fallback on earlier versions
        }
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableviewCellID")
//        tableView.register(UINib(nibName: "HeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "HeaderTableViewCellID")
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headView: HeaderView = HeaderView.instanceFromNib() as! HeaderView
//        headView.headLbl.backgroundColor = UIColor(named: "FiltersSeparatorColor")
        headView.headLbl.text = "Section Header"
        return headView
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return 5
        } else {
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableviewCellID", for: indexPath) as! CustomTableViewCell
        
        return cell
    }
    
    
}

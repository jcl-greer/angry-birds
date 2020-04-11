//
//  ViewController.swift
//  AngryBirds
//
//  Created by Chelsea Troy on 4/10/20.
//  Copyright © 2020 Chelsea Troy. All rights reserved.
//

import UIKit

class BirdListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var flock: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.flock = ["Oriole", "Bluebird", "Blackbird", "Oriole", "Bluebird", "Blackbird","Oriole", "Bluebird", "Blackbird","Oriole", "Bluebird", "Blackbird","Oriole", "Bluebird", "Blackbird","Oriole", "Bluebird", "Blackbird","Oriole", "Bluebird", "Blackbird","Oriole", "Bluebird", "Blackbird","Oriole", "Bluebird", "Blackbird"]
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
}

extension BirdListViewController: UITableViewDataSource {
    //MARK: DataSource
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.flock.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "birdCell")!
        
        cell.textLabel?.text = self.flock[indexPath.row]
        
        return cell
    }
}

extension BirdListViewController: UITableViewDelegate {
    //MARK: Delegate
}


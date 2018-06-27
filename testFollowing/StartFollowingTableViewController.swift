//
//  StartFollowingTableViewController.swift
//  testFollowing
//
//  Created by Soemsak on 4/24/2561 BE.
//  Copyright © 2561 Soemsak. All rights reserved.
//

import UIKit

class StartFollowingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StartFollowingTableViewCell", for: indexPath) as! StartFollowingTableViewCell
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var totalHeight = 0.0
        let itemHeight = Constant.getItemWidth(boundWidth: tableView.bounds.size.width)
        let totalRow = ceil(Constant.totalItem / Constant.column)
        let totalTopBottomOffset = Constant.offset + Constant.offset
        let totalSpacing = CGFloat(totalRow - 1) * Constant.minLineSpacing
        totalHeight  = (Double((itemHeight * CGFloat(totalRow)) + totalTopBottomOffset + totalSpacing))
        return CGFloat(totalHeight)
    }

}

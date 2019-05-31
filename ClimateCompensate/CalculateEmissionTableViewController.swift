//
//  CalculateEmissionTableViewController.swift
//  ClimateCompensate
//
//  Created by Betina Andersson on 2019-05-30.
//  Copyright © 2019 Betina Andersson. All rights reserved.
//

import UIKit

class CalculateEmissionTableViewController: UITableViewController {
    let headercellid = "headercellid"
    let eatingcellid = "eatingcellid"
    let livingcellid = "livingcellid"
    let cartravelcellid = "cartravelcellid"
    let flighttravelcellid = "flighttravelcellid"
    let resultcellid = "resultcellid"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImageView = UIImageView(image: UIImage(named: "nature"))
        backgroundImageView.contentMode = .scaleAspectFill
        tableView.backgroundView = backgroundImageView
        
        //register cellls
        tableView.register(HeaderCell.self, forCellReuseIdentifier: headercellid)
        tableView.register(EatingCell.self, forCellReuseIdentifier: eatingcellid)
        tableView.register(LivingCell.self, forCellReuseIdentifier: livingcellid)
        tableView.register(CarTravelCell.self, forCellReuseIdentifier: cartravelcellid)
        tableView.register(FlightTravelCell.self, forCellReuseIdentifier: flighttravelcellid)
        tableView.register(ResultCell.self, forCellReuseIdentifier: resultcellid)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: headercellid, for: indexPath) as! HeaderCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            cell.backgroundColor = UIColor.clear
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: eatingcellid, for: indexPath) as! EatingCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            cell.backgroundColor = UIColor.clear
            return cell
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: livingcellid, for: indexPath) as! LivingCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            cell.backgroundColor = UIColor.clear
            return cell
        } else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: cartravelcellid, for: indexPath) as! CarTravelCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            cell.backgroundColor = UIColor.clear
            return cell
        } else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: flighttravelcellid, for: indexPath) as! FlightTravelCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            cell.backgroundColor = UIColor.clear
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: resultcellid, for: indexPath) as! ResultCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            cell.backgroundColor = UIColor.clear
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 200
        } else if indexPath.row == 1 {
            return 470
        } else if indexPath.row == 2 || indexPath.row == 3{
            return 220
        } else if indexPath.row == 5 {
            return 270
        }
        return 370
    }

}

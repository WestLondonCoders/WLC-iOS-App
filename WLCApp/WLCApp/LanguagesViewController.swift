//
//  LanguagesViewController.swift
//  WLCApp
//
//  Created by Ahmed El Bialy on 2017-09-09.
//  Copyright © 2017 WLC. All rights reserved.
//

import UIKit

class LanguagesViewController: UITableViewController {
    var languages = ["JavaScript","HTML/CSS","Python","Ruby","Java","Rails","Git","React","PHP","C","Scala","Swift","Pascal","Middleman","Go","C#","Vue"]

    var colours: [UIColor] = [.wlcYellow, .wlcTrueBlue, .wlcGreen, .wlcRed, .wlcBrown, .wlcRed, .wlcPurple, .wlcSkyBlue, .wlcNavy, .wlcDarkBlue, .wlcDarkPurple, .wlcRed, .wlcLimeGreen, .wlcYellow, .wlcTaroPurple, .wlcDarkPurple, .black]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 17
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.textLabel?.text = languages[indexPath.row]
        cell.backgroundColor = colours[indexPath.row]
        cell.textLabel?.textColor = UIColor.white
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UIColor {
    static var wlcGreen: UIColor {
        return UIColor(red: 0/255, green: 225/255, blue: 159/255, alpha: 1)
    }

    static var wlcPurple: UIColor {
        return UIColor(red: 58/255, green: 2/255, blue: 162/255, alpha: 1)
    }

    static var wlcSkyBlue: UIColor {
        return UIColor(red: 1/255, green: 219/255, blue: 255/255, alpha: 1)
    }

    static var wlcNavy: UIColor {
        return UIColor(red: 95/255, green: 124/255, blue: 224/255, alpha: 1)
    }

    static var wlcTrueBlue: UIColor {
        return UIColor(red: 63/255, green: 141/255, blue: 203/255, alpha: 1)
    }

    static var wlcTaroPurple: UIColor {
        return UIColor(red: 136/255, green: 142/255, blue: 192/255, alpha: 1)
    }

    static var wlcDarkPurple: UIColor {
        return UIColor(red: 42/255, green: 1/255, blue: 133/255, alpha: 1)
    }

    static var wlcRed: UIColor {
        return UIColor(red: 255/255, green: 51/255, blue: 40/255, alpha: 1)
    }

    static var wlcLimeGreen: UIColor {
        return UIColor(red: 113/255, green: 247/255, blue: 90/255, alpha: 1)
    }

    static var wlcYellow: UIColor {
        return UIColor(red: 253/255, green: 19/255, blue: 47/255, alpha: 1)
    }

    static var wlcDarkBlue: UIColor {
        return UIColor(red: 0/255, green: 66/255, blue: 92/255, alpha: 1)
    }

    static var wlcBrown: UIColor {
        return UIColor(red: 87/255, green: 16/255, blue: 10/255, alpha: 1)
    }
}

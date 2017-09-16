//
//  LanguagesViewController.swift
//  WLCApp
//
//  Created by Ahmed El Bialy on 2017-09-09.
//  Copyright © 2017 WLC. All rights reserved.
//

import UIKit

class LanguagesViewController: UITableViewController {
    var languages = ["JavaScript","HTML/CSS","Python","Ruby","Java","Rails","Git","React","PHP","C","Scala","Swift","Haskell","Middleman","Go","C#","Vue"]
    
    let languageIcons = [UIImage(named:"js"), UIImage(named:"html"), UIImage(named:"python"), UIImage(named:"ruby"), UIImage(named: "java"), UIImage(named: "rails"), UIImage(named: "git"), UIImage(named: "react"), UIImage(named: "php"), UIImage(named: "c"), UIImage(named: "scala"), UIImage(named: "swift"), UIImage(named: "haskell"), UIImage(named:"middleman"), UIImage(named: "go"), UIImage(named: "csharp"), UIImage(named: "vue")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib(nibName: "LanguageTableViewCell", bundle: nil), forCellReuseIdentifier: "LanguageCell")
        
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
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "LanguageCell", for: indexPath) as? LanguageTableViewCell else {
            assertionFailure("🔥 LanguagesViewController: Failed to create languageTableViewCell")
            return UITableViewCell()
        }
        
        cell.titleLabel?.text = languages[indexPath.row]
        cell.iconImageView.image = languageIcons[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
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

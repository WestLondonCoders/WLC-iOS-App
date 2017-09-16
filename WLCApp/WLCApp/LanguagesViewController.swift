//
//  LanguagesViewController.swift
//  WLCApp
//
//  Created by Ahmed El Bialy on 2017-09-09.
//  Copyright © 2017 WLC. All rights reserved.
//

import UIKit

struct language {
    let name:String
    let icon:UIImage?
    let colour:UIColor
    let description:String
}

class LanguagesViewController: UITableViewController {
    
    let languagesArray = [language.init(name: "JavaScript", icon: UIImage(named:"js"), colour: UIColor.blue, description: "Language for the web"),
    language.init(name: "HTML/CSS", icon: UIImage(named:"html"), colour: UIColor.red, description: "Backbone of the web"),
    language.init(name: "Python", icon: UIImage(named:"python"), colour: UIColor.blue, description: "Popular machine learning"),
    language.init(name: "Ruby", icon: UIImage(named:"ruby"), colour: UIColor.blue, description: "Ruby is a wonderful language to write in. It's readable, not too fiddly and Rails is magical to build apps with."),
    language.init(name: "Java", icon: UIImage(named:"java"), colour: UIColor.blue, description: ""),
    language.init(name: "Rails", icon: UIImage(named:"rails"), colour: UIColor.blue, description: ""),
    language.init(name: "Git", icon: UIImage(named:"git"), colour: UIColor.blue, description: "Source control"),
    language.init(name: "React", icon: UIImage(named:"react"), colour: UIColor.blue, description: "Language for the web"),
    language.init(name: "PHP", icon: UIImage(named:"php"), colour: UIColor.blue, description: "Language for the web"),
    language.init(name: "C", icon: UIImage(named:"c"), colour: UIColor.blue, description: "Language for the web"),
    language.init(name: "Scala", icon: UIImage(named:"scala"), colour: UIColor.blue, description: "Language for the web"),
    language.init(name: "Swift", icon: UIImage(named:"swift"), colour: UIColor.blue, description: "Language for the web"),
    language.init(name: "Haskell", icon: UIImage(named:"haskell"), colour: UIColor.blue, description: "Language for the web"),
    language.init(name: "Middleman", icon: UIImage(named:"middleman"), colour: UIColor.blue, description: "Language for the web"),
    language.init(name: "Go", icon: UIImage(named:"go"), colour: UIColor.blue, description: "Language for the web"),
    language.init(name: "C#", icon: UIImage(named:"csharp"), colour: UIColor.blue, description: "Language for the web"),
    language.init(name: "Vue", icon: UIImage(named:"vue"), colour: UIColor.blue, description: "Language for the web")]
    
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
        let language = languagesArray[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "LanguageCell", for: indexPath) as? LanguageTableViewCell else {
            assertionFailure("🔥 LanguagesViewController: Failed to create languageTableViewCell")
            return UITableViewCell()
        }
        
        cell.titleLabel?.text = language.name //languages[indexPath.row]
        cell.iconImageView.image = language.icon
        cell.backgroundColour.backgroundColor = language.colour
        cell.descriptionLabel.text = language.description
        //To make the imageView circular.
        cell.iconImageView.layer.cornerRadius =             cell.iconImageView.frame.size.width / 2
        cell.iconImageView.clipsToBounds = true
        
        //To make the border a little circular
        cell.iconImageView.layer.borderWidth = 3.0
        cell.iconImageView.layer.borderColor = language.colour.cgColor
        //Change the background colour for the view

        
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

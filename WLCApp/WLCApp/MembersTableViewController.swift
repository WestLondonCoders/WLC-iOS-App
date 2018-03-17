//
//  MembersTableViewController.swift
//  WLCApp
//
//  Created by Ahmed El Bialy on 2018-01-06.
//  Copyright © 2018 WLC. All rights reserved.
//

import UIKit

class MembersTableViewController: UITableViewController {
    
    var members:[String] = []
    let membersUrl = "http://westlondoncoders.com/api/members"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getMembersData()
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func getMembersData(){
        let url = URL(string: membersUrl)
        let session = URLSession.shared
        let task = session.dataTask(with: url!) { (data, response, error) -> Void in
            //Handling if an error occurs to show a popup to the user
            if error != nil {
                let alertController = UIAlertController(title: "Oops", message: "We are sorry an error occured While getting the members data", preferredStyle: .alert)
                let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertController.addAction(OKAction)
                self.present(alertController, animated: true, completion: nil)
            } else {
                //No error, we can continue carrying on with gettting the members data
                do {
                    let myData = data!
                    let jsonArray = try JSONSerialization.jsonObject(with: myData, options: []) as! [[String:Any]]
                        for member in jsonArray {
                            let memberName = member["name"] as! String
                            self.members.append(memberName)
                            DispatchQueue.main.async {
                                self.tableView.reloadData()
                            }
                        }
                } catch {
                    print(error)
                }
            }
        }
        task.resume()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return members.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = members[indexPath.row]
        // Configure the cell...

        return cell
    }
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

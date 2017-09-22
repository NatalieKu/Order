//
//  LoversTableViewController.swift
//  test0810
//
//  Created by MEI KU on 2017/8/10.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit

class LoversTableViewController: UITableViewController {
    
    
    var gods = [God]()
    
    
    @IBOutlet var godNameLabel: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gods.append(God(name:"Anubis",godInfromation:"The god of embalming and the dead.", godImage: "Anubis"))
        
        gods.append(God(name:"Horus",godInfromation:"Horus was a god of the sky.", godImage:"Horus"))
        
        gods.append(God(name:"Osiris",godInfromation:"The god of the dead,rule of underworld.", godImage:"Osiris"))
        
        for (i, godNameLabel) in godNameLabel.enumerated() {
            godNameLabel.text = gods[i].name
            
        }
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
*/
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

        
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let editGodTableViewController = segue.destination as?EditGodTableViewController
        
        
        if let indexPath = tableView.indexPathForSelectedRow {
            editGodTableViewController?.god = gods[indexPath.row]
            
    
            
            
            
            // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
        
 }
}


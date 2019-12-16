//
//  FavoritesTableViewController.swift
//  DankApp2.0
//
//  Created by Rosa Rico Mendoza on 12/15/19.
//  Copyright © 2019 Cynthia Rico Mendoza. All rights reserved.
//

import UIKit

class FavoritesTableViewController: UITableViewController {
    
    @IBAction func backToPotFiles(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        if segue.destination is FavoriteStrainViewController
        {
            let selectedStrainData = segue.destination as? FavoriteStrainViewController
            selectedStrainData?.name = "Green Crack"
        }
    }
    
    var favStrains: [ StrainList ] {
        let favData1 = StrainData(name: "Green Crack", type: "Sativa", description: "Green Crack is a great daytime strain that may help consumers fight fatigue, stress, and depression.")
        
        let fav1 = StrainList(name: favData1.name, strains: [favData1])
        
        let favData2 = StrainData(name: "Og Kush", type: "Hybrid", description: "pending....")
        
        let fav2 = StrainList(name: favData2.name, strains: [favData2])
        
        return [fav1, fav2]
    }
    


    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return favStrains.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return favStrains[section].strains.count
    }
    
    // Returns the details for each meal section's food - name and description
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "strainCell", for: indexPath)
        
        let strain = favStrains[indexPath.section]
        let strainData = strain.strains[indexPath.row]
        
        cell.textLabel?.text = strainData.name
        cell.detailTextLabel?.text = strainData.type
        
        return cell
    }
    
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return favStrains[section].name
//    }
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

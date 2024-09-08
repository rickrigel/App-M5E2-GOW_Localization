//
//  HomeViewController.swift
//  GOW_Localization
//
//  Created by Azul Alfaro on 30/08/24.
//

import UIKit

class HomeViewController: UITableViewController {
    
    let menuOptions : [MenuOption] = [
                MenuOption(
                    title:"menu.option.videogames",
                    image:"gamecontroller.fill",
                    segue:"gamesSegue")
                , MenuOption(title:"menu.option.weapons",
                             image:"shield.fill",
                             segue:"weaponsSegue")
                , MenuOption(
                    title:"menu.option.characters",
                    image:"person.crop.rectangle.stack.fill",
                    segue:"charactersSegue")
                ,MenuOption(
                    title:"menu.option.merchandise",
                    image:"shippingbox.fill",
                    segue:"merchandiseSegue")
            ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menuOptions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GOWCell
        // Configure the cell...
//        cell.menuTitle.text = menuOptions[indexPath.row].title
        //Para localizar si extension:
//        cell.menuTitle.text = NSLocalizedString(menuOptions[indexPath.row].title, comment: "Comentario")
        //Con extension:
        cell.menuTitle.text = menuOptions[indexPath.row].title.localized
        cell.menuImage.image = UIImage(systemName: menuOptions[indexPath.row].image)
        return cell
    }
    
    //Usar la siguiente funcion si queremos dispara un segue: (did select row at)
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: menuOptions[indexPath.row].segue, sender: self)
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

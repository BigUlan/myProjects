//
//  FriendsTableViewController.swift
//  My_App
//
//  Created by Ulan Beishenkulov on 02.06.2022.
//

import UIKit

@IBDesignable

class FriendsTableViewController: UITableViewController {

    var friends = [
    
        Friend(name: "Маверик", image: UIImage(named: "maverick")),
        Friend(name: "Смоук", image: UIImage(named: "smoke")),
        Friend(name: "Мьют", image: UIImage(named: "mute")),
        Friend(name: "Маестро", image: UIImage(named: "maestro")),
        Friend(name: "Следж", image: UIImage(named: "sledge")),
        Friend(name: "Тэтчер", image: UIImage(named: "thatcher")),
        Friend(name: "Моззи", image: UIImage(named: "mozzie")),
        Friend(name: "Кавейра", image: UIImage(named: "caveira")),
        Friend(name: "Хибана", image: UIImage(named: "hibana")),
        Friend(name: "Доккаеби", image: UIImage(named: "dokkaebi")),
        Friend(name: "Руук", image: UIImage(named: "rook")),
        Friend(name: "Виджил", image: UIImage(named: "vigil")),
        Friend(name: "Эш", image: UIImage(named: "ash")),
    ]
    
    let reuseIdentifierFriendCell = "reuseIdentifierFriendCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierFriendCell, for: indexPath) as? FriendTableViewCell else {
            preconditionFailure("Error")
        }
                
        cell.friendsName.text = friends[indexPath.row].name
        cell.friendAvatar.image = friends[indexPath.row].image

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

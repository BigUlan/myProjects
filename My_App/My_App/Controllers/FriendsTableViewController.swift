//
//  FriendsTableViewController.swift
//  My_App
//
//  Created by Ulan Beishenkulov on 02.06.2022.
//

import UIKit

class FriendsTableViewController: UITableViewController {

    var friends = [
        Friend(name: "Маверик", lastname: "Ковальски", image: UIImage(named: "maverick")),
        Friend(name: "Смоук", lastname: "Браун", image: UIImage(named: "smoke")),
        Friend(name: "Мьют", lastname: "Джонсон", image: UIImage(named: "mute")),
        Friend(name: "Маестро", lastname: "Роберто", image: UIImage(named: "maestro")),
        Friend(name: "Следж", lastname: "Смит", image: UIImage(named: "sledge")),
        Friend(name: "Тэтчер", lastname: "Риверсон", image: UIImage(named: "thatcher")),
        Friend(name: "Моззи", lastname: "Диллинджер", image: UIImage(named: "mozzie")),
        Friend(name: "Кавейра", lastname: "Маллисо", image: UIImage(named: "caveira")),
        Friend(name: "Хибана", lastname: "Кавасаки", image: UIImage(named: "hibana")),
        Friend(name: "Доккаеби", lastname: "Кан", image: UIImage(named: "dokkaebi")),
        Friend(name: "Руук", lastname: "Поль", image: UIImage(named: "rook")),
        Friend(name: "Виджил", lastname: "Сон", image: UIImage(named: "vigil")),
        Friend(name: "Эш", lastname: "Шульман", image: UIImage(named: "ash")),
    ]

    
    var sortedFriends = [Character: [Friend]]()
    
    let reuseIdentifierFriendCell = "reuseIdentifierFriendCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.sortedFriends = sort(friends: friends)
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    private func sort(friends: [Friend]) -> [Character: [Friend]] {
        var friendsDict = [Character: [Friend]]()
        
        friends.forEach() { friend in
            
            guard let firstChar = friend.lastname.first else { return }
            
            if var thisCharFriends = friendsDict[firstChar] {
                thisCharFriends.append(friend)
                friendsDict[firstChar] = thisCharFriends
            } else {
                friendsDict[firstChar] = [friend]
            }
        }
        return friendsDict
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sortedFriends.keys.count
        }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        let keySorted = sortedFriends.keys.sorted()
        let friends = sortedFriends[keySorted[section]]?.count ?? 0
        
        return friends
    }
    

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierFriendCell, for: indexPath) as? FriendTableViewCell else {
            preconditionFailure("Error")
        }
        
        let firstChar = sortedFriends.keys.sorted()[indexPath.section]
        let friendNames = sortedFriends[firstChar]!
        let friend: Friend = friendNames[indexPath.row]
    
        cell.friendsName.text = friend.name
        cell.friendLastname.text = friend.lastname
        cell.friendAvatar.image = friend.image

        return cell
    }
  

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        String(sortedFriends.keys.sorted()[section])
    }
}

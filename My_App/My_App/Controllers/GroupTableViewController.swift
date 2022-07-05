//
//  GroupTableViewController.swift
//  My_App
//
//  Created by Ulan Beishenkulov on 16.06.2022.
//

import UIKit

class GroupTableViewController: UITableViewController {
    
    @IBOutlet var searchBarGroup: UISearchBar! {
        didSet {
            searchBarGroup.delegate = self
        }
    }
    var groups = [
        Group(name: "Философия", image: UIImage(named: "philosophy")),
        Group(name: "Менеджмент", image: UIImage(named: "menagement")),
        Group(name: "Юмор", image: UIImage(named: "smile")),
        Group(name: "Барахолка", image: UIImage(named: "shop"))
    ]

    var filteredGroups = [Group]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBarGroup.delegate = self
        
        filteredGroups = groups

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
        return filteredGroups.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroups", for: indexPath) as? GroupTableViewCell else {
            preconditionFailure("Error")
        }

        cell.groupName.text = filteredGroups[indexPath.row].name
        cell.groupImage.image = filteredGroups[indexPath.row].image

        return cell
    }
    
    @IBAction func addSelectedGroup(segue: UIStoryboardSegue) {
        
        if let sourceVC = segue.source as? GlobalGroupTableViewController,
            let indexPath = sourceVC.tableView.indexPathForSelectedRow {
                
                let newGroup = sourceVC.globalGroups[indexPath.row]
                
            if !groups.contains(where: {$0.name == newGroup.name}) {
                    groups.append(newGroup)
                    
                    tableView.reloadData()
                }
        }
    }
}

extension GroupTableViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText.isEmpty {
            filteredGroups = groups
        } else {
            filteredGroups = groups.filter {$0.name.contains(searchText)}
        }
        tableView.reloadData()
        
    }
    
}

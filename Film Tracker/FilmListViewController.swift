//
//  FilmListViewController.swift
//  Film Tracker
//
//  Created by Lotanna Igwe-Odunze on 3/2/19.
//

import UIKit

class FilmListViewController: UITableViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    private let fmgr = FilmManager.shared
    
    //Creates the table rows.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return fmgr.films.count
    }
    
    //Creates the cell.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "filmCell", for: indexPath)
        
        //Sets each cell's title to the title of each movie.
        cell.textLabel?.text = fmgr.films[indexPath.row]
        
        return cell
        
    }
}

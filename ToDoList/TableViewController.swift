//
//  TableViewController.swift
//  ToDoList
//
//  Created by Silvana de Pombo on 27/06/22.
//

import UIKit

var toDos : [ToDo] = []


class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        func createToDos() -> [ToDo] {

          let swift = ToDo()
          swift.name = "Learn Swift"
          swift.important = true

          let dog = ToDo()
          dog.name = "Walk the Dog"
          // important is set to false by default

          return [swift, dog]
        }
        
        func viewDidLoad() {
          super.viewDidLoad()

          toDos = createToDos()
        }

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return toDos.count
    }
}

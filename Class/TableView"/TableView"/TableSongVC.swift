
import UIKit

var song = ["Song_1", "Song_2", "Song_3"]
var description = ["lorem1","lorem2","lorem3"]
var miIndex = 0




class TableSongVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        /*Number of sections -> according to the size of the arrangement*/
        
        return song.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ID_Cell_1", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = song[indexPath.row]

        override func tableView(_ ){
            //foto còdigo
        }
        
        
        
        return cell
    }
    
    

}

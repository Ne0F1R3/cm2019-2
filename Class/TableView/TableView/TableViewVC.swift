
import UIKit

class TableViewVC: UIViewController, UITableViewDelegate,UITableViewDataSource {
   
    
    @IBOutlet weak var TableViewSB: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell()
        celda.textLabel?.text = "Erick"
        return celda 
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        TableViewSB.dataSource = ViewController.
        TableViewSB.delegate = ViewController.viewDidLoad(TableViewVC)
        
    }
}

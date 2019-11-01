import UIKit

class GroceryListSelectorTable: UIViewController {

    var items: [GroceryItem] = []

    
    @IBOutlet weak var tableView2: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        items = createArray()
        tableView2.delegate = self
        tableView2.dataSource = self
        // Do any additional setup after loading the view.

    }
    
    func createArray() -> [GroceryItem]{
        var tempItems: [GroceryItem] = []
        
        let item1 = GroceryItem(image: #imageLiteral(resourceName: "bagels"), title: "Bagels", quantity: "1 Bag")
        let item2 = GroceryItem(image: #imageLiteral(resourceName: "cheese"), title: "Mozzarella", quantity: "1 Bag")
        let item3 = GroceryItem(image: #imageLiteral(resourceName: "carrots"), title: "Baby Carrots", quantity: "2 lbs")
        let item4 = GroceryItem(image: #imageLiteral(resourceName: "eggs"), title: "Eggs", quantity: "1 Dozen")
        let item5 = GroceryItem(image: #imageLiteral(resourceName: "pepperoni"), title: "Pepperoni", quantity: "1 Bag")
        let item6 = GroceryItem(image: #imageLiteral(resourceName: "corn"), title: "Frozen Corn", quantity: "10 oz Bag")
        
        tempItems.append(item1)
        tempItems.append(item2)
        tempItems.append(item3)
        tempItems.append(item4)
        tempItems.append(item5)
        tempItems.append(item6)
        
        return tempItems
    }

}

extension GroceryListSelectorTable: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = tableView2.dequeueReusableCell(withIdentifier: "ItemCell") as! ItemCell
        cell.setItem(item: item)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = items[indexPath.row]
        performSegue(withIdentifier: "select", sender: item)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
}

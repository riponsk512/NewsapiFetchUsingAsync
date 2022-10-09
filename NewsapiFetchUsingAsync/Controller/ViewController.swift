//
//  ViewController.swift
//  NewsapiFetchUsingAsync
//
//  Created by Ripon sk on 09/10/22.
//

import UIKit

class ViewController: UIViewController {
var arrArticles = [Articles]()
    var results:Results! = nil
    //var shareds = DataFetch.shared.
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Task.init {
          results = await DataFetch.shared.dataFetch()
            DispatchQueue.main.async { [self] in
                self.arrArticles = results.articles!
                self.table.reloadData()
                for i in self.arrArticles{
                    print(i.urlToImage)
                }
            }
            
        }
        // Do any additional setup after loading the view.
    }


}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrArticles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.authors.text = arrArticles[indexPath.row].author
       // let imgurl = URL(string: arrArticles[indexPath.row].urlToImage!)
        
        //cell.imgs.loadimage(from:imgurl!)
        
        //cell.imgs.image = UIImage(data:data!)
        cell.descriptions.text = arrArticles[indexPath.row].description
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

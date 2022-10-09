//
//  TableViewCell.swift
//  NewsapiFetchUsingAsync
//
//  Created by Ripon sk on 09/10/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var titles: UILabel!
    
    @IBOutlet weak var descriptions: UILabel!
    @IBOutlet weak var imgs: LazyImageLoaderView!
    @IBOutlet weak var authors: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

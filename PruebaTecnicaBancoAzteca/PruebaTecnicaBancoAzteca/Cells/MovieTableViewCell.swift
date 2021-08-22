//
//  MovieTableViewCell.swift
//  PruebaTecnicaBancoAzteca
//
//  Created by Jorge Ramos on 22/08/21.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    let identifier = "MovieTableViewCell"
    @IBOutlet var movieImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var releaseDate: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func nib() -> UINib{
        return UINib(nibName: "MovieTabkeViewCell", bundle: nil)
    }
    
    public func setup(with title:String , image:String , releaseDate:String)
    {
        
    }
    
}

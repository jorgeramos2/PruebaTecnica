//
//  MovieTableViewCell.swift
//  PruebaTecnicaBancoAzteca
//
//  Created by Jorge Ramos on 22/08/21.
//

import UIKit
import Kingfisher
class MovieTableViewCell: UITableViewCell {
    
    static let identifier = "MovieTableViewCell"
    @IBOutlet var movieImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var releaseDateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    public func setup(title:String , image:String , releaseDate:String)
    {
        let url = URL(string: "https://image.tmdb.org/t/p/w500" + image)
        movieImageView.kf.setImage(with: url)
        movieImageView.clipsToBounds = true
        movieImageView.contentMode = .scaleAspectFill
        titleLabel.text = title
        releaseDateLabel.text = releaseDate
    }
    
}

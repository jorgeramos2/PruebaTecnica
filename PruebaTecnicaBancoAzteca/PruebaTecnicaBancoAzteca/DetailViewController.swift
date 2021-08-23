//
//  ViewController.swift
//  PruebaTecnicaBancoAzteca
//
//  Created by Jorge Ramos on 21/08/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    var API = APIManager()
    var videos = [Video]()
    var movieID = 0
    var movieTitle = ""
    var summary = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        getVideo()
        movieTitleLabel.text = movieTitle
        
    }
    func getVideo()
    {
        
        API.getMovieVideos(movieID: String(movieID)){(result) in
            switch result
            {
            case .success(let list):
                self.videos = list.videos
               
            case .failure(let error):
                print(error)
            }

        }
    }

}


//
//  ViewController.swift
//  PruebaTecnicaBancoAzteca
//
//  Created by Jorge Ramos on 21/08/21.
//

import UIKit
import youtube_ios_player_helper
class DetailViewController: UIViewController {
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var videoPlayer: YTPlayerView!
    var API = APIManager()
    var videos = [Video]()
    var movieID = 0
    var movieTitle = ""
    var summary = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        getVideo()
        movieTitleLabel.text = movieTitle
        summaryLabel.text = summary
        
    }
    override func viewDidLayoutSubviews() {
        summaryLabel.sizeToFit()
      
        
    }
    func getVideo()
    {
        
        API.getMovieVideos(movieID: String(movieID)){(result) in
            switch result
            {
            case .success(let list):
                self.videos = list.videos
                self.videoPlayer.load(withVideoId:self.videos[0].key!)

               
            case .failure(let error):
                print(error)
            }

        }
    }

}


//
//  ViewController.swift
//  PruebaTecnicaBancoAzteca
//
//  Created by Jorge Ramos on 21/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    var API = APIManager()
    var videos = [Video]()
    var movieID = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        getVideo()
        
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


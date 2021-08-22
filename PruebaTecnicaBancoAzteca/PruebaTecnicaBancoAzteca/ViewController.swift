//
//  ViewController.swift
//  PruebaTecnicaBancoAzteca
//
//  Created by Jorge Ramos on 21/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    var API = APIManager()
    var movies = [Movie]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        API.getNowPlayingMoviesData{(result) in
            switch result
            {
            case .success(let list):
                self.movies = list.movies
                print(self.movies[0].title)
            case .failure(let error):
                print(error)
            }
            
        }
        /*API.getMovieVideos(movieID: "436969"){(result) in
            print(result)
        }*/
    }


}


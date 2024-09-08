//
//  GamesViewController.swift
//  GOW_Localization
//
//  Created by Azul Alfaro on 30/08/24.
//

import UIKit

class GamesViewController: UIViewController {

    @IBOutlet weak var gamePosterPageControl: UIPageControl!
    @IBOutlet weak var gamePosterImage: UIImageView!
    let gamePosters = Array(0...7)
    
    //image for active dot
    let activeDotImage = UIImage(named: "gow_logo")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        gamePosterPageControl.numberOfPages = gamePosters.count
        gamePosterImage.image = UIImage(named: String(gamePosters.first!))
        
        //active dot for page controler
        configureActiveDot()
    }
    
    func configureActiveDot(){
        for i in 0..<gamePosters.count{
            if i == gamePosterPageControl.currentPage{
                gamePosterPageControl.setIndicatorImage(activeDotImage, forPage: i)
            } else {
                gamePosterPageControl.setIndicatorImage(nil, forPage: i)
            }
        }
                
    }
    

    @IBAction func leftSwipeDone(_ sender: Any) {
        print("Right")
        if gamePosterPageControl.currentPage == gamePosters.count-1  {
                    gamePosterPageControl.currentPage = 0
                    gamePosterImage.image = UIImage(named: String(gamePosters[gamePosterPageControl.currentPage]))
                }
                else{
                    gamePosterPageControl.currentPage = gamePosterPageControl.currentPage + 1
                    gamePosterImage.image = UIImage(named: String(gamePosters[gamePosterPageControl.currentPage]))
                }
        
        configureActiveDot()
        
    }
    
    
    @IBAction func rightSwipeDone(_ sender: Any) {
        print("Left")
        
        
        if gamePosterPageControl.currentPage == 0  {
                    gamePosterPageControl.currentPage = gamePosters.count-1
                    gamePosterImage.image = UIImage(named: String(gamePosters[gamePosterPageControl.currentPage]))
                }
                else{
                    gamePosterPageControl.currentPage = gamePosterPageControl.currentPage - 1
                    gamePosterImage.image = UIImage(named: String(gamePosters[gamePosterPageControl.currentPage]))
                }
        
        configureActiveDot()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  DetailsViewController.swift
//  UIScrollView-demo
//
//  Created by Samet Koyuncu on 24.09.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var selectedNews: News?
    
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        if let selectedNews = selectedNews {
            newsImage.image = UIImage.init(named: selectedNews.imageName)
            titleLabel.text = selectedNews.title
            contentLabel.text = selectedNews.body
        }
        super.viewDidLoad()

    }

}

//
//  ViewController.swift
//  UIScrollView-demo
//
//  Created by Samet Koyuncu on 24.09.2022.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // detay ekranının bir instance'ını oluştur
        let destinationVC = storyboard?.instantiateViewController(withIdentifier: "DetailsPageVC") as! DetailsViewController
        // seçili olan haberi al
        let selectedNews = DummyData.allNews[indexPath.row]
        // detay ekranındaki selectedNews'e, yukarıdaki selectedNews'i set'le
        destinationVC.selectedNews = selectedNews
        // detay ekranına git
        navigationController?.pushViewController(destinationVC, animated: true)
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DummyData.allNews.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = DummyData.allNews[indexPath.row].title
        return cell
    }
    
    
}


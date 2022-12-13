//
//  DetailViewController.swift
//  Expo1900
//
//  Created by tottalE, Kyo on 10/20/22.
//

import UIKit

protocol DetailViewDelegate: AnyObject {
    func setupDataImageView(imageView: UIImageView, label: UILabel)
}

final class DetailViewController: UIViewController {
    private let koreaItem: KoreaItem?
    
    init(koreaItem: KoreaItem?) {
        self.koreaItem = koreaItem
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let detailView = DetailView(delegate: self)
        self.view = detailView
        setNavigationBar()
    }
    
    private func setNavigationBar() {
        self.title = koreaItem?.name
        let appearance = UINavigationBarAppearance()
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
}

extension DetailViewController: DetailViewDelegate {
    func setupDataImageView(imageView: UIImageView, label: UILabel) {
        guard let item = koreaItem else { return }
        imageView.image = UIImage(named: item.imageName)
        label.text = item.description
    }
}

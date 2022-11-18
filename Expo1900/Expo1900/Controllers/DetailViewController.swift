//
//  DetailViewController.swift
//  Expo1900
//
//  Created by tottalE, Kyo on 10/20/22.
//

import UIKit

protocol DetailViewDelegate {
    func setupDataImageView(imageView: UIImageView, label: UILabel)
}

final class DetailViewController: UIViewController {
    private let koreaItem: KoreaItem?
    
    let detailView = DetailView()
    
    init(koreaItem: KoreaItem?) {
        self.koreaItem = koreaItem
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = detailView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailView.detailViewDelegate = self
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

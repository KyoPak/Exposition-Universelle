//
//  DetailView.swift
//  Expo1900
//
//  Created by Kyo on 2022/11/18.
//

import UIKit

final class DetailView: UIView {
    var detailViewDelegate: DetailViewDelegate?
        
// 해당 방법도 가능
//    var detailViewDelegate: DetailViewDelegate? {
//        didSet {
//            setUI()
//        }
//    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private enum Constant {
        static let imageViewTopConstraint: CGFloat = 20
        static let imageViewHeight: CGFloat = 150
        static let textViewTopConstraint: CGFloat = 10
        static let textViewLeadingConstraint: CGFloat = 10
        static let textViewTrailingConstraint: CGFloat = -10
    }
    
    private let itemImageView: UIImageView = {
        let itemImageView = UIImageView()
        itemImageView.contentMode = .scaleAspectFit
        itemImageView.translatesAutoresizingMaskIntoConstraints = false
        return itemImageView
    }()
    
    private let descriptionLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.numberOfLines = 0
        textLabel.textColor = UIColor.black
        textLabel.lineBreakMode = .byWordWrapping
        textLabel.font = UIFont.preferredFont(forTextStyle: .body)
        textLabel.adjustsFontForContentSizeCategory = true
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }()
    
    private let stackView: UIStackView = {
        let contentView = UIStackView()
        contentView.axis = .vertical
        contentView.alignment = .center
        contentView.distribution = .fill
        contentView.translatesAutoresizingMaskIntoConstraints = false
        return contentView
    }()
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()

    private func setupUI(){
        setupViews()
        setupConstraint()
        detailViewDelegate?.setupDataImageView(imageView: itemImageView, label: descriptionLabel)
    }
    
    private func setupConstraint(){
        setupScrollView()
        setupStackView()
        setupContentViewElement()
    }
}

extension DetailView {
    private func setupViews() {
        self.backgroundColor = .white
        self.addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.addSubview(itemImageView)
        stackView.addSubview(descriptionLabel)
    }
    
    private func setupScrollView() {
        NSLayoutConstraint.activate([
            scrollView.frameLayoutGuide.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            scrollView.frameLayoutGuide.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            scrollView.frameLayoutGuide.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            scrollView.frameLayoutGuide.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
    
    private func setupStackView() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor),
        ])
    }
    
    private func setupContentViewElement() {
        NSLayoutConstraint.activate([
            itemImageView.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            itemImageView.topAnchor.constraint(equalTo: stackView.topAnchor,
                                               constant: Constant.imageViewTopConstraint),
            itemImageView.heightAnchor.constraint(equalToConstant: Constant.imageViewHeight),
            descriptionLabel.topAnchor.constraint(equalTo: itemImageView.bottomAnchor,
                                                  constant: Constant.textViewTopConstraint),
            descriptionLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor,
                                                      constant: Constant.textViewLeadingConstraint),
            descriptionLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor,
                                                       constant: Constant.textViewTrailingConstraint),
            descriptionLabel.bottomAnchor.constraint(equalTo: stackView.bottomAnchor)
        ])
    }
}

//
//  Expo1900 - ExpoViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class ExpoViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var visitorLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet var buttonImage: [UIImageView]!
    @IBOutlet weak var nextButton: UIButton!
    
    var expoData: ExpositionIntroduction?
    let dataManager: DataManager = DataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
        setupElementWithData()
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func setData() {
        do {
            expoData = try dataManager.fetchExpoIntroData()
        } catch {
            if let error = error as? DataError {
                print(error.message)
            } else {
                print(DataError.unknownError.message)
            }
        }
    }
    
    func setupElementWithData() {
        titleLabel.text = expoData?.title
        mainImage.image = UIImage(named: AssetName.expoImage)
        visitorLabel.text = expoData?.visitors.description
        placeLabel.text = expoData?.location
        timeLabel.text = expoData?.duration
        descriptionLabel.text = expoData?.description
        buttonImage.forEach { button in
            button.image = UIImage(named: AssetName.flagButtonImage)
        }
        nextButton.titleLabel?.text = Constant.nextButtonTitle
    }
}


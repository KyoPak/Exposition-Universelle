//
//  KoreaItemsController.swift
//  Expo1900
//
//  Created by tottalE, Kyo on 10/17/22.
//

import UIKit

final class KoreaItemsViewController: UIViewController {
    enum Constant {
        static let koreaItemsNavigationTitle = "한국의 출품작"
        static let navigationBackButtonTitle = "출품작"
    }

    private var koreanItemsTable =  UITableView()
    private let dataManager: DecodeManger = DecodeManger<KoreaItem>()
    private var koreaItems: [KoreaItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        setupNavigationBar()
        setupTableView()
        setupTableViewConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    private func setupData() {
        do {
            koreaItems = try dataManager.fetchDataList(name: AssetName.koreaItemJSON)
        } catch {
            if let error = error as? DataError {
                popErrorAlert(error: error)
                #if DEBUG
                NSLog(error.localizedDescription)
                #endif
            } else {
                popErrorAlert(error: DataError.unknownError)
                #if DEBUG
                NSLog(DataError.unknownError.localizedDescription)
                #endif
            }
        }
    }
    
    private func setupTableView() {
        koreanItemsTable.delegate = self
        koreanItemsTable.dataSource = self
        koreanItemsTable.register(KoreaItemTableViewCell.self,
                                  forCellReuseIdentifier: KoreaItemTableViewCell.reuseIdentifier)
    }
    
    private func setupNavigationBar() {
        let backItem = UIBarButtonItem()
        backItem.title = Constant.navigationBackButtonTitle
        navigationItem.backBarButtonItem = backItem
        navigationController?.navigationBar.tintColor = .black
        self.title = Constant.koreaItemsNavigationTitle
    }
    
    private func popErrorAlert(error: DataError) {
        let alert = UIAlertController(title: error.localizedDescription,
                                      message: error.failureReason,
                                      preferredStyle: .alert)
        let confirm = UIAlertAction(title: "확인",
                                    style: .default,
                                    handler: nil)
        alert.addAction(confirm)
        present(alert, animated: true, completion: nil)
    }
}

// MARK: - TableView Constraint
extension KoreaItemsViewController {
    func setupTableViewConstraints() {
        view.addSubview(koreanItemsTable)
        view.backgroundColor = .white
        koreanItemsTable.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            koreanItemsTable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                                                  constant: .zero),
            koreanItemsTable.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                                      constant: .zero),
            koreanItemsTable.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                       constant: .zero),
            koreanItemsTable.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                                                     constant: .zero)
        ])
    }
}

// MARK: - TableView Delegate
extension KoreaItemsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = DetailViewController(koreaItem: koreaItems[indexPath.row])
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}

// MARK: - TableView DataSource
extension KoreaItemsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return koreaItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: KoreaItemTableViewCell.reuseIdentifier) as? KoreaItemTableViewCell else {
            let errorCell = UITableViewCell()
            errorCell.textLabel?.text = "Error"
            return errorCell
        }
        
        cell.mainImageView.image = UIImage(named: koreaItems[indexPath.row].imageName)
        cell.titleLabel.text = koreaItems[indexPath.row].name
        cell.discriptionLabel.text = koreaItems[indexPath.row].shortDescription

        return cell
    }
}

// MARK: - KoreaItemViewController Identifier
extension KoreaItemsViewController: UseIdentifier {
    
}

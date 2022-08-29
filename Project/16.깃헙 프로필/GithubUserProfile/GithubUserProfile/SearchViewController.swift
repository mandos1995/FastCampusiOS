//
//  SearchViewController.swift
//  GithubUserProfile
//
//  Created by 김민석 on 2022/08/29.
//

import UIKit
import Combine
import Kingfisher

class UserProfileViewController: UIViewController {
    
    @Published private(set) var user: UserProfile?
    var subscriptions = Set<AnyCancellable>()
    
    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var followerLabel: UILabel!
    @IBOutlet weak var followingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        embedSearchControl()
        bind()
    }
    
    private func setupUI() {
        thumbnail.layer.cornerRadius = thumbnail.layer.borderWidth / 2
        
    }
    
    private func embedSearchControl() {
        self.navigationItem.title = "Search"
        
        let searchControl = UISearchController(searchResultsController: nil)
        searchControl.hidesNavigationBarDuringPresentation = false
        searchControl.searchBar.placeholder = "mandos1995"
        searchControl.searchResultsUpdater = self
        searchControl.searchBar.delegate = self
        self.navigationItem.searchController = searchControl
    }
    
    private func bind() {
        $user
            .receive(on: RunLoop.main)
            .sink { [weak self] result in
                self?.update(result)
            }.store(in: &subscriptions)
    }
    
    private func update(_ user: UserProfile?) {
        
    }
}
extension UserProfileViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let keyword = searchController.searchBar.text
        print("search: \(keyword)")
    }
}

extension UserProfileViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print("button clicked: \(searchBar.text)")
    }
}

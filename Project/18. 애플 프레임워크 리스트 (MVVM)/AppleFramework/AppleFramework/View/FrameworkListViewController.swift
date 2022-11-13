//
//  FrameworkListViewController.swift
//  AppleFramework
//
//  Created by 김민석 on 2022/06/14.
//

import UIKit
import Combine

class FrameworkListViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var subscriptions = Set<AnyCancellable>()
    var dataSource: UICollectionViewDiffableDataSource<Section, Item>!
    var viewModel: FrameworkListViewModel!
    
    typealias Item = AppleFramework
    enum Section {
        case main
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = FrameworkListViewModel(items: AppleFramework.list)
        configureCollectionView()
        bind()
    }
    
    private func bind() {
        viewModel.items
            .receive(on: RunLoop.main)
            .sink { [unowned self] list in
                self.applySectionItems(list)
            }.store(in: &subscriptions)
        
        viewModel.selectedItem
            .receive(on: RunLoop.main)
            .sink { framework in
                let storyboard = UIStoryboard(name: "Detail", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "FrameworkDetailViewController") as! FrameworkDetailViewController
                vc.viewModel = FrameworkDetailViewModel(framework: framework)
                self.present(vc, animated: true, completion: nil)
            }.store(in: &subscriptions)
    }
    
    private func applySectionItems(_ items: [Item], to section: Section = .main) {
        // Data
        var snapShot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapShot.appendSections([section])
        snapShot.appendItems(items, toSection: section)
        dataSource.apply(snapShot)
    }
    
    private func configureCollectionView() {
        // Presentation
        dataSource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView, cellProvider: { collectionView, indexPath, item in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FrameworkCell", for: indexPath) as? FrameworkCell else {
                return nil
            }
            cell.configure(item)
            return cell
        })
        // Layout
        collectionView.collectionViewLayout = layout()
        
        collectionView.delegate = self
    }
    
    private func layout() -> UICollectionViewCompositionalLayout {
        let spacing: CGFloat = 10
        // Item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.33), heightDimension: .fractionalHeight(1))
        let itemLayout = NSCollectionLayoutItem(layoutSize: itemSize)
        
        // Group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(0.33))
        let groupLayout = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: itemLayout, count: 3)
        groupLayout.interItemSpacing = .fixed(spacing)
        
        // Section
        let section = NSCollectionLayoutSection(group: groupLayout)
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16)
        section.interGroupSpacing = spacing
        
        return UICollectionViewCompositionalLayout(section: section)
    }
    
}
extension FrameworkListViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        viewModel.didSelect(at: indexPath)
    }
}

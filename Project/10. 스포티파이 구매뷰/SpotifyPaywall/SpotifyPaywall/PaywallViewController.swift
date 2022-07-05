//
//  PaywallViewController.swift
//  SpotifyPaywall
//
//  Created by 김민석 on 2022/07/04.
//

import UIKit

// https://developer.spotify.com/documentation/general/design-and-branding/#using-our-logo
// https://developer.apple.com/documentation/uikit/nscollectionlayoutsectionvisibleitemsinvalidationhandler
// 과제: 아래 애플 샘플 코드 다운받아서 돌려보기  https://developer.apple.com/documentation/uikit/views_and_controls/collection_views/implementing_modern_collection_views

class PaywallViewController: UIViewController {
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let bannerInfo: [BannerInfo] = BannerInfo.list
    let colors: [UIColor] = [.systemPurple, .systemOrange, .systemPink, .systemRed]
    var dataSource: UICollectionViewDiffableDataSource<Section, Item>!
    
    typealias Item = BannerInfo
    enum Section {
        case main
    }
    
     override func viewDidLoad() {
        super.viewDidLoad()
         
         dataSource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView, cellProvider: { collectionView, indexPath, item in
             guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCell", for: indexPath) as? BannerCell else { return nil }
             cell.configure(item)
             cell.backgroundColor = self.colors[indexPath.item]
             return cell
         })
         
         var snapShot = NSDiffableDataSourceSnapshot<Section, Item>()
         snapShot.appendSections([.main])
         snapShot.appendItems(bannerInfo, toSection: .main)
         dataSource.apply(snapShot)
         
         collectionView.collectionViewLayout = layout()
         collectionView.alwaysBounceVertical = false
         
         pageControl.numberOfPages = bannerInfo.count
         
    }
    private func layout() -> UICollectionViewCompositionalLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.8), heightDimension: .absolute(200))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPagingCentered
        section.interGroupSpacing = 20
        
        section.visibleItemsInvalidationHandler = { (item, offset, env) in
            let index = Int((offset.x / env.container.contentSize.width).rounded(.up))
            self.pageControl.currentPage = index
        }
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
}

//
//  FrameworkDetailViewController.swift
//  AppleFramework
//
//  Created by 김민석 on 2022/07/06.
//

import UIKit
import SafariServices
import Combine

class FrameworkDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var subscriptions = Set<AnyCancellable>()
    var viewModel: FrameworkDetailViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    private func bind() {
        // input: Button Tapped
        viewModel.buttonTapped
            .receive(on: RunLoop.main)
            .compactMap { URL(string: $0.urlString) }
            .sink { [unowned self] url in
                let safari = SFSafariViewController(url: url)
                self.present(safari, animated: true)
            }.store(in: &subscriptions)
        
        // output: Data Setting 될 때 UIupdate
        viewModel.framework
            .receive(on: RunLoop.main)
            .sink { [unowned self] framework in
                imageView.image = UIImage(named: framework.imageName)
                titleLabel.text = framework.name
                descriptionLabel.text = framework.description
            }.store(in: &subscriptions)
        
    }
    
    @IBAction func learnMoreTapped(_ sender: UIButton) {
        viewModel.learnMoreTapped()
    }
    
}

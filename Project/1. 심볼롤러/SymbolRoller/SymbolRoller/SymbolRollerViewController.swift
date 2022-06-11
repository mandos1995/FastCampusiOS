//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by 김민석 on 2022/06/11.
//

import UIKit

class SymbolRollerViewController: UIViewController {
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(systemName: "cloud")
        print("view did load...")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view Will Appear...")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view Did Appear...")
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("와 눌렸다")
    }
}

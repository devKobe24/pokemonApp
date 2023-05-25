//
//  MainViewController.swift
//  Delegate_Pokemon
//
//  Created by Minseong Kang on 2023/05/21.
//

import UIKit

class MainViewController: UIViewController {
	@IBOutlet weak var drOhHouseImageView: UIImageView!
	@IBOutlet weak var drOhHouseEnterButton: UIButton!
	
	override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	@IBAction func enterTheDrOhHouse(_ sender: UIButton) {
		guard let resultVC = storyboard?.instantiateViewController(
			withIdentifier: StoryboardID.resultViewController.id
		) as? ResultViewController else {
			return
		}
		resultVC.modalPresentationStyle = .fullScreen
		self.present(resultVC, animated: true)
	}
}

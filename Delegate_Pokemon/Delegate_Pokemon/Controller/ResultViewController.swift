//
//  ResultViewController.swift
//  Delegate_Pokemon
//
//  Created by Minseong Kang on 2023/05/22.
//

import UIKit

class ResultViewController: UIViewController {
	
	@IBOutlet weak var redView: UIView!
	@IBOutlet weak var whiteView: UIView!
	@IBOutlet weak var pokemonImageView: UIImageView!
	@IBOutlet weak var pokemonNameLabel: UILabel!
	@IBOutlet weak var pokemonTypeLabel: UILabel!
	@IBOutlet weak var pokemonInfoStackView: UIStackView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		setUpRedView()
		setUpWhiteView()
		setUpPokemonImageView()
    }
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		self.pokemonInfoStackView.isHidden = false
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let selectionVC = segue.destination as? SelectionViewController else { return }
		selectionVC.modalPresentationStyle = .fullScreen
		selectionVC.delegate = self
	}
	
	func setUpRedView() {
		self.redView.layer.borderWidth = 1.5
		self.redView.layer.borderColor = UIColor.black.cgColor
	}
	
	func setUpWhiteView() {
		self.whiteView.layer.borderWidth = 1.5
		self.whiteView.layer.borderColor = UIColor.black.cgColor
	}
	
	func setUpPokemonImageView() {
		self.pokemonImageView.layer.cornerRadius = 100
		self.pokemonImageView.layer.borderWidth = 3
		self.pokemonImageView.layer.borderColor = UIColor.black.cgColor
	}
	
	@IBAction func getOutFromDrOhHouse(_ sender: UIButton) {
		self.dismiss(animated: true)
	}
}

extension ResultViewController: SelectionViewControllerDelegate {
	
	func sendPokemonInfo(pokemonInfo: PokemonInfomation?) {
		guard let pokemonInfo = pokemonInfo else { return }
		self.pokemonImageView.image = pokemonInfo.image
		self.pokemonNameLabel.text = pokemonInfo.name
		self.pokemonTypeLabel.text = pokemonInfo.type
	}
}

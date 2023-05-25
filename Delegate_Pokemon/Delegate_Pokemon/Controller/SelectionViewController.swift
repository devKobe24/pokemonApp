//
//  BaseScreen.swift
//  Delegate_Pokemon
//
//  Created by Minseong Kang on 2023/05/21.
//

import UIKit
typealias PokemonInfomation = (image: UIImage?, name: String?, type: String?)
protocol SelectionViewControllerDelegate: AnyObject {
	func sendPokemonInfo(pokemonInfo: PokemonInfomation?)
}

class SelectionViewController: UIViewController {
	
	@IBOutlet weak var bulbasaurImageView: UIImageView!
	@IBOutlet weak var squirtleImageView: UIImageView!
	@IBOutlet weak var charmanderImageView: UIImageView!
	
	var startingPokemonImage: UIImage?
	var startingPokemonName: String?
	var startingPokemonType: String?
	
	var pokemonInfomation: PokemonInfomation?
	
	weak var delegate: SelectionViewControllerDelegate?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setUpPokemonImages()
	}
	
	func setUpPokemonImages() {
		self.bulbasaurImageView.image = UIImage(named: StartingPokemon.bulbasaur.imageName)
		self.squirtleImageView.image = UIImage(named: StartingPokemon.squirtle.imageName)
		self.charmanderImageView.image = UIImage(named: StartingPokemon.charmander.imageName)
	}
	
	@IBAction func selectPokemon(_ sender: UIButton) {
		
		switch sender.tag {
		case 0:
			let startingPokemonImage = UIImage(named: StartingPokemon.bulbasaur.imageName)
			let startingPokemonName = StartingPokemon.bulbasaur.name
			let startingPokemonType = StartingPokemon.bulbasaur.type
			self.pokemonInfomation = PokemonInfomation(
				image: startingPokemonImage,
				name: startingPokemonName,
				type: startingPokemonType)
			
			
			delegate?.sendPokemonInfo(pokemonInfo: pokemonInfomation)
			self.dismiss(animated: true)
		case 1:
			let startingPokemonImage = UIImage(named: StartingPokemon.squirtle.imageName)
			let startingPokemonName = StartingPokemon.squirtle.name
			let startingPokemonType = StartingPokemon.squirtle.type
			self.pokemonInfomation = PokemonInfomation(
				image: startingPokemonImage,
				name: startingPokemonName,
				type: startingPokemonType)
			
			
			delegate?.sendPokemonInfo(pokemonInfo: pokemonInfomation)
			self.dismiss(animated: true)
		case 2:
			let startingPokemonImage = UIImage(named: StartingPokemon.charmander.imageName)
			let startingPokemonName = StartingPokemon.charmander.name
			let startingPokemonType = StartingPokemon.charmander.type
			self.pokemonInfomation = PokemonInfomation(
				image: startingPokemonImage,
				name: startingPokemonName,
				type: startingPokemonType)
			
			self.dismiss(animated: true)
			delegate?.sendPokemonInfo(pokemonInfo: pokemonInfomation)
			
		default:
			break
		}
	}
}


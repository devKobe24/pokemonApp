//
//  StartingPokemon.swift
//  Delegate_Pokemon
//
//  Created by Minseong Kang on 2023/05/21.
//

enum StartingPokemon {
	case bulbasaur
	case squirtle
	case charmander
	
	var name: String {
		switch self {
		case .bulbasaur:
			return "이상해씨"
		case .squirtle:
			return "꼬부기"
		case .charmander:
			return "파이리"
		}
	}
	var type: String {
		switch self {
		case .bulbasaur:
			return "풀 타입"
		case .squirtle:
			return "물 타입"
		case .charmander:
			return "불 타입"
		}
	}
	var imageName: String {
		switch self {
		case .bulbasaur:
			return "이상해씨"
		case .squirtle:
			return "꼬부기"
		case .charmander:
			return "파이리"
		}
	}
}

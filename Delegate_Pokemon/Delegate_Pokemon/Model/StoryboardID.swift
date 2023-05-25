//
//  StoryboardID.swift
//  Delegate_Pokemon
//
//  Created by Minseong Kang on 2023/05/21.
//

enum StoryboardID {
	case mainViewController
	case resultViewController
	case selectionViewController
	
	var id: String {
		switch self {
		case .mainViewController:
			return "MainViewController"
		case .resultViewController:
			return "ResultViewController"
		case .selectionViewController:
			return "SelectionViewController"
		}
	}
}

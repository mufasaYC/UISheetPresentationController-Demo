//
//  RootViewController.swift
//  UISheetPresentationController-Demo
//
//  Created by Mustafa Yusuf on 08/06/21.
//

import UIKit

class RootViewController: UIViewController {
	
	let sheetTransitioningDelegate = SheetTransitioningDelegate()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let action = UIAction { [weak self] _ in
			let controller = SheetController()
			controller.transitioningDelegate = self?.sheetTransitioningDelegate
			controller.modalPresentationStyle = .custom
			self?.present(controller, animated: true)
		}
		navigationItem.rightBarButtonItem = .init(systemItem: .add, primaryAction: action, menu: nil)
	}
}

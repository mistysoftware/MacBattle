//
//  DocumentController.swift
//  MacBattle
//
//  Created by Keith Malkin on 1/14/24.
//  Copyright © 2024 Misty Software, LLP. All rights reserved.
//

import Cocoa

class DocumentController: NSDocumentController {

	var mOpenPanel: NSOpenPanel?

	@IBAction override func openDocument(_ sender: Any?) {
		if let openPanel = mOpenPanel, openPanel.isVisible {
			openPanel.makeKeyAndOrderFront(nil)
		}
		else {
			super.openDocument(sender)
		}
	}

	override func beginOpenPanel(_ openPanel: NSOpenPanel, forTypes inTypes: [String]?, completionHandler: @escaping (Int) -> Void) {
		super.beginOpenPanel(openPanel, forTypes: inTypes, completionHandler: completionHandler)
		mOpenPanel = openPanel
	}

}


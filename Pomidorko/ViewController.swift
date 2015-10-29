//
//  ViewController.swift
//  Pomidorko
//
//  Created by Volter on 28.09.15.
//  Copyright (c) 2015 volter9. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet var skip: NSButton?
    @IBOutlet var time: NSTextField?
    @IBOutlet var goals: NSTextField?
    @IBOutlet var control: PlayPause?
    
    override func viewDidAppear()
    {
        super.viewDidAppear()
        
        self.view.window?.backgroundColor = BlueColor
        self.control?.backgroundColor = LightBlueColor
        
        self.skip?.attributedTitle = colorize(
            self.skip?.attributedTitle,
            color: WhiteColor
        )
        
        let goalTitle = NSMutableAttributedString(
            attributedString: (self.goals?.attributedStringValue)!
        )
        
        let font = "HelveticaNeue-Light"
        
        increase(goalTitle,
            font: NSFont(name: font, size: 14)!,
            offset: 3,
            length: 28
        )
        increase(goalTitle,
            font: NSFont(name: font, size: 20)!,
            offset: 6,
            length: 2
        )
        
        self.goals?.attributedStringValue = goalTitle
    }
}


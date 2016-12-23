//
//  HowToMenuViewController.swift
//  wordgame
//
//  Created by Marek Mako on 23/12/2016.
//  Copyright © 2016 Marek Mako. All rights reserved.
//

import UIKit

class HowToMenuViewController: UIViewController {
    
    fileprivate var isViewDecorated = false
    
    fileprivate lazy var viewMask: CALayer = {
        let image = UIImage(named: "background")!
        let color = UIColor(patternImage: image)
        let mask = CALayer()
        mask.frame = self.view.bounds
        mask.backgroundColor = color.cgColor
        mask.zPosition = CGFloat.greatestFiniteMagnitude
        return mask
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.addSublayer(viewMask)
        
        view.extSetLetterBlueBackground()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if !isViewDecorated {
            isViewDecorated = true
            view.extAddCenterRound()
            
            view.extRemoveWithAnimation(layer: viewMask)
        }
    }
}

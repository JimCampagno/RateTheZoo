//
//  ZooAnimalView.swift
//  RateTheZoo
//
//  Created by James Campagno on 5/6/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

final class ZooAnimalView: UIView {

    @IBOutlet weak var blurredZooView: UIImageView!
    @IBOutlet weak var zooView: UIImageView!
    @IBOutlet weak var zooLabel: UILabel!
    @IBOutlet weak var image0: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet var contentView: UIView!
    
    @IBAction func turtleButton(sender: AnyObject) {
        let allTheImages = [image0, image1, image2, image3, image4, image5]

        let hiddenImages = allTheImages.filter { image in
            return image.alpha == 0.0
        }
        
        if let imageToUnhide = hiddenImages.first {
            UIView.animateWithDuration(0.9, animations: {_ in
                imageToUnhide.alpha = 1.0
                
            })
        }
        
    }
    
     required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        NSBundle.mainBundle().loadNibNamed("ZooAnimalView", owner: self, options: nil)
        self.addSubview(self.contentView)
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.topAnchor.constraintEqualToAnchor(self.topAnchor).active = true
        self.contentView.leftAnchor.constraintEqualToAnchor(self.leftAnchor).active = true
        self.contentView.rightAnchor.constraintEqualToAnchor(self.rightAnchor).active = true
        self.contentView.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor).active = true
        let allTheImages = [image0, image1, image2, image3, image4, image5]
        allTheImages.forEach { $0.alpha = 0.0 }
    }
    


}

//
//  ZooView.swift
//  RateTheZoo
//
//  Created by Jim Campagno on 5/3/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ZooView: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var zooImageView: UIImageView!
    @IBOutlet weak var zooNameLabel: UILabel!
    @IBOutlet weak var zooLocationLabel: UILabel!
    @IBOutlet weak var numberOfAnimalsLabel: UILabel!
    @IBOutlet weak var numberOfSpeciesLabel: UILabel!
    @IBOutlet weak var infoButton: UIButton!
    
    var zoo: Zoo! {
        didSet {
            if zoo != nil { setupViewWithZoo() }
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        NSBundle.mainBundle().loadNibNamed("ZooView", owner: self, options: nil)
        self.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.topAnchor.constraintEqualToAnchor(self.topAnchor).active = true
        contentView.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor).active = true
        contentView.leftAnchor.constraintEqualToAnchor(self.leftAnchor).active = true
        contentView.rightAnchor.constraintEqualToAnchor(self.rightAnchor).active = true
    }
    
    private func setupViewWithZoo() {
        zooNameLabel.text = zoo.name
        zooLocationLabel.text = zoo.location
        numberOfAnimalsLabel.text = "\(zoo.numberOfAnimals) number of animals"
        numberOfSpeciesLabel.text = "\(zoo.numberOfSpecies) number of species"
    }
        
    
}

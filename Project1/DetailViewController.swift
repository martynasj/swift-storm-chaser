//
//  DetailViewController.swift
//  Project1
//
//  Created by Martynas Jankauskas on 24/04/16.
//  Copyright © 2016 Martynas Jankauskas. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var imageName: String?
    
    func configView() {
        if let imageName = self.imageName {
            if let imageView = imageView {
                imageView.image = UIImage(named: imageName)
            }
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        configView()
        self.title = self.imageName
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


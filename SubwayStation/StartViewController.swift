//
//  StartViewController.swift
//  SubwayStation
//
//  Created by 양성혜 on 2023/01/07.
//

import Foundation
import UIKit

class StartViewController: UIViewController {
    
    private lazy var startImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "")
        
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    
}

private extension StartViewController {
    func setupLayout(){
        
        [startImageView].forEach{ addSubview($0) }
    
    }
}

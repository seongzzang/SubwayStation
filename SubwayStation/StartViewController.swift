//
//  StartViewController.swift
//  SubwayStation
//
//  Created by 양성혜 on 2023/01/07.
//

import SnapKit
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
        startImageView.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(20.0)
            $0.trailing.equalToSuperview().inset(20.0)
            $0.top.equalToSuperview().inset(50.0)
        }
    
    }
}

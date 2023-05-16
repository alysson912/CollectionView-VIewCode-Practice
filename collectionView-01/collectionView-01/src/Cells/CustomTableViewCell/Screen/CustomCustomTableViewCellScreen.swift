//
//  CustomCustomTableViewCell.swift
//  collectionView-01
//
//  Created by ALYSSON DODO on 16/05/23.
//

import UIKit

class CustomCustomTableViewCellScreen: UIView {

    lazy var genericLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 45, weight: .bold)
        return label
    }()
    
    private func addViews(){
        addSubview(genericLabel)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            genericLabel.topAnchor.constraint(equalTo: topAnchor),
            genericLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            genericLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            genericLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}

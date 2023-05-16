//
//  CustomTableViewCell.swift
//  collectionView-01
//
//  Created by ALYSSON DODO on 16/05/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    static  let identifier: String = String(describing: CustomTableViewCell.self)
    
    private lazy var screen: CustomCustomTableViewCellScreen = {
        let view = CustomCustomTableViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews(){
        addSubview(screen)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            screen.topAnchor.constraint(equalTo: topAnchor),
            screen.leadingAnchor.constraint(equalTo: leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: trailingAnchor),
            screen.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}

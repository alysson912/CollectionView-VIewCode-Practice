//
//  HomeScreen.swift
//  collectionView-01
//
//  Created by ALYSSON DODO on 13/05/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none // retirando linhas
        tableView.showsVerticalScrollIndicator = false // desativando scrool indicator
        // TO DO: Register
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
        tableView.backgroundColor = .red //UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        return tableView
    }()
    
    public func configProtocolsTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
        addViews()
        configConstraints()
    }
    
    private func addViews(){
        addSubview(tableView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private  func configConstraints(){
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}

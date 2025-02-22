//
//  BaseViewController.swift
//  Bark
//
//  Created by huangfeng on 2018/6/25.
//  Copyright © 2018 Fin. All rights reserved.
//

import Material
import UIKit
class BaseViewController: UIViewController {
    let viewModel: ViewModel
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        
        self.view.backgroundColor = BKColor.background.primary
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.largeTitleDisplayMode = .automatic
        makeUI()
    }

    var isViewModelBinded = false
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if !isViewModelBinded {
            isViewModelBinded = true
            self.bindViewModel()
        }
    }
    
    func makeUI() {}

    func bindViewModel() {}
}

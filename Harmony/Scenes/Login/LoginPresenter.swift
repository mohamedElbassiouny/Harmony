//
//  LoginPresenter.swift
//  Harmony
//
//  Created by Mohamed Elbassiouny on 8/25/19.
//  Copyright © 2019 Mohamed Elbassiouny. All rights reserved.
//

import Foundation
protocol LoginPresenter {
    func Validate()
    func signIn()
}

class loginPresenterImplmentation: LoginPresenter {
    private var view: LoginView
    init(view: LoginView) {
        self.view = view
    }
    func Validate() {
        <#code#>
    }
    
    func signIn() {
        <#code#>
    }
}

//
//  Models.swift
//  AppStoreSearch
//
//  Created by Seth Danner on 1/30/19.
//  Copyright © 2019 Seth Danner. All rights reserved.
//

import UIKit

class AppCategory: NSObject {
    
    var name: String?
    var apps: [App]?
    
    static func sampleAppCategories() -> [AppCategory] {
        
        let bestNewAppsCategory = AppCategory()
        bestNewAppsCategory.name = "Best New Apps"
        
        var apps = [App]()
        
        // logic
        let frozenApp = App()
        frozenApp.name = "Disney Build Frozen: Frozen"
        frozenApp.imageName = "frozen"
        frozenApp.category = "Entertainment"
        frozenApp.price = NSNumber(floatLiteral: 3.99)
        apps.append(frozenApp)
        
        bestNewAppsCategory.apps = apps
        
        let bestNewGamesCategory = AppCategory()
        bestNewGamesCategory.name = "Best New Games"
        
        var bestNewGamesApps = [App]()
        
        let telepaintapp = App()
        telepaintapp.name = "Telepaint"
        telepaintapp.category = "Games"
        telepaintapp.price = NSNumber(floatLiteral: 2.99)
        
        bestNewGamesApps.append(telepaintapp)
        bestNewGamesCategory.apps = bestNewGamesApps
        
        return [bestNewAppsCategory, bestNewGamesCategory]
    }
}

class App: NSObject {
    
    var id: NSNumber?
    var name: String?
    var category: String?
    var imageName: String?
    var price: NSNumber?
}


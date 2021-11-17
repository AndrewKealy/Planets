//
//  PlanetsViewModel.swift
//  Planets
//
//  Created by Andrew Kealy on 17/11/2021.
//

import SwiftUI

class PlanetsViewModel: ObservableObject {
    
    @Published private var model: PlanetsModel = PlanetsModel()
    

    
    var nextIsAvailable: Bool  {
         model.nextIsAvailable
    }
    
    var previousIsAvailable: Bool {
        model.previousIsAvailable
    }

    var currentModel: Model {
        model.currentModel
        }
    
    func getNextModel() {
        model.currentModel = model.getNextModel()

    }
    
    func getPreviousModel() {
        model.currentModel = model.getPreviousModel()

    }
    
}

//
//  ContentView.swift
//  Planets
//
//  Created by Andrew Kealy on 17/11/2021.
//

import SwiftUI
import SceneKit

struct ContentView: View {
    
    var body: some View {
        Home()
    }
}

// Home View

struct Home: View {
    
    @ObservedObject var planetsViewModel = PlanetsViewModel()
    var body: some View {
        VStack {
            
            SceneView(scene: SCNScene(named: planetsViewModel.currentModel.modelName),
                      options: [.autoenablesDefaultLighting,
                                .allowsCameraControl])
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
            
            
            ZStack {
                // Forward and backward buttons
                
                HStack {
                    Button {
                        withAnimation {
                            if planetsViewModel.previousIsAvailable {
                                planetsViewModel.getPreviousModel()
                            }
                        }
                    } label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 35, weight: .bold))
                            .opacity(!planetsViewModel.previousIsAvailable ? 0.3 : 1.0)
                    } .disabled(!planetsViewModel.previousIsAvailable ? true : false)
                    
                    Spacer(minLength: 0)
                    
                    Button {
                        withAnimation(.spring()) {
                            if planetsViewModel.nextIsAvailable {
                                planetsViewModel.getNextModel()
                            }
                        }
                    } label: {
                        Image(systemName: "chevron.right")
                            .font(.system(size: 35, weight: .bold))
                            .opacity(!planetsViewModel.nextIsAvailable ? 0.3 : 1.0)
                    } .disabled(!planetsViewModel.nextIsAvailable ? true : false)
                    
                }
                
                Text(planetsViewModel.currentModel.name)
                    .font(.system(size: 45, weight: .bold, design: .monospaced))
            }
            .foregroundColor(.black)
            .padding(.horizontal)
            .padding(.vertical, 30)
            
            VStack(alignment: .leading
                   , spacing: 25) {
                Text("About")
                    .font(.title2)
                    .fontWeight(.bold)
                
                ScrollView{
                    Text(planetsViewModel.currentModel.details)
                }
                
                
                
            } .padding(.horizontal)
            
            
            Spacer(minLength: 0)
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

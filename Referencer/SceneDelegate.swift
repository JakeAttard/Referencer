//
//  SceneDelegate.swift
//  Referencer
//
//  Created by Jake Attard on 2/3/20.
//  Copyright © 2020 Jake Attard. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        let contentView = ContentView(viewModel: ViewModel(listTitle: "Formula One Drivers", formulaOneDrivers: [
                    
            // Formula One Drivers
                    
            // Lewis Hamilton
            FormulaOneDriver(formulaOneDriverImage: "lewishH", formulaOneDriverName: "Lewis Hamilton", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: 6, formulaOneDriverRaceStarts: 250, formulaOneDriverRaceWins: 84, formulaOneDriverPodiums: 151, formulaOneDriverPolePositions: 88, formulaOneDriverFastestLaps: 47, formulaOneDriverLapsCompleted: 14216, formulaOneDriverCareerPoints: 3431),
                    
            // Valtteri Bottas
            FormulaOneDriver(formulaOneDriverImage: "valtteriB", formulaOneDriverName: "Valtteri Bottas", formulaOneDriverNationality: "Finland", formulaOneDriverTeam: "Mercedes", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 139, formulaOneDriverRaceWins: 7, formulaOneDriverPodiums: 45, formulaOneDriverPolePositions: 11, formulaOneDriverFastestLaps: 13, formulaOneDriverLapsCompleted: 7982, formulaOneDriverCareerPoints: 1289),
                    
            // Sebastian Vettel
            FormulaOneDriver(formulaOneDriverImage: "sebastianV", formulaOneDriverName: "Sebastian Vettel", formulaOneDriverNationality: "Germany", formulaOneDriverTeam: "Ferrari", formulaOneDriverChampionships: 4, formulaOneDriverRaceStarts: 240, formulaOneDriverRaceWins: 53, formulaOneDriverPodiums: 120, formulaOneDriverPolePositions: 57, formulaOneDriverFastestLaps: 38, formulaOneDriverLapsCompleted: 13162, formulaOneDriverCareerPoints: 2985),
                    
            // Charles Leclerc
            FormulaOneDriver(formulaOneDriverImage: "charlesL", formulaOneDriverName: "Charles Leclerc", formulaOneDriverNationality: "Monaco", formulaOneDriverTeam: "Ferrari", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 42, formulaOneDriverRaceWins: 2, formulaOneDriverPodiums: 10, formulaOneDriverPolePositions: 7, formulaOneDriverFastestLaps: 4, formulaOneDriverLapsCompleted: 2275, formulaOneDriverCareerPoints: 303),
                    
            // Max Verstappen
            FormulaOneDriver(formulaOneDriverImage: "maxV", formulaOneDriverName: "Max Vertsappen", formulaOneDriverNationality: "Netherlands", formulaOneDriverTeam: "Redbull", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 102, formulaOneDriverRaceWins: 8, formulaOneDriverPodiums: 31, formulaOneDriverPolePositions: 2, formulaOneDriverFastestLaps: 7, formulaOneDriverLapsCompleted: 5334, formulaOneDriverCareerPoints: 948),

            // Alexander Albon
            FormulaOneDriver(formulaOneDriverImage: "alexanderA", formulaOneDriverName: "Alexander Albon", formulaOneDriverNationality: "Thailand", formulaOneDriverTeam: "Redbull", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 21, formulaOneDriverRaceWins: 0, formulaOneDriverPodiums: 0, formulaOneDriverPolePositions: 0, formulaOneDriverFastestLaps: 0, formulaOneDriverLapsCompleted: 1245, formulaOneDriverCareerPoints: 92),
                    
            // Carlos Sainz Jr
            FormulaOneDriver(formulaOneDriverImage: "carlosS", formulaOneDriverName: "Carlos Sainz Jr", formulaOneDriverNationality: "Spain", formulaOneDriverTeam: "McLaren", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 102, formulaOneDriverRaceWins: 0, formulaOneDriverPodiums: 1, formulaOneDriverPolePositions: 0, formulaOneDriverFastestLaps: 0, formulaOneDriverLapsCompleted: 5346, formulaOneDriverCareerPoints: 267),

            // Lando Norris
            FormulaOneDriver(formulaOneDriverImage: "landoN", formulaOneDriverName: "Lando Norris", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "McLaren", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 21, formulaOneDriverRaceWins: 0, formulaOneDriverPodiums: 0, formulaOneDriverPolePositions: 0, formulaOneDriverFastestLaps: 0, formulaOneDriverLapsCompleted: 1102, formulaOneDriverCareerPoints: 49),
                    
            // Daniel Ricciardo
            FormulaOneDriver(formulaOneDriverImage: "danielR", formulaOneDriverName: "Daniel Ricciardo", formulaOneDriverNationality: "Australian", formulaOneDriverTeam: "Renault", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 177, formulaOneDriverRaceWins: 7, formulaOneDriverPodiums: 29, formulaOneDriverPolePositions: 3, formulaOneDriverFastestLaps: 11, formulaOneDriverLapsCompleted: 9230, formulaOneDriverCareerPoints: 1040),
                    
            // Esteban Ocon
            FormulaOneDriver(formulaOneDriverImage: "estebanO", formulaOneDriverName: "Esteban Ocon", formulaOneDriverNationality: "France", formulaOneDriverTeam: "Renault", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 50, formulaOneDriverRaceWins: 0, formulaOneDriverPodiums: 0, formulaOneDriverPolePositions: 0, formulaOneDriverFastestLaps: 0, formulaOneDriverLapsCompleted: 2681, formulaOneDriverCareerPoints: 136),
                    
            // Pierre Gasly
            FormulaOneDriver(formulaOneDriverImage: "pierreG", formulaOneDriverName: "Pierre Gasly", formulaOneDriverNationality: "France", formulaOneDriverTeam: "Alpha Tauri", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 47, formulaOneDriverRaceWins: 0, formulaOneDriverPodiums: 1, formulaOneDriverPolePositions: 0, formulaOneDriverFastestLaps: 2, formulaOneDriverLapsCompleted: 2569, formulaOneDriverCareerPoints: 124),
                    
            // Daniil Kvyat
            FormulaOneDriver(formulaOneDriverImage: "daniilK", formulaOneDriverName: "Daniil Kyvat", formulaOneDriverNationality: "Russian", formulaOneDriverTeam: "Alpha Tauri", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 93, formulaOneDriverRaceWins: 0, formulaOneDriverPodiums: 3, formulaOneDriverPolePositions: 0, formulaOneDriverFastestLaps: 1, formulaOneDriverLapsCompleted: 4865, formulaOneDriverCareerPoints: 170),
                    
            // Sergio Pérez
            FormulaOneDriver(formulaOneDriverImage: "sergioP", formulaOneDriverName: "Sergio Pérez", formulaOneDriverNationality: "Mexico", formulaOneDriverTeam: "Racing Point", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 176, formulaOneDriverRaceWins: 0, formulaOneDriverPodiums: 0, formulaOneDriverPolePositions: 0, formulaOneDriverFastestLaps: 4, formulaOneDriverLapsCompleted: 9767, formulaOneDriverCareerPoints: 580),
                    
            // Lance Stroll
            FormulaOneDriver(formulaOneDriverImage: "lanceS", formulaOneDriverName: "Lance Stroll", formulaOneDriverNationality: "Canada", formulaOneDriverTeam: "Racing Point", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 62, formulaOneDriverRaceWins: 0, formulaOneDriverPodiums: 1, formulaOneDriverPolePositions: 0, formulaOneDriverFastestLaps: 0, formulaOneDriverLapsCompleted: 3423, formulaOneDriverCareerPoints: 67),
                    
            // Kimi Räikkönen
            FormulaOneDriver(formulaOneDriverImage: "kimiR", formulaOneDriverName: "Kimi Räikkönen", formulaOneDriverNationality: "Finland", formulaOneDriverTeam: "Alfa Romeo", formulaOneDriverChampionships: 1, formulaOneDriverRaceStarts: 315, formulaOneDriverRaceWins: 21, formulaOneDriverPodiums: 103, formulaOneDriverPolePositions: 18, formulaOneDriverFastestLaps: 46, formulaOneDriverLapsCompleted: 16605, formulaOneDriverCareerPoints: 1854),

            // Antonio Giovinazzi
            FormulaOneDriver(formulaOneDriverImage: "antonioG", formulaOneDriverName: "Antonio Giovinazzi", formulaOneDriverNationality: "Italy", formulaOneDriverTeam: "Alfa Romeo", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 23, formulaOneDriverRaceWins: 0, formulaOneDriverPodiums: 0, formulaOneDriverPolePositions: 0, formulaOneDriverFastestLaps: 0, formulaOneDriverLapsCompleted: 1269, formulaOneDriverCareerPoints: 14),
                
            // Romain Grojsean
            FormulaOneDriver(formulaOneDriverImage: "romainG", formulaOneDriverName: "Romain Grosjean", formulaOneDriverNationality: "France", formulaOneDriverTeam: "Haas", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 164, formulaOneDriverRaceWins: 0, formulaOneDriverPodiums: 10, formulaOneDriverPolePositions: 0, formulaOneDriverFastestLaps: 1, formulaOneDriverLapsCompleted: 8072, formulaOneDriverCareerPoints: 389),
                    
            // Kevin Magnussen
            FormulaOneDriver(formulaOneDriverImage: "kevinM", formulaOneDriverName: "Kevin Magnussen", formulaOneDriverNationality: "Denmark", formulaOneDriverTeam: "Haas", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 102, formulaOneDriverRaceWins: 0, formulaOneDriverPodiums: 1, formulaOneDriverPolePositions: 0, formulaOneDriverFastestLaps: 2, formulaOneDriverLapsCompleted: 5556, formulaOneDriverCareerPoints: 157),
                    
            // George Russell
            FormulaOneDriver(formulaOneDriverImage: "georgeR", formulaOneDriverName: "George Russell", formulaOneDriverNationality: "United Kingdom", formulaOneDriverTeam: "Williams", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 21, formulaOneDriverRaceWins: 0, formulaOneDriverPodiums: 0, formulaOneDriverPolePositions: 0, formulaOneDriverFastestLaps: 0, formulaOneDriverLapsCompleted: 1182, formulaOneDriverCareerPoints: 0),
                    
            // Nicholas Latifi
            FormulaOneDriver(formulaOneDriverImage: "nicholasL", formulaOneDriverName: "Nicholas Latifi", formulaOneDriverNationality: "Canada", formulaOneDriverTeam: "Williams", formulaOneDriverChampionships: 0, formulaOneDriverRaceStarts: 0, formulaOneDriverRaceWins: 0, formulaOneDriverPodiums: 0, formulaOneDriverPolePositions: 0, formulaOneDriverFastestLaps: 0, formulaOneDriverLapsCompleted: 0, formulaOneDriverCareerPoints: 0)
                ]))

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}


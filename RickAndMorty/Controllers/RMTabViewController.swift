//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Mehmet Ali Vargün on 21.01.2023.
//

import UIKit

final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpTabs()
        // Do any additional setup after loading the view.
    }

    private func setUpTabs(){
        let charachterVc = RMCharacterViewController()
        let locationsVc = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingsVc = RMSettingsViewController()
        
        charachterVc.navigationItem.largeTitleDisplayMode = .automatic
        locationsVc.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVc.navigationItem.largeTitleDisplayMode = .automatic
        
        let navChar = UINavigationController(rootViewController: charachterVc)
        let navLocations = UINavigationController(rootViewController: locationsVc)
        let navEpisodes = UINavigationController(rootViewController: episodeVC)
        let navSettings = UINavigationController(rootViewController: settingsVc)
        
        navChar.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        navLocations.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        navEpisodes.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        navSettings.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        for nav in [navChar,navLocations,navEpisodes,navSettings] {
            nav.navigationBar.prefersLargeTitles = true
        }
        setViewControllers([navChar,navLocations,navEpisodes,navSettings], animated: true)
        
    }

}


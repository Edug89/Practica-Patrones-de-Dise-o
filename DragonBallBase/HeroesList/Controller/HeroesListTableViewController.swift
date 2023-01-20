//
//  HeroesListTableViewController.swift
//  DragonBallBase
//
//  Created by Eduardo Martinez Palomino on 16/1/23.
//

import Foundation
import UIKit

class HeroesListTableViewController: UIViewController {
    
    var mainView: HeroesListView { self.view as! HeroesListView }// convertimos la vista de la clase tableView a HeroesList View
    
    var heroes: [HeroModel] = []
    var viewModel: HeroListViewModel?
    
    var tableViewDataSource: HeroesListTableViewDataSource? //Cargamos la info de HeroesListTableView
    var tableViewDelegate: HeroesListTableViewDelegate? //Cargamos la info de HeroesListTableViewDelegate
    
    
    override func loadView() {
        view = HeroesListView()
        
        tableViewDataSource = HeroesListTableViewDataSource(tableView: mainView.heroesTableView) //Aquí creamos
        mainView.heroesTableView.dataSource = tableViewDataSource //Aquí lo enlazamos
        
        tableViewDelegate = HeroesListTableViewDelegate()
        mainView.heroesTableView.delegate = tableViewDelegate
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        SetUpUpdateUI()
        getData()
        setUpTableDelegate()
            
        }
    
    func SetUpUpdateUI() {
        viewModel = HeroListViewModel()
        // Preparándome para recibir los datos que viene del viewModel
        viewModel?.updateUI = { [weak self] heroes in
            self?.heroes = heroes
            self?.tableViewDataSource?.heroes = heroes
        }
    }
    
    func getData() {
        //Call api to get hero list
        viewModel?.fetchData()
        
    }
    
    func setUpTableDelegate() {
        tableViewDelegate?.didTapOncell = { [weak self] index in
            //Indicamos por seguridad que si tenemos el datasource, pase a las siguientes líneas.
            guard let datasource = self?.tableViewDataSource else {
                return
            }
            
            //Get the hero in the hero list according to the position index
            let hero = datasource.heroes[index]
            
            //Prepara el viewController para mostrarlo
            let heroDetailsViewController = HeroDetailViewController(HeroDetailModel: hero)
            
            //Enseña un nuevo view controller con el heroe
            self?.present(heroDetailsViewController, animated: true)
            
        }
    }
}

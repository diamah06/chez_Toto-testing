//
//  ChezTotoTests.swift
//  ChezTotoTests
//
//  Created by Mahdia Amriou on 23/11/2023.
//

import XCTest
@testable import ChezToto

final class ChezTotoTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetData() {
            let viewModel = ViewModel()
            viewModel.getData()
        //Vérifier que menuArray n'est pas nil, il a bien chargé les données
            XCTAssertNotNil(viewModel.menuArray)
        //vérifie que le nombre d'éléments dans la propriété menuArray est de 2.
            XCTAssertEqual(viewModel.menuArray.count, 2)
        }
    
    func testRemoveDish() {
            let viewModel = ViewModel()
            viewModel.getData()
        //Supprimer le plat "Pizza Margherita"
            viewModel.removeDish(dishName: "Pizza Margherita")
         //Vérifier le nombre de plats :
            XCTAssertEqual(viewModel.menuArray[0].dishs.count, 2)
        }

    func testAddDish() {
//Créer une instance de ViewModel et charger les données :
        let viewModel = ViewModel()
        viewModel.getData()

        let newDish = Dish(name: "good pizza", description: " this is good pizza", price: 10)
        viewModel.addDish(dish: newDish, typeOfDish: "Pizza")

        XCTAssertEqual(viewModel.menuArray[0].dishs.count, 2)
        //  XCTAssertEqual(viewModel.menuArray[0].dishs[2].name, "good pizza")
    }
        func testAddNewTypeOfDish() {
            let viewModel = ViewModel()
            viewModel.getData()
            viewModel.addNewTypeOfDish(typeOfDish: "Salade")
            XCTAssertEqual(viewModel.menuArray.count, 3)
        }
    

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}

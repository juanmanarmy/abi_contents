//
//  ViewController.swift
//  abi_contents
//
//  Created by Bill Gates on 11/19/19.
//  Copyright © 2019 juan. All rights reserved.
//

import UIKit
import ModernSearchBar

// IMPORT MODERN SEARCH BAR


class ViewController: UIViewController, ModernSearchBarDelegate {

    
    @IBOutlet weak var modernSearchBar: ModernSearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.modernSearchBar.delegateModernSearchBar = self

        // 1 - With an Array<String>
        var suggestionList = Array<String>()
        suggestionList.append("Onions")
        suggestionList.append("Celery")
        suggestionList.append("Stark")
        suggestionList.append("Mark")
        suggestionList.append("Anyongasayooooh")
        suggestionList.append("Celery")
        suggestionList.append("Bao bo")
        suggestionList.append("Gatot")
        suggestionList.append("Celery")
        suggestionList.append("Kambing")
        suggestionList.append("Patatas")
        suggestionList.append("Antonyo")
        suggestionList.append("Lugaw")
        
        self.modernSearchBar.setDatas(datas: suggestionList)
        
        
    }

    ///Called if you use String suggestion list
    func onClickItemSuggestionsView(item: String) {
       print("User touched this item: "+item)
    }

}


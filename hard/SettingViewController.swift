//
//  SettingViewController.swift
//  hard
//
//  Created by apple on 2019. 4. 30..
//  Copyright © 2019년 apple. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    let listSection = [[" "],[" "]]
    let listItem = [["알림 수신 동의"],["서비스 이용약관","개인정보 취급방침","고객센터","현재버전","오픈소스 라이센스"]]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return listSection.count
    }
    //몇개 보여줄래?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if 0 == section{
            return 1
        }
        else{
            return 5
        }
    }
    // 셀 어떻게 표현?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if 0==indexPath.section{
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell1 else{
            return UITableViewCell()
        }
            cell.name1.text = listItem[indexPath.section][indexPath.row]
        return cell
        }
        else{
            guard let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as? ListCell2 else{
                return UITableViewCell()
            }
            cell1.name2.text = listItem[indexPath.section][indexPath.row]
            return cell1
        }
        
    }
    // 셀 클릭되면 어떻게?
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("->\(indexPath.row)")
    }

}
class ListCell1: UITableViewCell{
    @IBOutlet weak var name1: UILabel!
    @IBOutlet weak var switchB: UISwitch!
}
class ListCell2: UITableViewCell{
    @IBOutlet weak var name2: UILabel!
}

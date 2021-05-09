//
//  ResultViewController.swift
//  Gacha
//
//  Created by 山田倫太郎 on 2021/05/09.
//

import UIKit

class ResultViewController: UIViewController {
    
    //乱数用変数
    var number: Int!
    
    //背景画像とモンスター画像を表示させるためのImageViewを用意
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    @IBOutlet var monsterName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //0-9までの乱数生成
        number = Int.random(in: 0...9)
        if number == 9{
            //激レア
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold")
            monsterName.text = "激レアモンスター"
        }else if number > 7 {
            //レア
            monsterImageView.image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named: "bg_red")
            monsterName.text = "レアモンスター"
        }else {
            //ノーマル
            monsterImageView.image = UIImage(named: "monster003")
            backgroundImageView.image = UIImage(named: "bg_blue")
            monsterName.text = "ノーマルモンスター"
        }
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

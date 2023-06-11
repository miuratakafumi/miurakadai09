//
//  ViewController.swift
//  miurakadai09
//
//  Created by 三浦貴文 on 2023/06/06.
//

import UIKit

class ViewController: UIViewController, CityViewControllerDelegate {
    
    // ラベルを配置
    @IBOutlet private weak var label: UILabel!
    
    // ラベルの初期値を設定
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "未選択"
    }
    
    // CityViewControllerから地名を取得しラベルに表示したのちモーダルを閉じる
    func didSelectCity(name: String) {
        label.text = name
        dismiss(animated: true, completion: nil)
    }
    
    // キャンセルボタンを押したらモーダルを閉じる
    @IBAction private func cancel(segue: UIStoryboardSegue){
    }
    
    // 遷移先からデータを受け取るための準備
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 遷移先のセグエの名前をチェックし、セグエが一致していたら次の処理へ
        if segue.identifier == "CitySegue" {
            // セグエの型をUINavigationController型に変換して取得
            if let navigation = segue.destination as? UINavigationController,
               // UINavigationControllerの最初のビューコントローラーをCityViewController型に変換して取得
               let city = navigation.viewControllers.first as? CityViewController {
                city.delegate = self
            }
        }
    }
}

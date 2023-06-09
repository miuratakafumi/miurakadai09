//
//  CityViewController.swift
//  miurakadai09
//
//  Created by 三浦貴文 on 2023/06/08.
//

import UIKit

class CityViewController: UIViewController {
    // プロトコルに準拠したcityName変数を作成
    var cityName: DestinationDelegate? = nil
    
    // ボタンタップ時に"東京都"データを遷移元に渡す
    @IBAction private func tokyoButton(_ sender: Any) {
        cityName?.userDidEnterInformation(info: "東京都")
    }
    // ボタンタップ時に"神奈川県"データを遷移元に渡す
    @IBAction private func kanagawaButton(_ sender: Any) {
        cityName?.userDidEnterInformation(info: "神奈川県")
    }
    // ボタンタップ時に"埼玉県"データを遷移元に渡す
    @IBAction private func saitamaButton(_ sender: Any) {
        cityName?.userDidEnterInformation(info: "埼玉県")
    }
    // ボタンタップ時に"千葉県"データを遷移元に渡す
    @IBAction private func chibaButton(_ sender: Any) {
        cityName?.userDidEnterInformation(info: "千葉県")
    }
}

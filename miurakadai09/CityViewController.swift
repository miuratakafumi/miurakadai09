//
//  CityViewController.swift
//  miurakadai09
//
//  Created by 三浦貴文 on 2023/06/08.
//

import UIKit

// 文字列を取得するメソッドをプロトコルで定義
protocol CityViewControllerDelegate {
    func didSelectCity(name: String)
}

class CityViewController: UIViewController {
    // プロトコルに準拠したcityName変数を作成
    var delegate: CityViewControllerDelegate? = nil
    
    // ボタンタップ時に"東京都"データを遷移元に渡す
    @IBAction private func tokyoButton(_ sender: Any) {
        didSelectCity(name: "東京都")
    }
    // ボタンタップ時に"神奈川県"データを遷移元に渡す
    @IBAction private func kanagawaButton(_ sender: Any) {
        didSelectCity(name: "神奈川県")
    }
    // ボタンタップ時に"埼玉県"データを遷移元に渡す
    @IBAction private func saitamaButton(_ sender: Any) {
        didSelectCity(name: "埼玉県")
    }
    // ボタンタップ時に"千葉県"データを遷移元に渡す
    @IBAction private func chibaButton(_ sender: Any) {
        didSelectCity(name: "千葉県")
    }

    private func didSelectCity(name: String) {
        delegate?.didSelectCity(name: name)
    }
}

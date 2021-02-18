//
//  ViewController.swift
//  AppDevTasks5
//
//  Created by 山本 夏紀 on 2021/02/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var leftTextField: UITextField!
    @IBOutlet private weak var rightTextField: UITextField!
    @IBOutlet private weak var button: UIButton!
    @IBOutlet private weak var resultLabel: UILabel!

    private func presentAlert(alertMassage: String) {
        let alert = UIAlertController(title: "WORNING", message: alertMassage, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }

    @IBAction func buttonPressed(_ sender: Any) {
        guard let leftTexitFieldNum = Double(leftTextField.text!) else {
            presentAlert(alertMassage: "割られる数を入力して下さい")
            return
        }

        guard let rightTexitFieldNum = Double(rightTextField.text!) else {
            presentAlert(alertMassage: "割る数を入力して下さい")
            return
        }

        guard rightTexitFieldNum != 0 else {
            presentAlert(alertMassage: "0では割れません")
            return
        }

        resultLabel.text = String(leftTexitFieldNum / rightTexitFieldNum)
    }
}

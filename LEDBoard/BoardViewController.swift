//
//  BoardViewController.swift
//  LEDBoard
//
//  Created by 백래훈 on 2023/07/24.
//

import UIKit

class BoardViewController: UIViewController {

    @IBOutlet var topView: UIView!
    
    @IBOutlet var searchTextField: UITextField!
    
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var textColorModifyButton: UIButton!
    
    @IBOutlet var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designTopView()
        designSearchTextField()
        designSendButton()
        designTextColorModifyButton()
        designTextLabel()
        
    }
    
    // gesture 함수
    @IBAction func gestureTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
        topView.isHidden = topView.isHidden == true ? false : true
    }
    
    // keyboard return tap 함수
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        textLabel.text = searchTextField.text
        view.endEditing(true)
    }
    
    // 보내기 버튼 액션 함수
    @IBAction func sendButtonTapped(_ sender: UIButton) {
        textLabel.text = searchTextField.text
        view.endEditing(true)
    }
    
    // 랜덤 컬러 버튼 액션 함수
    @IBAction func setRandomColor(_ sender: UIButton) {
        textLabel.textColor = setRandomColor()
    }
    
    // 각 디자인 함수들
    func designTopView() {
        topView.layer.cornerRadius = 5
    }
    
    func designSearchTextField() {
        searchTextField.placeholder = "내용을 입력해주세요."
        searchTextField.borderStyle = .none
        searchTextField.addLeftPadding()
        searchTextField.font = .systemFont(ofSize: 15, weight: .regular)
    }

    func designSendButton() {
        sendButton.layer.cornerRadius = 10
        sendButton.layer.borderColor = UIColor.black.cgColor
        sendButton.layer.borderWidth = 1
        
        let attributedTitle = NSAttributedString(
            string: "보내기",
            attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15, weight: .regular),
                         NSAttributedString.Key.foregroundColor: UIColor.black])
        sendButton.setAttributedTitle(attributedTitle, for: .normal)
    }
    
    func designTextColorModifyButton() {
        textColorModifyButton.layer.cornerRadius = 10
        textColorModifyButton.layer.borderColor = UIColor.black.cgColor
        textColorModifyButton.layer.borderWidth = 1
        
        let attributedTitle = NSAttributedString(
            string: "Aa",
            attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15, weight: .regular),
                         NSAttributedString.Key.foregroundColor: UIColor.red])
        textColorModifyButton.setAttributedTitle(attributedTitle, for: .normal)
    }
    
    func designTextLabel() {
        textLabel.font = .systemFont(ofSize: 60, weight: .semibold)
        textLabel.textColor = setRandomColor()
    }
    
    // UIColor를 rgb 값으로 랜덤하게 설정해주는 함수
    func setRandomColor() -> UIColor {
        let red = Int.random(in: 0...255)
        let green = Int.random(in: 0...255)
        let blue = Int.random(in: 0...255)
        
        return UIColor(red: CGFloat(red)/255, green: CGFloat(green)/255, blue: CGFloat(blue)/255, alpha: 1.0)
    }
    
}

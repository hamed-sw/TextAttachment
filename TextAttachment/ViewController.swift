//
//  ViewController.swift
//  TextAttachment
//
//  Created by Hamed Amiry on 12.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let labe:UILabel = {
        let lebel = UILabel()
        lebel.frame = CGRect(x: 20, y: 300, width: 200, height: 300)
        lebel.numberOfLines = 0
        return lebel
    }()
    
//    let button: UIButton = {
//        let button = UIButton()
//        button.frame = CGRect(x: 20, y:300 , width: 200, height: 100)
//        //button.setTitle("hellow world", for: .normal)
//       // button.setTitleColor(.red, for: .normal)
//        button.backgroundColor = .systemGray
//      //  button.layer.cornerRadius = 30
//
//        return button
//
//    }()
    
    let string = NSMutableAttributedString(string: " hellow world", attributes: [.foregroundColor:UIColor.label,
                                                                                            
                                                                                                  .font:UIFont.systemFont(ofSize: 25)])
   // let attachment = NSTextAttachment()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(labe)
        view.addSubview(buttonss())
      
      
        let button = CustomButton(title: "Title", subtitle: "Subtitle")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.frame = CGRect(x: 100, y: 50, width: 200, height: 200)
        view.addSubview(button)
        

        string.insert(NSAttributedString(attachment: nsTextAttachment()), at: 0)
        string.append(.init(string: " ===== you can append"))
        labe.attributedText = string
    }
    @objc func tape() {
        print("done done")
    }

    func nsTextAttachment() -> NSTextAttachment {
        let attachment = NSTextAttachment()
        attachment.image = UIImage(systemName: "chevron.right")
        attachment.bounds = CGRect(x: 0, y: -5, width: 25, height: 25)
        attachment.image?.withTintColor(UIColor.red)
        
        return attachment
    }

    
    func  buttonss() -> UIButton {
        let button = CustomButton.init(titles: "Hello World")
        button.translatesAutoresizingMaskIntoConstraints = false
            button.frame = CGRect(x: 20, y:300 , width: 200, height: 100)
            button.setTitleColor(.red, for: .normal)
            button.backgroundColor = .systemGray
            button.layer.cornerRadius = 30
            button.addTarget(self, action: #selector(tape), for: .touchUpInside)

            return button
    
        }
}


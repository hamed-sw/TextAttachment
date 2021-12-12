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
    
    let string = NSMutableAttributedString(string: " hellow world this is good news", attributes: [.foregroundColor:UIColor.label,
                                                                                            
                                                                                                  .font:UIFont.systemFont(ofSize: 25)])
   // let attachment = NSTextAttachment()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(labe)
       
       // string.append(NSAttributedString(attachment: attachment))
        string.insert(NSAttributedString(attachment: nsTextAttachment()), at: 0)
        string.append(.init(string: " ===== you can append"))
        labe.attributedText = string
        // Do any additional setup after loading the view.
    }

    func nsTextAttachment() -> NSTextAttachment {
        let attachment = NSTextAttachment()
        attachment.image = UIImage(systemName: "chevron.right")
        attachment.bounds = CGRect(x: 0, y: -5, width: 25, height: 25)
        attachment.image?.withTintColor(UIColor.red)
        
        return attachment
    }

}


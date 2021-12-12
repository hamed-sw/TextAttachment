//
//  CustomeButton.swift
//  TextAttachment
//
//  Created by Hamed Amiry on 12.12.2021.
//

import UIKit

class CustomButton: UIButton {
    
    required init(title: String, subtitle: String) {
        super.init(frame: CGRect.zero)
       
        let style = NSMutableParagraphStyle()
        style.alignment = NSTextAlignment.center
        style.lineBreakMode = NSLineBreakMode.byWordWrapping

        let titleAttributes: [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.foregroundColor: UIColor.label,
            NSAttributedString.Key.underlineStyle : NSUnderlineStyle.single.rawValue,
            NSAttributedString.Key.font : UIFont.preferredFont(forTextStyle: UIFont.TextStyle.largeTitle),
            NSAttributedString.Key.paragraphStyle : style
        ]
        let subtitleAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.label,
            NSAttributedString.Key.font : UIFont.preferredFont(forTextStyle: UIFont.TextStyle.body),
            NSAttributedString.Key.paragraphStyle : style
        ]

        let attributedString = NSMutableAttributedString(string: title, attributes: titleAttributes)
        attributedString.append(NSAttributedString(string: "\n"))
        attributedString.append(NSAttributedString(string: subtitle, attributes: subtitleAttributes))

        setAttributedTitle(attributedString, for: UIControl.State.normal)
        titleLabel?.numberOfLines = 0
        titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        
    }
    
    required init(titles: String) {
        super.init(frame: CGRect.zero)
        
        let titleAttributs: [NSAttributedString.Key: Any] = [
            NSAttributedString.Key.foregroundColor: UIColor.label,
        ]
        let attributstring = NSMutableAttributedString(string: titles, attributes: titleAttributs)
        attributstring.insert(NSAttributedString(attachment: chevronRight()), at: 0)
        setAttributedTitle(attributstring, for: UIControl.State.normal)
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func chevronRight() -> NSTextAttachment {
        let attachment = NSTextAttachment()
        attachment.image = UIImage(systemName: "chevron.right")
        attachment.bounds = CGRect(x: 0, y: -5, width: 20, height: 20)
        attachment.image?.withTintColor(UIColor.red)
        return attachment
    }
    func chevronDown() -> NSTextAttachment {
        let attachment = NSTextAttachment()
        attachment.image = UIImage(systemName: "chevron.down")
        attachment.bounds = CGRect(x: 0, y: -5, width: 20, height: 20)
        attachment.image?.withTintColor(UIColor.red)
        return attachment
    }
}

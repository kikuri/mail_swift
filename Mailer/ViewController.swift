//
//  ViewController.swift
//  Mailer
//
//  Created by kikuchi wataru on 2016/12/05.
//  Copyright © 2016年 kikuchi wataru. All rights reserved.
//

import UIKit
import MessageUI


class ViewController: UIViewController,MFMailComposeViewControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var mailTapped: UIButton!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func mailTapped(_ sender: Any) {
        //メールが送信できるかどうかの確認は必ず必要
        if MFMailComposeViewController.canSendMail() {
            let e = MFMailComposeViewController()
            e.mailComposeDelegate = self //delegateの設定
            e.setToRecipients(["test@swift-study.com"]) //宛先アドレス
            e.setCcRecipients(["cc@swift-study.com"]) //CCアドレス
            e.setBccRecipients(["bcc@swift-study.com"]) //BCCアドレス
            e.setSubject("テストサブジェクトです") //サブジェクト
            e.setMessageBody("テスト本文です", isHTML: false) //メール本文
            present(e, animated: true, completion: nil) //メール作成画面呼び出し
        } else {
            print("送信できません")
        }
    }
   
    
   }


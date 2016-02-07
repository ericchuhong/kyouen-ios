//
//  KyouenImageView.swift
//  TumeKyouen
//
//  Created by 石倉 昇 on 2016/02/07.
//  Copyright © 2016年 noboru. All rights reserved.
//

import Foundation

class KyouenImageView: UIImageView {
    var buttons = [StoneButton]()
    var model: TumeKyouenModel? = nil

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        userInteractionEnabled = true
        backgroundColor = UIColor.greenColor()
    }

    func setStage(model: TumeKyouenModel) {
        self.model = model

        // ボタン情報を初期化
        for button in buttons {
            button.removeFromSuperview()
        }
        buttons = [StoneButton]()

        // 設定されているステージ情報を反映
        for y in 0..<Int(model.size) {
            for x in 0..<Int(model.size) {
                let state = Int(String(model.stage.startIndex.advancedBy(0)))!
                let button = StoneButton(size: Int(model.size), defaultState: state)
                button.transform = CGAffineTransformMakeTranslation(
                    CGFloat(x) * button.frame.size.width, CGFloat(y) * button.frame.size.width)
                buttons.append(button)
                addSubview(button)
            }
        }
    }

    func getCurrentStage() -> String {
        var stage = ""
        for i in 0..<(Int(model!.size) * Int(model!.size)) {
            let button = buttons[i]
            stage += String(button.stoneState)
        }
        return stage
    }
}

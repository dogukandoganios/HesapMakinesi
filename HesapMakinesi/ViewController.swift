//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by Doğukan Doğan on 8.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let clearButton = UIButton()
    let eksiButton = UIButton()
    let yuzdeButton = UIButton()
    let bolmeButton = UIButton()
    let yediButton = UIButton()
    let sekizButton = UIButton()
    let dokuzButton = UIButton()
    let carpimButton = UIButton()
    let dortButton = UIButton()
    let besButton = UIButton()
    let altiButton = UIButton()
    let cikarButton = UIButton()
    let birButton = UIButton()
    let ikiButton = UIButton()
    let ucButton = UIButton()
    let toplaButton = UIButton()
    let sifirButton = UIButton()
    let virgulButton = UIButton()
    let esittirButton = UIButton()
    let testButton = UIButton()
    let sayiTextView = UITextView()
    var sayi1 = 0.0
    var sayi2 = 0.0
    var sayi3 = 0
    var sonuc = Double()
    var tikla = 0
    var tikla2 = 0
    var gizliSonuc = 0.0
    var gizliSay = 0
    var islem = 0
    var witdh = 0.0
    var height = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        witdh = view.frame.size.width
        height = view.frame.size.height
        
        _ = buttonClass(buttonTitleInıt: "0", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .gray, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .gray, frameInıt: CGRect(x: witdh * 0.25 - witdh * 0.49 / 2, y: height * 0.9 - height * 0.11 / 2, width: witdh * 0.49, height: height * 0.11), buttonInıt: sifirButton)
        
        sifirButton.addTarget(self, action: #selector(sifirClick), for: UIControl.Event.touchUpInside)
        view.addSubview(sifirButton)
        
        _ = buttonClass(buttonTitleInıt: ",", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .gray, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .gray, frameInıt: CGRect(x: witdh * 0.62 - witdh * 0.24 / 2, y: height * 0.9 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: virgulButton)
        
        view.addSubview(virgulButton)
        
        _ = buttonClass(buttonTitleInıt: "=", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .orange, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .orange, frameInıt: CGRect(x: witdh * 0.87 - witdh * 0.24 / 2, y: height * 0.9 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: esittirButton)
        
        esittirButton.addTarget(self, action: #selector(esittirClick), for: UIControl.Event.touchUpInside)
        view.addSubview(esittirButton)
        
        _ = buttonClass(buttonTitleInıt: "1", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .gray, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .gray, frameInıt: CGRect(x: witdh * 0.125 - witdh * 0.24 / 2, y: height * 0.78 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: birButton)
        
        birButton.addTarget(self, action: #selector(birClick), for: UIControl.Event.touchUpInside)
        view.addSubview(birButton)
        
        _ = buttonClass(buttonTitleInıt: "2", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .gray, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .gray, frameInıt: CGRect(x: witdh * 0.38 - witdh * 0.24 / 2, y: height * 0.78 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: ikiButton)
        
        ikiButton.addTarget(self, action: #selector(ikiClick), for: UIControl.Event.touchUpInside)
        view.addSubview(ikiButton)
        
        _ = buttonClass(buttonTitleInıt: "3", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .gray, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .gray, frameInıt: CGRect(x: witdh * 0.625 - witdh * 0.24 / 2, y: height * 0.78 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: ucButton)
        
        ucButton.addTarget(self, action: #selector(ucClick), for: UIControl.Event.touchUpInside)
        view.addSubview(ucButton)
        
        _ = buttonClass(buttonTitleInıt: "+", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .orange, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .orange, frameInıt: CGRect(x: witdh * 0.87 - witdh * 0.24 / 2, y: height * 0.78 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: toplaButton)
        
        toplaButton.addTarget(self, action: #selector(artiClick), for: UIControl.Event.touchUpInside)
        view.addSubview(toplaButton)
        
        _ = buttonClass(buttonTitleInıt: "4", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .gray, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .gray, frameInıt: CGRect(x: witdh * 0.125 - witdh * 0.24 / 2, y: height * 0.66 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: dortButton)
        
        dortButton.addTarget(self, action: #selector(dortClick), for: UIControl.Event.touchUpInside)
        view.addSubview(dortButton)
        
        _ = buttonClass(buttonTitleInıt: "5", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .gray, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .gray, frameInıt: CGRect(x: witdh * 0.38 - witdh * 0.24 / 2, y: height * 0.66 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: besButton)
        
        besButton.addTarget(self, action: #selector(besClick), for: UIControl.Event.touchUpInside)
        view.addSubview(besButton)
        
        _ = buttonClass(buttonTitleInıt: "6", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .gray, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .gray, frameInıt: CGRect(x: witdh * 0.625 - witdh * 0.24 / 2, y: height * 0.66 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: altiButton)
        
        altiButton.addTarget(self, action: #selector(altiClick), for: UIControl.Event.touchUpInside)
        view.addSubview(altiButton)
        
        _ = buttonClass(buttonTitleInıt: "-", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .orange, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .orange, frameInıt: CGRect(x: witdh * 0.87 - witdh * 0.24 / 2, y: height * 0.66 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: cikarButton)
        
        cikarButton.addTarget(self, action: #selector(cikarClick), for: UIControl.Event.touchUpInside)
        view.addSubview(cikarButton)
        
        _ = buttonClass(buttonTitleInıt: "7", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .gray, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .gray, frameInıt: CGRect(x: witdh * 0.125 - witdh * 0.24 / 2, y: height * 0.54 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: yediButton)
        
        yediButton.addTarget(self, action: #selector(yediClick), for: UIControl.Event.touchUpInside)
        view.addSubview(yediButton)

        _ = buttonClass(buttonTitleInıt: "8", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .gray, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .gray, frameInıt: CGRect(x: witdh * 0.38 - witdh * 0.24 / 2, y: height * 0.54 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: sekizButton)
        
        sekizButton.addTarget(self, action: #selector(sekizClick), for: UIControl.Event.touchUpInside)
        view.addSubview(sekizButton)
        
        _ = buttonClass(buttonTitleInıt: "9", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .gray, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .gray, frameInıt: CGRect(x: witdh * 0.625 - witdh * 0.24 / 2, y: height * 0.54 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: dokuzButton)
        
        dokuzButton.addTarget(self, action: #selector(dokuzClick), for: UIControl.Event.touchUpInside)
        view.addSubview(dokuzButton)
        
        _ = buttonClass(buttonTitleInıt: "X", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .orange, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .orange, frameInıt: CGRect(x: witdh * 0.87 - witdh * 0.24 / 2, y: height * 0.54 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: carpimButton)
        
        carpimButton.addTarget(self, action: #selector(carpimClick), for: UIControl.Event.touchUpInside)
        view.addSubview(carpimButton)
        
        _ = buttonClass(buttonTitleInıt: "AC", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .orange, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .orange, frameInıt: CGRect(x: witdh * 0.125 - witdh * 0.24 / 2, y: height * 0.42 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: clearButton)
        
        clearButton.addTarget(self, action: #selector(clearClick), for: UIControl.Event.touchUpInside)
        view.addSubview(clearButton)
        
        _ = buttonClass(buttonTitleInıt: "+/-", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .orange, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .orange, frameInıt: CGRect(x: witdh * 0.38 - witdh * 0.24 / 2, y: height * 0.42 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: eksiButton)
        
        view.addSubview(eksiButton)
        
        _ = buttonClass(buttonTitleInıt: "%", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .orange, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .orange, frameInıt: CGRect(x: witdh * 0.625 - witdh * 0.24 / 2, y: height * 0.42 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: yuzdeButton)
        
        yuzdeButton.addTarget(self, action: #selector(yuzdeClick), for: UIControl.Event.touchUpInside)
        view.addSubview(yuzdeButton)
        
        _ = buttonClass(buttonTitleInıt: "/", buttonTitleColorInıt: .white, buttonBackgroundColorInıt: .orange, buttonCornerRadiusInıt: height * 0.11 / 2, buttonBorderInıt: 1, buttonBorderColorInıt: .orange, frameInıt: CGRect(x: witdh * 0.87 - witdh * 0.24 / 2, y: height * 0.42 - height * 0.11 / 2, width: witdh * 0.24, height: height * 0.11), buttonInıt: bolmeButton)
        
        bolmeButton.addTarget(self, action: #selector(bolmeClick), for: UIControl.Event.touchUpInside)
        view.addSubview(bolmeButton)
        
        sayiTextView.text = ""
        sayiTextView.layer.borderWidth = 1
        sayiTextView.layer.borderColor = UIColor.black.cgColor
        sayiTextView.backgroundColor = UIColor.black
        sayiTextView.textColor = UIColor.white
        sayiTextView.font = .systemFont(ofSize: 50)
        sayiTextView.textAlignment = NSTextAlignment.right
        sayiTextView.frame = CGRect(x: witdh * 0.5 - witdh * 0.95 / 2, y: height * 0.32 - 30, width: witdh * 0.95, height: 60)
        view.addSubview(sayiTextView)
        
        view.backgroundColor = UIColor.black
    }

    @objc func artiClick(){
        islem = 1
        if(tikla2 == 0){
            if(sonuc > 1){
                sayi1 = Double(sayiTextView.text)!
                sonuc = sayi1 + sonuc
                sayiTextView.text = String(sonuc)
                tikla = 1
                gizliSay += 1
                if(gizliSay > 3 && gizliSonuc != 0){
                    sayiTextView.text = String(gizliSonuc)
                    gizliSay = 0
                }
            }else{
                sayi1 = Double(sayiTextView.text)!
                tikla = 1
                tikla2 = 1
                gizliSay += 1
            }
        }else{
            sayi2 = Double(sayiTextView.text)!
            sonuc = sayi1 + sayi2
            sayiTextView.text = String(sonuc)
            tikla2 = 0
            tikla = 1
        }
    }
    
    @objc func cikarClick(){
        islem = 2
        if(tikla2 == 0){
            if(sonuc > 1){
                sayi1 = Double(sayiTextView.text)!
                sonuc = sayi1 - sonuc
                sayiTextView.text = String(sonuc)
                tikla = 1
            }else{
                sayi1 = Double(sayiTextView.text)!
                tikla = 1
                tikla2 = 1
            }
        }else{
            sayi2 = Double(sayiTextView.text)!
            sonuc = sayi1 - sayi2
            sayiTextView.text = String(sonuc)
            tikla2 = 0
            tikla = 1
        }
    }
    
    @objc func carpimClick(){
        islem = 3
        if(tikla2 == 0){
            if(sonuc > 1){
                sayi1 = Double(sayiTextView.text)!
                sonuc = sayi1 * sonuc
                sayiTextView.text = String(sonuc)
                tikla = 1
            }else{
                sayi1 = Double(sayiTextView.text)!
                tikla = 1
                tikla2 = 1
            }
        }else{
            sayi2 = Double(sayiTextView.text)!
            sonuc = sayi1 * sayi2
            sayiTextView.text = String(sonuc)
            tikla2 = 0
            tikla = 1
        }
    }
    
    @objc func bolmeClick(){
        islem = 4
        if(tikla2 == 0){
            if(sonuc > 1){
                sayi1 = Double(sayiTextView.text)!
                sonuc = sayi1 / sonuc
                sayiTextView.text = String(sonuc)
                tikla = 1
            }else{
                sayi1 = Double(sayiTextView.text)!
                tikla = 1
                tikla2 = 1
            }
        }else{
            sayi2 = Double(sayiTextView.text)!
            sonuc = sayi1 / sayi2
            sayiTextView.text = String(sonuc)
            tikla2 = 0
            tikla = 1
        }
    }
    
    @objc func yuzdeClick(){
        islem = 5
        if tikla2 == 0 {
            if sonuc < 1{
                sayi1 = Double(sayiTextView.text)!
                sonuc = sayi1 / 100
                sayiTextView.text = String(sonuc)
            }else {
                sonuc = sonuc / 100
                sayiTextView.text = String(sonuc)
            }
        }
    }
    
    @objc func esittirClick(){
        if(sonuc > 1){
            if(islem == 1){
                sayi1 = Double(sayiTextView.text)!
                sonuc = sayi1 + sonuc
                sayiTextView.text = String(sonuc)
            }else if(islem == 2){
                sayi1 = Double(sayiTextView.text)!
                sonuc = sayi1 - sonuc
                sayiTextView.text = String(sonuc)
            }else if(islem == 3){
                sayi1 = Double(sayiTextView.text)!
                sonuc = sayi1 * sonuc
                sayiTextView.text = String(sonuc)
            }else if(islem == 4){
                sayi1 = Double(sayiTextView.text)!
                sonuc = sayi1 / sonuc
                sayiTextView.text = String(sonuc)
            }
        }else{
            if(islem == 1){
                sayi2 = Double(sayiTextView.text)!
                sonuc = sayi1 + sayi2
                sayiTextView.text = String(sonuc)
            }else if(islem == 2){
                sayi2 = Double(sayiTextView.text)!
                sonuc = sayi1 - sayi2
                sayiTextView.text = String(sonuc)
            }else if(islem == 3){
                sayi2 = Double(sayiTextView.text)!
                sonuc = sayi1 * sayi2
                sayiTextView.text = String(sonuc)
            }else if(islem == 4){
                sayi2 = Double(sayiTextView.text)!
                sonuc = sayi1 / sayi2
                sayiTextView.text = String(sonuc)
            }
            
        }

    }
    
    @objc func clearClick(){
        sayiTextView.text = ""
        sayi1 = 0
        sayi2 = 0
        sayi3 = 0
        tikla2 = 0
        if sonuc != 0 {
            gizliSonuc = sonuc
        }
        sonuc = 0
        gizliSay = 0
        islem = 0
    }
    
    @objc func sifirClick(){
        sayiTextView.text += "0"
        if(tikla == 1){
            sayiTextView.text = ""
            sayiTextView.text += "0"
            tikla = 0
        }
    }
    
    @objc func birClick(){
        sayiTextView.text += "1"
        if(tikla == 1){
            sayiTextView.text = ""
            sayiTextView.text += "1"
            tikla = 0
        }
    }
    
    @objc func ikiClick(){
        sayiTextView.text += "2"
        if(tikla == 1){
            sayiTextView.text = ""
            sayiTextView.text += "2"
            tikla = 0
        }
    }
    
    @objc func ucClick(){
        sayiTextView.text += "3"
        if(tikla == 1){
            sayiTextView.text = ""
            sayiTextView.text += "3"
            tikla = 0
        }
    }
    
    @objc func dortClick(){
        sayiTextView.text += "4"
        if(tikla == 1){
            sayiTextView.text = ""
            sayiTextView.text += "4"
            tikla = 0
        }
    }
    
    @objc func besClick(){
        sayiTextView.text += "5"
        if(tikla == 1){
            sayiTextView.text = ""
            sayiTextView.text += "5"
            tikla = 0
        }
    }
    
    @objc func altiClick(){
        sayiTextView.text += "6"
        if(tikla == 1){
            sayiTextView.text = ""
            sayiTextView.text += "6"
            tikla = 0
        }
    }
    
    @objc func yediClick(){
        sayiTextView.text += "7"
        if(tikla == 1){
            sayiTextView.text = ""
            sayiTextView.text += "7"
            tikla = 0
        }
    }
    
    @objc func sekizClick(){
        sayiTextView.text += "8"
        if(tikla == 1){
            sayiTextView.text = ""
            sayiTextView.text += "8"
            tikla = 0
        }
    }
    
    @objc func dokuzClick(){
        sayiTextView.text += "9"
        if(tikla == 1){
            sayiTextView.text = ""
            sayiTextView.text += "9"
            tikla = 0
        }
    }
    
    
}


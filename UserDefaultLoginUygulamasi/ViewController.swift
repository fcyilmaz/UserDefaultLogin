//
//  ViewController.swift
//  UserDefaultLoginUygulamasi
//
//  Created by Fevzi Can Yılmaz on 29.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfieldKullaniciAdi: UITextField!
    @IBOutlet weak var textfieldSifre: UITextField!
    
    let d = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        let s = d.string(forKey: "sifre") ?? "bos"
        
        if ka != "bos" && s != "bos"{
             performSegue(withIdentifier: "girisToanasayfa", sender: nil)
        }
    }

    @IBAction func girisYap(_ sender: Any) {
        
        if let ka = textfieldKullaniciAdi.text , let s =
            textfieldSifre.text{
            if ka == "admin" && s == "123456"{
                d.set(ka, forKey: "kullaniciAdi")
                d.set(s, forKey: "sifre")
                
                performSegue(withIdentifier: "girisToanasayfa", sender: nil)
            }else{
                print("Hatalı Giriş")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //navigation barı kalktı, görünüm tam sayfa
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //diğer sayfadaki başlık kısmı gitmesin
        navigationController?.isNavigationBarHidden = false
    }
}


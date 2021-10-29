//
//  AnasayfaVC.swift
//  UserDefaultLoginUygulamasi
//
//  Created by Fevzi Can Yılmaz on 29.10.2021.
//

import UIKit

class AnasayfaVC: UIViewController {
    @IBOutlet weak var labelSonuc: UILabel!
    
    let d = UserDefaults.standard
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        navigationItem.hidesBackButton = true
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        
        labelSonuc.text = ka
        
        
    }
    

    @IBAction func cikisYap(_ sender: Any) {
        
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject(forKey: "sifre")
        
        //ana ekrana gider
        exit(-1)
    }
    

}

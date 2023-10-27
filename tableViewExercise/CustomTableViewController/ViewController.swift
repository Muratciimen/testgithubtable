//
//  ViewController.swift
//  tableViewExercise
//
//  Created by Murat Çimen on 5.06.2023.
//

import UIKit

struct Peoples{
    var avatar: String
    var fullName: String
    var supTitle: String
    var renk: UIColor
}


final class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
   
    @IBOutlet weak var imageListTableView: UITableView!
    
    var data = [
        Peoples(avatar:"avatar1", fullName: "Anıl AKSÜT", supTitle: "Lady Boy", renk: UIColor.systemPink),
        Peoples(avatar:"avatar2", fullName: "Kaan GÜLTEKİN", supTitle: "Developer", renk: UIColor.systemCyan),
        Peoples(avatar:"avatar3", fullName: "İlker KARA", supTitle: "Developer", renk: UIColor.systemCyan),
        Peoples(avatar:"avatar4", fullName: "İpek MENGÜTAY", supTitle: "Teacher", renk: UIColor.systemPink),
        Peoples(avatar:"avatar5", fullName: "Doğuş CANSIZOĞLU", supTitle: "Photographer", renk: UIColor.systemBlue),
        Peoples(avatar:"avatar6", fullName: "Barış ONAY", supTitle: "Designer", renk: UIColor.systemRed),
        Peoples(avatar:"avatar7", fullName: "Eray Kaan KARABULUT", supTitle: "Economist", renk: UIColor.systemBlue),
        Peoples(avatar:"avatar8", fullName: "Burak AKKUŞ", supTitle: "Kod adı YEŞİL", renk: UIColor.systemYellow),
        Peoples(avatar:"avatar9", fullName: "Onur BAKİ", supTitle: "Kaçan işçi çalıştırıyor", renk: UIColor.systemRed),
        Peoples(avatar:"avatar10", fullName: "Murat ÇİMEN", supTitle: "Junior Developer", renk: UIColor.systemYellow),
        Peoples(avatar:"avatar11", fullName: "İsmail UYUMAZ", supTitle: "KARAKTERİ OLMAYAN ADAM", renk: UIColor.systemBlue),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = imageListTableView.dequeueReusableCell(withIdentifier: "AvatarCell")! as! AvatarTableViewCell
        cell.bgView.backgroundColor = data[indexPath.row].renk
        cell.avatarImg.image=UIImage(named: data[indexPath.row].avatar)
        cell.fullNameTitle.text = data[indexPath.row].fullName
        cell.subTitle.text = data[indexPath.row].supTitle
        return cell
    }
}


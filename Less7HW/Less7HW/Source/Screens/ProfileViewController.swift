//
//  ProfileViewController.swift
//  Less7HW
//

//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var avaImageView: UIImageView!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var eMailLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    private let dataProvider = DataProviderService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loadUserDataButtonAction(_ sender: UIButton) {
        
        dataProvider.loadUserData(closure: { data in
            updateUI(object: data)
        })
    }
    
    @IBAction func loadAdminDataButtonAction(_ sender: UIButton) {
        
        dataProvider.loadAdminData(closure: { data in
            updateUI(object: data)
        })
    }
    
    func updateUI(object: ProfileData) {
        
        
        avaImageView.image = UIImage(named: object.avatarName)
        firstNameLabel.text = object.firstName
        lastNameLabel.text = object.lastName
        eMailLabel.text = object.eMail
        addressLabel.text = object.address
   }
}

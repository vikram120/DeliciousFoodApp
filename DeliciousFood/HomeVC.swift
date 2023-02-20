//
//  HomeVC.swift
//  Delicious Food//
//  Created by Vikram Kunwar on 17/02/23.
//

import UIKit

class HomeVC: UIViewController {

   // var likes: [String]!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var array = ["Veg Salad","Sandwich","Rice & Stew","Chilli Paneer","Chinese Bhel","Burger","ButterChicken","momos","Pizza","Biryani"]
    var nameLabelss = ["Veg Salad","Sandwich","Rice & Stew","Chilli Paneer","Chinese Bhel","Burger","Butter Chicken","Momos","Pizza","Biryani"]
    var priceLabelss = ["$ 5.00","$ 8.00","$ 30.00","$ 10.00","$ 14.00","$ 8.00","$ 15.00","$ 5.00","$ 10.00","$ 11.00"]
    
    var foodInfo = ["A salad is a dish consisting of mixed, mostly natural ingredients. They are typically served at room temperature or chilled, though some can be served warm",
                    "Sandwich, in its basic form, slices of meat, cheese, or other food placed between two slices of bread. Although this mode of consumption must be as old as meat and bread, the name was adopted only in the 18th century for John Montagu, 4th earl of Sandwich",
                    "stew, dish of meat, poultry, or fish, usually with vegetables, cooked in liquid in a closed vessel over low heat. Prepared properly, the stew never boils, but simmers at about 190 °F (88 °C), a process that tenderizes tougher foods and mingles flavours",
                    "Chilli Paneer is a popular Indo-Chinese dish where cubes of fried crispy paneer are tossed in a spicy sauce made with soy sauce, vinegar, chili sauce!",
                    "Chinese bhel is a fast food and street food item in India and is considered a part of Indo-Chinese cuisine. It is a variant of chop suey and bhelpuri. It is popular in Mumbai.",
                    "A hamburger, or simply burger, is a food consisting of fillings—usually a patty of ground meat, typically beef—placed inside a sliced bun or bread roll.",
                    "Butter chicken, traditionally known as murgh makhani (pronounced [mʊrɣ ˈməkʰaːni]), is an Indian dish originating in New Delhi. It is a type of curry made from chicken with a spiced tomato and butter (makhan) sauce. Its sauce is known for its rich texture.",
                    "Momo is a type of steamed filled dumpling, with origins from Tibet. Momo is native to Tibet, Nepal as well as Indian Himalayan Region of Ladakh, Sikkim, Assam, and Arunachal Pradesh, Himachal Pradesh, Uttarakhand, and Darjeeling. It is popular across a wider region of the Indian subcontinent.",
                    "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven. A small pizza is sometimes called a pizzetta",
                    "Biryani is the primary dish in a meal, while the pulao is usually a secondary accompaniment to a larger meal. In biryani, meat (and vegetables, if present) and rice are cooked separately before being layered and cooked together for the gravy to absorb into the rice."
                    
         
    
    
    ]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        collectionView.delegate = self
        collectionView.dataSource = self
        
      
      
    }
    
    @IBAction func logOut(_sender : UIButton){
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
 
extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FoodCV
        cell.imgView.image = UIImage(named: array[indexPath.row])
        cell.nameLabel.text = nameLabelss[indexPath.row]
        cell.priceLabel.text = priceLabelss[indexPath.row]
        
      
        
        
        
        
        cell.imgView.layer.cornerRadius = 10
//        cell.layer.cornerRadius = 10
        return cell
    }
  /*  func handleLikes(sender: AnyObject){
        print(sender.tag) // This works, every cell returns a different number and in order.
        if likes[sender.tag] == "like" {
            likes[sender.tag] = "unlike"
        }
        else {
            likes[sender.tag] = "like"
        }
        sender.setTitle(likes[sender.tag], for: .normal)
    }*/
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = ((collectionView.frame.width - 20 ) / 2 )
        let heigth = ((collectionView.frame.width - 20 ) / 1 )

         return CGSize(width: width, height: heigth)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let f = storyboard?.instantiateViewController(withIdentifier: "InfoVC") as! InfoVC
        
        
        f.img = UIImage(named: array[indexPath.row])!
        f.label_name = nameLabelss[indexPath.row]
        f.label_pri = priceLabelss[indexPath.row]
        f.label_infoo = foodInfo[indexPath.row]
        
        self.navigationController?.pushViewController(f, animated: true)
    }
    
    
    
}

//
//  TopicViewController.swift
//  Twitter
//
//  Created by Sneh kalariya on 25/04/23.
//

import UIKit

class TopicViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    var topicName = ["Music","Entertainment","Sports","Gaming","Fashion","Beauty","Food","Business","Finance","Arts","Culture","Technology","Travel","Outdoors","Fitness","Careees","Animation","Comics","Family", "Relationships","Science"]
   
    var select = -1
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return topicName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.labelForTopic.text = topicName[indexPath.row]
        cell.layer.borderWidth = 5
        cell.layer.cornerRadius = 10
        
        if select == indexPath.row{
            cell.RedioButton.image = UIImage(systemName: "circle.fill")
        }
        else{
            cell.RedioButton.image = UIImage(systemName: "circle")
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        select = indexPath.row
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 183, height: 171)
    }
   }

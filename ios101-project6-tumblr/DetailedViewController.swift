//
//  DetailedViewController.swift
//  ios101-project6-tumblr
//
//  Created by Isaac Lara on 4/9/25.
//

import UIKit
import Nuke

class DetailedViewController: UIViewController {

    
    
    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        descriptionTextView.text = post.caption.trimHTMLTags()
        
        if let photo = post.photos.first {
            Nuke.loadImage(with: photo.originalSize.url, into: headerImageView)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

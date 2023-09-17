//
//  PreviewPage.swift
//  SongsUICollectionView
//
//  Created by 1234 on 17.09.2023.
//

import UIKit

private let reuseIdentifier = "ArtCover"

class PreviewPage: UICollectionViewController {
    
    let imageNameArray = [ "Alberto Ruiz - 7 Elements (Original Mix)",
                           "Dave Wincent - Red Eye (Original Mix)",
                           "E-Spectro - End Station (Original Mix)",
                           "Edna Ann - Phasma (Konstantin Yoodza Remix)",
                           "Ilija Djokovic - Delusion (Original Mix)",
                           "John Baptiste - Mycelium (Original Mix)",
                           "Lane 8 - Fingerprint (Original Mix)",
                           "Mac Vaughn - Pink Is My Favorite Color (Alex Stein Remix)",
                           "Metodi Hristov, Gallya - Badmash (Original Mix)",
                           "Veerus, Maxie Devine - Nightmare (Original Mix)"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageNameArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCoverCell
    
        cell.coverImageView.image = UIImage(named: imageNameArray[indexPath.row])
        
    
        return cell
    }

}

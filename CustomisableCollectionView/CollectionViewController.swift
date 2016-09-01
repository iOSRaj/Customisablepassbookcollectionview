

import UIKit

class CollectionViewController: CardStackController, CardStackControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }

    func cardStackControllerDidSelectItemAtIndexPath(cardStackController: CardStackController, indexPath: NSIndexPath) {
        print(indexPath.row)
    }

}
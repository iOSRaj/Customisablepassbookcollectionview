

import UIKit

class CollectionViewController: CardStackController, CardStackControllerDelegate, CardStackControllerDataSource {
     var cards = [Int]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
        cards.append(CardState.Normal.rawValue)
        cards.append(CardState.Normal.rawValue)
        cards.append(CardState.Normal.rawValue)
        cards.append(CardState.Normal.rawValue)
        cards.append(CardState.Normal.rawValue)
        cards.append(CardState.Normal.rawValue)
    }
    
    // MARK: CardStackControllerDataSource
    func objects() -> [Int] {
        return cards
    }
    
    func updateObjects(newCards: [Int]) {
        self.cards = newCards
    }
    
    // MARK: - CardStackControllerDelegate

    func cardStackControllerDidSelectItemAtIndexPath(cardStackController: CardStackController, indexPath: NSIndexPath) {
        print(indexPath.row)
    }

}
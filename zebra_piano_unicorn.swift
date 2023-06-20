import Foundation

//Mark:Protocols
protocol Artisan {
    var name: String {get set}
    func produceWork()
}

protocol Craft {
    func craftWork()
}

//Mark: Classes
class WoodWorker: Artisan {
    var name: String
    init(name: String) {
        self.name = name
    }
    func produceWork() {
        print("I have produced fine wooden furniture!")
    }
}

class Painter: Artisan {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func produceWork() {
        print("I have produced a beautiful painting!")
    }
}

class WoodCraft: Craft {
    func craftWork() {
        print("I have crafted a unique wooden sculpture!")
    }
}

class PotteryCraft: Craft {
    func craftWork() {
        print("I have crafted a unique pottery piece!")
    }
}

//Mark: Structs
struct ArtisanWorkshop {
    let artisans: [Artisan]
    let crafts: [Craft]
    
    //Method
    func produceWorks() {
        artisans.forEach({artisan in
            artisan.produceWork()
        })
        crafts.forEach({craft in
            craft.craftWork()
        })
    }
}

//Mark: Instances
let woodWorker = WoodWorker(name: "John")
let painter = Painter(name: "Jane")
let woodCraft = WoodCraft()
let potteryCraft = PotteryCraft()

//Mark: Initialize Workshop
let artisanWorkshop = ArtisanWorkshop(artisans: [woodWorker, painter], crafts: [woodCraft, potteryCraft])

//Mark: Call Method
artisanWorkshop.produceWorks()
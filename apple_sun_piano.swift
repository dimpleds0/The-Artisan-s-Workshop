// At The Artisan's Workshop, we strive to create the finest quality handmade furniture, lighting, and home decor items available. Our goal is to provide our customers with pieces that are both beautiful and functional.

import UIKit

class ArtisanWorkshop {
    
    // MARK: Properties
    var furniture: [Furniture]
    var lighting: [Lighting]
    var homeDecor: [HomeDecor]
    
    // MARK: Initialization
    init() {
        self.furniture = []
        self.lighting = []
        self.homeDecor = []
    }
    
    // MARK: Methods
    func addFurniture(newFurniture: Furniture) {
        self.furniture.append(newFurniture)
    }
    func addLighting(newLighting: Lighting) {
        self.lighting.append(newLighting)
    }
    func addHomeDecor(newHomeDecor: HomeDecor) {
        self.homeDecor.append(newHomeDecor)
    }
    func showInventory() {
        print("Furniture:")
        for item in self.furniture {
            print("\(item.name)")
        }
        print("Lighting:")
        for item in self.lighting {
            print("\(item.name)")
        }
        print("Home Decor:")
        for item in self.homeDecor {
            print("\(item.name)")
        }
    }
    
}

class Furniture {
    
    // MARK: Properties
    var name: String
    var description: String
    
    // MARK: Initialization
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
    
}

class Lighting {
    
    // MARK: Properties
    var name: String
    var description: String
    
    // MARK: Initialization
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
    
}

class HomeDecor {
    
    // MARK: Properties
    var name: String
    var description: String
    
    // MARK: Initialization
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
    
}

// MARK: Testing
let myWorkshop = ArtisanWorkshop()
let chair = Furniture(name: "Chair", description: "A comfortable chair")
let table = Furniture(name: "Table", description: "A sturdy table")
let lamp = Lighting(name: "Lamp", description: "A soft glowing lamp")
let vase = HomeDecor(name: "Vase", description: "A delicate porcelain vase")

myWorkshop.addFurniture(newFurniture: chair)
myWorkshop.addFurniture(newFurniture: table)
myWorkshop.addLighting(newLighting: lamp)
myWorkshop.addHomeDecor(newHomeDecor: vase)

myWorkshop.showInventory()
import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    var a: Double
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        x = 0
        y = 0
        a = 500/(250 * -250)
        
        // tur of borders
        canvas.drawShapesWithBorders = true
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        
        y = Int(a * Double(x) * ( Double(x) - 350))
        
        canvas.translate(byX: x, byY: y)
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color(hue: 46, saturation: 77, brightness: 56, alpha: 100)
        canvas.drawEllipse(centreX: 50, centreY: 50, width: 50, height: 50)
        canvas.drawEllipse(centreX: 100, centreY:50, width: 50, height: 50)
        canvas.drawEllipse(centreX: 150, centreY: 50, width: 50, height: 50)
        canvas.drawEllipse(centreX: 200, centreY: 50, width: 50, height: 50)
    }
    
}

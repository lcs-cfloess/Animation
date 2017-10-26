import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // Position of scond circle
    var y : Int
    // change in postion
    var dx : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
        y = 250
        
        //change in position
        dx = 1
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += dx
        y -= dx
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        // fraw scond ellipse
        canvas.fillColor = Color.purple
        canvas.drawEllipse(centreX: y, centreY: 150, width: 50, height: 50)
        // third ellipse
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: y, centreY: 350, width: 50, height: 50)
        // fourth ellipse
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: x, centreY: 450, width: 50, height: 50)
        // fifth elipse
        canvas.fillColor = Color.red
        canvas.drawEllipse(centreX: x, centreY: 50, width: 50, height: 50)
        
        // Stop at the end
        if x > 500{ }
    }
    
}

import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    
    var x : Int
    var y : Int
    
    
    //cange in postion of circle
    var dx : Int
    var dy : Int
    
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = random(from: 0, toButNotIncluding: 501)
        y = random(from: 0, toButNotIncluding: 501)
        
        // Set change value
        dx = 2
        dy = 2
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //clean up
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        // Change position
        x += dx
        y += dy
        
        // Debug - what is the position?
        print("x is \(x)")
        print("dx is \(dx)")
        
        //make the circle bounce on the right edge
        
        if x > 500{
            dx = -2
        }
            if y > 500{
                dy = -2
            
        }
        
        if x < 0 {
            dx = 2
        }
        if y < 0 {
            dy = 2
            
        }
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    
}


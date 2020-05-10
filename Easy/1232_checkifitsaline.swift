/* You are given an array coordinates, coordinates[i] = [x, y], where [x, y] represents the coordinate of a point. 
Check if these points make a straight line in the XY plane. */
func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
    if coordinates.count <= 2{
        return true;
    }
    
    let x1 = coordinates[0][0];
    let y1 = coordinates[0][1];
    let x2 = coordinates[1][0];
    let y2 = coordinates[1][1];
    var sl = 0;
    
    if(x2-x1 == 0){
        sl = 0;
    }else{
        sl = (y2-y1)/(x2-x1)
    }
    
    for i in 2..<coordinates.count{
        let x = coordinates[i][0]
        let y = coordinates[i][1]
        if(!check(x,y,x1,y1,sl)){
            return false;
        }
    }
    return true; 
}

func check(_ x: Int,_ y: Int,_ x1:Int,_ y1:Int,_ S: Int) -> Bool{
    return (y - (y1)) == (S * (x - x1))
}
//Given a string representing a valud IP address, defang the IP and return it. 
func defangIPaddr(_ address: String) -> String {
    var addressCopy = ""
    
    for char in address {
        if char == "." {
            addressCopy += "[.]"
        }else{
            addressCopy += "\(char)"
        }
    }

    return addressCopy
}
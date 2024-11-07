func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    if cacheSize == 0 { return cities.count * 5}
    
    var cache = [String]()
    var time = 0
    
    for city in cities {
        let city = city.lowercased()
        
        if cache.contains(city) {
            time += 1
            cache.removeAll { $0 == city }
        } else {
            time += 5
            if cache.count >= cacheSize {
                cache.removeFirst()
            }
        }
        cache.append(city)
    }
    return time
}
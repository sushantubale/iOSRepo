//: [Previous](@previous)

import Foundation

class BaseClass {
    
    var name: String? = "Ashu"
    init(name: String?) {
        self.name = name
    }
}

class Movie: BaseClass {
    
    var director: String?
    init(name: String?, director: String?) {
        super.init(name: name)
        self.director = director
    }
}

class Song: BaseClass {
    
    var songName: String?
    init(name: String?, songName: String?) {
        self.songName = songName
        super.init(name: name)
    }
}


let movie = Movie(name: "Jurassic Park", director: "Speilberg")
let song = Song(name: "Avril Lavinge", songName: "Complicated")

let movie1 = Movie(name: "Titanic", director: "Dont Know")
let song1 = Song(name: "Eminem", songName: "Love the way you lie")

let combi: [BaseClass] = [movie, movie1, song, song1]

print(combi)
var movieCount = 0
var songCount = 0
for i in combi {
    if let movie = i as? Movie {
        print(movie.director)
        movieCount += 1
    }
    
    if let mysong = i as? Song {
        print(mysong.songName)
        songCount += 1
    }
}

print(movieCount)
print(songCount)

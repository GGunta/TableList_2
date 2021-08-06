//
//  Movie.swift
//  TableList
//
//  Created by gunta.golde on 03/08/2021.
//

import Foundation

struct Movie {
    let film: String
    let year: String
    let poster: String
    
    static func createMovie() -> [Movie] {
        var movies: [Movie] = []
        
        let films = DataManager.shared.film
        let years = DataManager.shared.year
        let posters = DataManager.shared.poster
        
        for index in 0..<films.count {
            let movie = Movie(film: films[index], year: years[index], poster: posters[index])
            movies.append(movie)
        }
        
        return movies
    }
}


/*struct Song {
 
 let track: String
 let album: String
 let cover: String
 
 static func createSong() ->[Song]{
     var songs: [Song] = []
     
     let tracks = DataManager.shared.track
     let albums = DataManager.shared.album
     let covers = DataManager.shared.cover
     
     for index in 0..<tracks.count {
         let song = Song(track: tracks[index], album: albums[index], cover: covers[index])
         songs.append(song)
     }
     
     return songs
 }
}*/

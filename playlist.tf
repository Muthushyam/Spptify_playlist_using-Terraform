resource "spotify_playlist" "Devotional" {
    name = "Devotional"
    tracks = ["5pfCT1UcILp1HtgzS7EPpE"]
  
}

data "spotify_search_track" "Arrahman" {
    artist = "Arrahman"
  
}

resource "spotify_playlist" "ARR" {
    name = "Rahman"
    tracks = [data.spotify_search_track.Arrahman.tracks[0].id,
    data.spotify_search_track.Arrahman.tracks[1].id,
    data.spotify_search_track.Arrahman.tracks[2].id]
  
}
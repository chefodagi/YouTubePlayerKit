import Foundation

// MARK: - YouTubePlayer+Source

public extension YouTubePlayer {
    
    /// The YouTubePlayer Source
    enum Source: Hashable {
        /// Video
        case video(id: String, startTime: UInt? = nil)
        /// Playlist
        case playlist(id: String)
        /// Channel
        case channel(id: String)
    }
    
}

// MARK: - Identifiable

extension YouTubePlayer.Source: Identifiable {
    
    /// The stable identity of the entity associated with this instance
    public var id: String {
        switch self {
        case .video(let id, _),
             .playlist(let id),
             .channel(let id):
            return id
        }
    }
    
}

// MARK: - Initializer

public extension YouTubePlayer.Source {
    
    /// Creates a new instance of `YouTubePlayer.Source` from a given URL string, if available
    /// - Parameter url: The URL string
    init?(url: String) {
        let urlComponents = URLComponents(string: url)
        let startTime = urlComponents?.queryItems?["t"].flatMap(UInt.init)
        let url = URL(string: url)
        let pathComponents = url?.pathComponents.dropFirst()
        if url?.host?.hasSuffix("youtu.be") == true {
            if let videoId = pathComponents?.first {
                self = .video(
                    id: videoId,
                    startTime: startTime
                )
                return
            }
        } else {
            switch pathComponents?.first {
            case "watch":
                if let playlistId = urlComponents?.queryItems?["list"] {
                    self = .playlist(id: playlistId)
                    return
                }
                if let videoId = urlComponents?.queryItems?["v"] {
                    self = .video(
                        id: videoId,
                        startTime: startTime
                    )
                    return
                }
            case "embed":
                if url?.pathComponents.indices.contains(1) == true,
                    let videoId = url?.pathComponents[1] {
                    self = .video(
                        id: videoId,
                        startTime: startTime
                    )
                    return
                }
            case "channel":
                if url?.pathComponents.indices.contains(1) == true,
                    let channelId = url?.pathComponents[1] {
                    self = .channel(id: channelId)
                    return
                }
            default:
                break
            }
        }
        return nil
    }
    
}

// MARK: - Sequence<URLQueryItem>+subscribt

private extension Sequence where Element == URLQueryItem {
    
    /// Retrieve a URLQueryItem value by a given name, if available
    subscript(_ name: String) -> String? {
        self.first { $0.name == name }?.value
    }
    
}
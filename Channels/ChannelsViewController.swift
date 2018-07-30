
import UIKit
import AVKit

class ChannelsViewController: UICollectionViewController {

	var channels: [Channel] = [] {
		didSet {
			collectionView?.reloadData()
		}
	}

	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return channels.count
	}

	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)

		guard let channelCell = cell as? ChannelCollectionViewCell else {
			return cell
		}

		let channel = channels[indexPath.item]
		channelCell.channel = channel
		return channelCell
	}

	override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

		let channel = channels[indexPath.item]

		let player = AVPlayer(url: channel.URL)

		let playerViewController = AVPlayerViewController()
		playerViewController.modalTransitionStyle = .crossDissolve
		playerViewController.player = player
		present(playerViewController, animated: true)

		player.play()
		player.isClosedCaptionDisplayEnabled = true;
	}
}


import UIKit
import AVKit

class ChannelsViewController: UICollectionViewController {

	var channels: [Channel] = [] {
		didSet {
			collectionView?.reloadData()
		}
	}

	override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return channels.count
	}

	override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {

		let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)

		guard let channelCell = cell as? ChannelCollectionViewCell else {
			return cell
		}

		let channel = channels[indexPath.item]
		channelCell.channel = channel
		return channelCell
	}

	override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {

		let channel = channels[indexPath.item]

		let player = AVPlayer(URL: channel.URL)

		let playerViewController = AVPlayerViewController()
		playerViewController.modalTransitionStyle = .CrossDissolve
		playerViewController.player = player
		self.presentViewController(playerViewController, animated:true, completion:nil)

		player.play()
		player.closedCaptionDisplayEnabled = true;
	}
}

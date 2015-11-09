
import UIKit

class ChannelCollectionViewCell: UICollectionViewCell {

	override func prepareForReuse() {
		channel = nil
	}

	var channel: Channel? {
		didSet {
			imageView?.image = channel?.image
		}
	}

	@IBOutlet private var imageView: UIImageView?
}

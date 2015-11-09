
import Foundation
import UIKit

struct Channel {
	let name: String
	let URL: NSURL

	var image: UIImage? {
		return UIImage(named: name)
	}
}

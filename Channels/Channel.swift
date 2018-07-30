
import Foundation
import UIKit

struct Channel {
	let name: String
	let URL: URL

	var image: UIImage? {
		return UIImage(named: name)
	}
}

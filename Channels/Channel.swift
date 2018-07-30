
import Foundation
import UIKit

struct Channel {
	let name: String
	let url: URL

	var image: UIImage? {
		return UIImage(named: name)
	}
}

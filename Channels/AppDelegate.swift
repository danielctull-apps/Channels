
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

		guard let channelsViewController = window?.rootViewController as? ChannelsViewController else {
			return true
		}

		let BBC1 = Channel(name: "BBC One", URL:NSURL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/ak/bbc_one_london.m3u8")!)
		let BBC2 = Channel(name: "BBC Two", URL:NSURL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/ak/bbc_two_england.m3u8")!)
		let BBC3 = Channel(name: "BBC Three", URL:NSURL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/ak/bbc_three.m3u8")!)
		let BBC4 = Channel(name: "BBC Four", URL:NSURL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/ak/bbc_four.m3u8")!)
		let CBeebies = Channel(name: "CBeebies", URL:NSURL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/ak/cbeebies.m3u8")!)
		let CBBC = Channel(name: "CBBC", URL:NSURL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/ak/cbbc.m3u8")!)
		let News = Channel(name: "BBC News", URL:NSURL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/ak/bbc_news24.m3u8")!)
		let Parliament =  Channel(name: "BBC Parliament", URL:NSURL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/llnw/bbc_parliament.m3u8")!)
		let BBCAlba =  Channel(name: "BBC Alba", URL:NSURL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/llnw/bbc_alba.m3u8")!)
		let S4C = Channel(name: "S4C", URL:NSURL(string:"http://a.files.bbci.co.uk/media/live/manifests/hls/tablet/ak/s4cpbs.m3u8")!)

		channelsViewController.channels = [BBC1, BBC2, BBC3, BBC4, CBBC, CBeebies, News, Parliament, BBCAlba, S4C]

		return true
	}
}

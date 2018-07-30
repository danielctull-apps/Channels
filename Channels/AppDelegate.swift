
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {

		guard let channelsViewController = window?.rootViewController as? ChannelsViewController else {
			return true
		}

		let BBC1 = Channel(name: "BBC One", URL: URL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/ak/bbc_one_london.m3u8")!)
		let BBC2 = Channel(name: "BBC Two", URL: URL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/ak/bbc_two_england.m3u8")!)
		let BBC3 = Channel(name: "BBC Three", URL: URL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/ak/bbc_three.m3u8")!)
		let BBC4 = Channel(name: "BBC Four", URL: URL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/ak/bbc_four.m3u8")!)
		let CBeebies = Channel(name: "CBeebies", URL: URL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/ak/cbeebies.m3u8")!)
		let CBBC = Channel(name: "CBBC", URL: URL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/ak/cbbc.m3u8")!)
		let News = Channel(name: "BBC News", URL: URL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/ak/bbc_news24.m3u8")!)
		let Parliament =  Channel(name: "BBC Parliament", URL: URL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/llnw/bbc_parliament.m3u8")!)
		let BBCAlba =  Channel(name: "BBC Alba", URL: URL(string: "http://a.files.bbci.co.uk/media/live/manifesto/audio_video/simulcast/hls/uk/hls_tablet/llnw/bbc_alba.m3u8")!)
		let S4C = Channel(name: "S4C", URL: URL(string:"http://a.files.bbci.co.uk/media/live/manifests/hls/tablet/ak/s4cpbs.m3u8")!)

		let ITV = Channel(name: "ITV", URL: URL(string:"http://itv1liveios-i.akamaihd.net/hls/live/203437/itvlive/ITV1MN/master_Main1800.m3u8")!)
		let ITV2 = Channel(name: "ITV 2", URL: URL(string:"http://itv2liveios-i.akamaihd.net/hls/live/203495/itvlive/ITV2MN/master_Main1800.m3u8")!)
		let ITVBe = Channel(name: "ITV Be", URL: URL(string:"http://itvbeliveios-i.akamaihd.net/hls/live/219078/itvlive/ITVBE/master_Main1800.m3u8")!)
		let ITV3 = Channel(name: "ITV 3", URL: URL(string:"http://itv3liveios-i.akamaihd.net/hls/live/207262/itvlive/ITV3MN/master_Main1800.m3u8")!)
		let ITV4 = Channel(name: "ITV 4", URL: URL(string:"http://itv4liveios-i.akamaihd.net/hls/live/207266/itvlive/ITV4MN/master_Main1800.m3u8")!)
		let CITV = Channel(name: "CITV", URL: URL(string:"http://citvliveios-i.akamaihd.net/hls/live/207267/itvlive/CITVMN/master_Main1800.m3u8")!)

		let channel4 = Channel(name: "Channel 4", URL: URL(string:"http://ak.live.hls.c4assets.com/hls/c4/master.m3u8")!)
		let E4 = Channel(name: "E4", URL: URL(string:"http://ak.live.hls.c4assets.com/hls/e4/master.m3u8")!)
		let more4 = Channel(name: "More4", URL: URL(string:"http://ak.live.hls.c4assets.com/hls/m4/master.m3u8")!)
		let film4 = Channel(name: "Film4", URL: URL(string:"http://ak.live.hls.c4assets.com/hls/f4/master.m3u8")!)
		let fourSeven = Channel(name: "4seven", URL: URL(string:"http://ak.live.hls.c4assets.com/hls/4s/master.m3u8")!)

		channelsViewController.channels = [BBC1, BBC2, BBC3, BBC4, CBBC, CBeebies, News, Parliament, BBCAlba, S4C, ITV, ITV2, ITVBe, ITV3, ITV4, CITV, channel4, E4, more4, film4, fourSeven]

		return true
	}
}

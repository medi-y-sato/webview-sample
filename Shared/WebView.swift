import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    var loadUrl:String

    func makeUIView(context: Context) -> WKWebView {
        
        let webConfiguration = WKWebViewConfiguration()
        // Fix Fullscreen mode for video and autoplay
        webConfiguration.preferences.javaScriptEnabled = true
        webConfiguration.mediaPlaybackRequiresUserAction = false
        webConfiguration.mediaTypesRequiringUserActionForPlayback = [WKAudiovisualMediaTypes.video]
//        webConfiguration.mediaTypesRequiringUserActionForPlayback = [] // こちらだと埋め込みビデオが全画面で自動再生する

        let webView = WKWebView(frame: CGRect(x: 0, y: 0, width:320, height:320), configuration: webConfiguration)
        
        return webView

    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: loadUrl)!))
    }
}

' -------------------- © 2019. NOVO WORK SYSTEMS | http://novo.ws -------------------
function init()
    m.video = m.top.findNode("player")
    m.video.notificationinterval = 1
    m.Top.backgroundURI = ""
    m.Top.backgroundColor = &h00000000
    playVideo()
end function

function playVideo() as void
    acceptedformat = ["mkv", "mp4", "mov", "webm", "m4v", "ism", "mpd", "m3u8", "3gp"]
    vidContent = createObject("RoSGNode", "ContentNode")
    vidContent.title = m.global.title
    vidContent.url = m.global.url
    vidContent.subtitleconfig = {
        TrackName: m.global.subtitle
    }
    ' TODO Set property Live for m3u8,ism and mpd files
    print "------ Title ------"
    print m.global.title
    print "------ URL ------"
    print m.global.url
    print "------ Subtitle ------"
    print m.global.subtitle

    vidContent.streamformat = acceptedformat
    m.video.content = vidContent
    m.video.SetCertificatesFile("common:/certs/ca-bundle.crt")
    m.video.AddHeader ("User-Agent", "Chrome")
    m.video.EnableCookies()
    m.video.SetCertificatesDepth(3)
    m.video.setFocus(true)
    m.video.bufferingBar.filledBarBlendColor = "0xFFFFFFCF"
    m.video.retrievingBar.filledBarBlendColor = "0xFFFFFFCF"
    m.video.trickPlayBar.filledBarBlendColor = "0xFFFFFFCF"
    m.video.control = "play"
end function
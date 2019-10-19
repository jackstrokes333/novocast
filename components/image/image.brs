function init()
    m.poster = m.top.findNode("image")
    m.Top.backgroundURI = ""
    m.Top.backgroundColor = &h00000000
    showPosterLabel()
end function

function showPosterLabel() as void
    print "Showing the Poster"

    device = CreateObject("roDeviceInfo")
    displaySize = device.GetDisplaySize()
    m.poster.width = displaySize.w
    m.poster.height = displaySize.h

    ' Show loading bitmap
    m.poster.loadingBitmapUri = "pkg:/images/loading.jpg"

    m.poster.uri = m.global.poster
end function
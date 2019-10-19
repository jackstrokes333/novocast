function init()
    m.label = m.top.findNode("index")
    m.internalIP = m.top.findNode("internalIP")
    m.Top.backgroundURI = ""
    m.Top.backgroundColor = &h21212121
    showLabel()
end function

function showLabel() as void
    print "Showing the label"
    device = CreateObject("roDeviceInfo")
    displaySize = device.GetDisplaySize()
    displayMode = device.GetDisplayMode()
    m.label.width = displaySize.w
    m.label.height = displaySize.h

    m.internalIP.width = displaySize.w
    m.internalIP.height = displaySize.h
    m.internalIP.translation = "[0, -40]"
    print displaySize
    print displayMode
    internalIP = device.GetIPAddrs().eth1
    ' externalIP = device.GetExternalIp()
    m.label.text  = "You must send a valid image or video from the chrome extension."
    m.internalIP.text = "Set your IP in Chrome to: "+ internalIP
end function
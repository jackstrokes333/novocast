' -------------------- © 2019. NOVO WORK SYSTEMS | http://novo.ws -------------------
' ----- Player -----
sub showPlayer(url as dynamic, title as dynamic, subtitle as dynamic)
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)
    m.scene = screen.CreateScene("player")
    m.global = screen.getGlobalNode()
    m.global.AddField("url", "string", false)
    m.global.AddField("title", "string", false)
    m.global.AddField("subtitle", "string", false)
    m.global.url = url
    m.global.title = title
    m.global.subtitle = subtitle
    screen.show()

    ' ----- Listening on events -----
    player = m.scene.findNode("player")
    player.observeField("state", m.port)
    player.observeField("errorMsg", m.port)

    while(true)
        msg = wait(0, m.port)
        msgType = type(msg)
        nodeEvent = m.scene.findNode(msg.getNode())
        if msgType = "roSGScreenEvent"
            if msg.isScreenClosed() then return

        else if  nodeEvent.errorMsg = "malformed data"
            print "----- Error -------"
            print  "---malformed data---"
            screen.close()
            return

        else if  nodeEvent.state = "finished"
            print "----- Closing the channel! -------"
            screen.close()
            print "----- Bye! -------"
            return
        end if

    end while
end sub
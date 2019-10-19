' ----- Poster -----
sub showPoster(poster as dynamic)
    print "---- Showing Poster ----"
    screen = CreateObject("roSGscreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)
    m.scene = screen.CreateScene("image")
    m.global = screen.getGlobalNode()
    m.global.AddField("poster", "string", false)
    m.global.poster = poster
    screen.show()

    while(true)
    end while
end sub
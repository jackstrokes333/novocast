' ----- Index -----
sub noParamsIndex()
    print "---- Showing index ----"
    screen = CreateObject("roSGscreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)
    m.scene = screen.CreateScene("index")
    screen.show()

    Sleep(7000)
    print "Closing the index screen."
    screen.close()

    while(true)
        msg = wait(0, m.port)
    end while
end sub
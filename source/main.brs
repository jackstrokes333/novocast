' -------------------- © 2019. NOVO WORK SYSTEMS | http://novo.ws -------------------
sub main(params as dynamic)
    print "----- Opening channel -----"
    if params.url <> invalid
        if params.title = invalid
            params.title = ""
        end if

        if params.subtitle = invalid
            params.subtitle = ""
        end if
        ' ----- Player -----
        showPlayer(params.url, params.title, params.subtitle)
    else if params.url = invalid and params.poster = invalid
        ' ----- Index -----
        print "----- Entering index -----"
        noParamsIndex()
    else if params.poster <> invalid
        ' ----- Poster -----
        print "Entering poster"
        showPoster(params.poster)
    end if
end sub
# Enable page after images are loaded
imagesLoaded document.body, (instance) ->

    setTimeout( ->

        $('.loading .circle')
            .animate({opacity: 0}, 3000)
            .animate({margin: -20}, 1000, 'easeInOutCubic')

        $('.hide-during-load').animate({opacity: 1}, 2000)

        $(document.body)
            .css('overflow-y', 'auto')
            .css('overflow-x', 'hidden')

    , 1000)


# # Mouse drag&drop design
# $ ->
#     $("*").each ->
#         if $(this).css('position') == 'absolute'
#             console.log this
#             $(this).draggable()
# $('.diapers-detail img').draggable()

$ ->

    # Parallax effect for non mobile platforms
    if !window.navigatorDetect.isMobile()
        $(window).stellar()

    $('.menu ul a').click ->
        if !window.navigatorDetect.isMobile()
            $(document.body).animate({
                scrollTop: $( this.hash ).offset().top
            }, 2000, 'easeInOutQuart')
        else
            $(document.body).animate({
                scrollTop: $( this.hash ).offset().top
            }, 0)
        return false

    $('.sound-button').click ->
        if backgroundSound.playState
            backgroundSound.stop()
            $(this).attr('src', 'images/Sound-Off.png')
        else
            loopSound 'aSound'
            $(this).attr('src', 'images/Sound-On.png')




(($) ->
    $.fn.textareamaxrows = (options) ->
        onKeyup = ->
            number_breaks = $(this).val().split("\n").length

            # first break does not count
            number_breaks--
            number_fake_breaks = 0
            text_paragraphs = $(this).val().split("\n")
            for i of text_paragraphs
                number_fake_breaks_paragraph = parseInt(getNumberOfChunks(opts.maxcharsinrow, text_paragraphs[i]))
                number_fake_breaks = number_fake_breaks + number_fake_breaks_paragraph    if number_fake_breaks_paragraph > 1
            total_breaks = parseInt(number_breaks + number_fake_breaks)
            if total_breaks >= opts.maxrows
                alert opts.alertmessage    if opts.alert

                # add error class to textarea
                $(this).addClass opts.errorclass

                # Cut down the string
                current_length = $(this).val().length
                new_length = current_length - 1
                $(this).val $(this).val().substr(0, new_length)
            else

                # remove error class textarea
                $(this).removeClass opts.errorclass

            # set counter if option usecounter and counterelem and is set
            if (opts.usecounter) and opts.counterelem isnt ""
                if (opts.maxrows - total_breaks) < 0
                    $(opts.counterelem).html "0"
                else
                    $(opts.counterelem).html opts.maxrows - total_breaks
            false
        getNumberOfChunks = (chunkSize, checkString) ->
            chunks = []
            while checkString
                if checkString.length < chunkSize
                    chunks.push checkString
                    break
                else
                    chunks.push checkString.substr(0, chunkSize)
                    checkString = checkString.substr(chunkSize)
            chunks.length
        defaults =
            alert: false
            alertmessage: "too many rows and chars"
            maxrows: 20
            maxcharsinrow: 32
            usecounter: false
            counterelem: ""
            errorclass: "error"

        opts = $.extend(defaults, options)
        return @each(->
            $(this).keyup onKeyup
            return
        )
        return

    return
) jQuery

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
            $('body, html').animate({
                scrollTop: $( this.hash ).offset().top
            }, 2000, 'easeInOutQuart')
            return false

    $('#message').textareamaxrows {maxrows: 5}
    $('.send').click ->
        if ( !$('.name').val() || !$('.email').val() || !$('.message').val() )
            alert 'Please fill your Name, Email Address and your message in order to contact us. Thank You!'
            return false

        $.ajax( '/index.php', {
            type: 'POST',
            data: {
                code: 'joor0yee1oodeegooLishoh9A',
                name: $('.name').val(),
                email: $('.email').val(),
                message: $('.message').val()
            }
        }).done(->
            alert 'Thank you for your message!'
            $('.name,.email,.message').val('')
        ).fail(->
            alert 'Sorry something went wrong, we were unable to send your message. Please try again later.'
        )


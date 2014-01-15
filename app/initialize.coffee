# Enable page after images are loaded
imagesLoaded document.body, (instance) ->

    setTimeout( ->

        $('.loading .circle').animate({opacity: 0}, 3000, ->
            $('.loading .circle').hide()
        )

        $('.hide-during-load').animate({opacity: 1}, 2000)

        $(document.body)
        .css('overflow-y', 'auto')
        .css('overflow-x', 'hidden')
        $(document.body).scrollTo(850, 3000)
    , 1000)


# # Mouse drag&drop design
# $ ->
#     $("*").each ->
#         if $(this).css('position') == 'absolute'
#             console.log this
#             $(this).draggable()

# Parallax effect
$(window).stellar()

$('.menu ul a').click ->
    $('html, body').animate({
        scrollTop: $( this.hash ).offset().top
    }, 2000, 'easeInOutQuart')
    return false




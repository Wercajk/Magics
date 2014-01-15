# Enable page after images are loaded
# imagesLoaded document.body, (instance) ->

#     setTimeout( ->
#         $('.loading .circle').animate({opacity: 0}, 3000, ->
#             $('.loading .circle').hide()
#         )

#         $(document.body).css('overflow', 'auto')
#         $(document.body).scrollTo(850, 3000)
#     , 1000)


require 'lib/skrollr'

s = skrollr.init(
    edgeStrategy: "set"
    easing:
        WTF: Math.random
        inverted: (p) ->
            1 - p
)


# require 'lib/jquery.parallax'

# # General parallax effect
# $(document.body).parallax({
#     xparallax: false,
#     yparallax: '3px'
# })


# Mouse drag&drop design
$ ->
    $("*").each ->
        if $(this).css('position') == 'absolute'
            console.log this
            $(this).draggable()

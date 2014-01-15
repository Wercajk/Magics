# d = require '/lib/jquery-throttle-debounce'

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


# # Mouse drag&drop design
# $ ->
#     $("*").each ->
#         if $(this).css('position') == 'absolute'
#             console.log this
#             $(this).draggable()

# t = undefined
# l = (new Date()).getTime()
# scrolling = false
# $(window).scroll ->
#     now = (new Date()).getTime()
#     if now - l > 400 and not scrolling
#         $(this).trigger "scrollStart"
#     l = now
#     clearTimeout t
#     t = setTimeout(->
#         $(window).trigger "scrollEnd"  if scrolling
#     , 300)

# $(window).bind "scrollStart", ->
#     scrolling = true
#     console.log "scrollStart"
#     scrollTo = $(window).scrollTop()*5*-1
#     $( document.body ).css('background-position-y', scrollTo+'px')

# $(window).bind "scrollEnd", ->
#     scrolling = false
#     $( document.body ).css('background-position-y', 0)




# $( window ).scroll ->
    # console.log 'scroll'
    # $( document.body ).animate({'background-position-y': '-50px;'})



# parallax = ->
#     scrolled = $(window).scrollTop()
#     $( document.body ).animate({'background-position-y': '-50px;'})
#     $(document.body).css "background-position-y", -(scrolled * 0.2) + "px"
# $(window).scroll (e) ->
#     parallax()




# $(window).on('scroll', ->
#     scrolled = $(window).scrollTop()
#     $(document.body)
#     .animate({
#         "background-position-y": -(scrolled * 0.2) + "px"
#         },
#         500,
#         "easeInOutCubic"
#     )
# )

# $(window).on('scroll', ->
#     $(document.body).animate {
#         "background-position-y": 0
#         },
#         1000,
#         "easeInOutCubic"
# , 250)

# scrolling = false

# $(window).scroll ->
#     scrollTo = $(window).scrollTop()*0.2*-1
#     $(document.body).animate "background-position-y", scrollTo + "px"



# $(window).scroll($.debounce( 250, ->
#     $(document.body)
#     .animate {"background-position-y": 0}, 1000, "easeInOutCubic"
# ))


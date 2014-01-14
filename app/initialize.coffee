imagesLoaded document.body, (instance) ->
    console.log "all images are loaded"


# s = skrollr.init(
#     edgeStrategy: "set"
#     easing:
#         WTF: Math.random
#         inverted: (p) ->
#             1 - p
# )

$ ->
    $("*").each ->
        if $(this).css('position') == 'absolute'
            console.log this
            $(this).draggable()

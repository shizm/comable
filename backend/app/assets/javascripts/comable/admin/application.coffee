#= require_tree .
#= require jquery

$( ->
  $('.menu').find('.parent').on('click', (event) ->
    event.preventDefault()

    $this = $(this)
    $this.siblings().removeClass('open')
    $this.toggleClass('open')
  )
)

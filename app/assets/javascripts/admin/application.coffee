populate_delete_modal = ->
  $modalSubmit = $('#delete-confirm').find('.btn-danger')
  href = $modalSubmit.attr('href')
  $modalSubmit.attr 'href', href.replace('{{id}}', $('#delete-confirm').data('id'))

  $modalBody = $('#delete-confirm').find('.modal-body strong')
  text = $modalBody.text()
  $modalBody.text(text.replace('{{name}}', $('#delete-confirm').data('name')))
  return

clear_delete_modal = ->
  $modalSubmit = $('#delete-confirm').find('.btn-danger')
  href = $modalSubmit.attr('href')
  $modalSubmit.attr 'href', href.replace($('#delete-confirm').data('id'), '{{id}}')

  $modalBody = $('#delete-confirm').find('.modal-body strong')
  text = $modalBody.text()
  $modalBody.text(text.replace($('#delete-confirm').data('name'), '{{name}}'))
  return

$('.delete-confirm').click (e) ->
  e.preventDefault()

  clear_delete_modal() if $('#delete-confirm').data('id') != '{{id}}'
  $('#delete-confirm').data({id: $(this).data('id'), name: $(this).data('name')})
  populate_delete_modal()
  $('#delete-confirm').modal 'show'
  return


jQuery ->
  $('#feast_user_tokens').tokenInput '/users.json', {
    theme: 'mac'
    prePopulate: $('#feast_user_tokens').data('load')
  }

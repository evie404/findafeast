jQuery ->
  $('#feast_user_tokens').tokenInput '/users.json', {
    theme: 'facebook'
    prePopulate: $('#feast_user_tokens').data('load')
  }

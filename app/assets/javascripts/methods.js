(function () {

  'use strict'

  $(document).on('click', 'a[data-method]', function(event) {

    var $element, $form, href, metadataInput, method, csrfToken, csrfParam

    $element = $(this)
    csrfToken = Aperx.csrfToken()
    csrfParam = Aperx.csrfParam()
    href = $element.attr('href')
    method = $element.attr('data-method').toLowerCase()

    if (method === 'get') {
      return
    }

    $form = $('<form method="POST" action="' + href + '"></form>')

    if (method !== 'post') {
      metadataInput = '<input name="_method" value="' + method + '" type="hidden" />'
    }

    if (csrfParam !== undefined && csrfToken !== undefined) {
      metadataInput += '<input name="' + csrfParam + '" value="' + csrfToken + '" type="hidden" />'
    }

    $form.hide().append(metadataInput).appendTo('body')
    $form.submit()
    event.preventDefault()
    return false
  });

})()

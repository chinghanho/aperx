// Rails 預設使用 jquery_ujs 的來驅動 request method，但是因為 Aperx 採用 Zepto 取代 jQuery 讓原
// 本的jquery_ujs 沒有辦法正常使用，在加上想要縮小檔案大小節省的傳輸網路資源的開銷，因此另外寫了此腳本解決。
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

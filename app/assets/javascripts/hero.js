(function () {


  //
  // 這是個控制管理介面首頁效果的腳本，等待背景圖片載入完成後
  //
  // 執行後續的動態效果。
  //


  var hero = document.getElementsByClassName('js-hero')

  // 如果不是在管理介面首頁，後面的東西就不需要執行了
  if (hero.length === 0) { return }

  hero = hero[0]

  hero.className += " in"

  var bgURL = hero.dataset.bg

  var bgImg = new Image()

  bgImg.onload = function () {

    hero.style.backgroundImage = 'url(' + bgURL + ')'
    hero.className += " bg-in"

  }

  bgImg.src = bgURL

})()

var mySwiper = new Swiper('.swiper-container', { // eslint-disable-line
  autoHeight: true,
  loop: true,
  autoplay: {
    delay: 3000,
    disableOnInteraction: false,
    reverseDirection: false
  },
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev'
  },
  pagination: {
    el: '.swiper-pagination',
    type: 'bullets',
    clickable: true
  }
});
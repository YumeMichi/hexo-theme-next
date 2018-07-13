$(document).ready(function () {
  window.aplayer = new APlayer({
    container: document.getElementById('aplayer'),
    fixed: true,
    // mini: false,
    autoplay: localStorage.getItem('autoplay') === "true",
    theme: '#FADFA3',
    loop: 'all',
    order: 'random',
    preload: 'auto',
    volume: 0.5,
    mutex: true,
    listFolded: false,
    listMaxHeight: '90px',
    lrcType: 3,
    audio: [
      {
        name: 'オレンジ',
        artist: '7!!',
        url: '/player/01.m4a',
        cover: '/player/01.jpg',
        lrc: '',
        theme: '#ebd0c2'
      }
    ]
  });
});

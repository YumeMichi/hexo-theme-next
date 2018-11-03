{% if theme.disqus.enable %}
  <script type="text/javascript">
    function loadComments() {
      var d = document, s = d.createElement('script');
      s.src = 'https://{{ theme.disqus.shortname }}.disqus.com/embed.js';
      s.setAttribute('data-timestamp', '' + +new Date());
      (d.head || d.body).appendChild(s);
    }
    {% if theme.disqus.lazyload %}
    $(function () {
      var offsetTop = $('#comments').offset().top - $(window).height();
      if (offsetTop <= 0) {
        // load directly when there's no a scrollbar
        loadComments();
      } else {
        $(window).on('scroll.disqus_scroll', function () {
          // offsetTop may changes because of manually resizing browser window or lazy loading images.
          var offsetTop = $('#comments').offset().top - $(window).height();
          var scrollTop = $(window).scrollTop();
           // pre-load comments a bit? (margin or anything else)
          if (offsetTop - scrollTop < 60) {
            $(window).off('.disqus_scroll');
            loadComments();
          }
        });
      }
    });
    {% else %}
    loadComments();
    {% endif %}
  </script>
  {% if theme.disqus.count %}
    <script id="dsq-count-scr" src="https://{{ theme.disqus.shortname }}.disqus.com/count.js" async></script>
  {% endif %}

  {#{% if page.comments %}#}

  {#{% endif %}#}

{% endif %}

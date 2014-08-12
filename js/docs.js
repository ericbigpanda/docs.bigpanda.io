$(function() {
  var baseUrl = $("body").data('baseurl');
  var $search = $('#search-query');
  $search.submit(function(){
    return false;
  });
  $search.lunrSearch({
    indexUrl: baseUrl + '/search.json',             // URL of the `search.json` index data for your site
    results:  '#search-results',          // jQuery selector for the search results container
    entries:  '.entries',                 // jQuery selector for the element to contain the results list, must be a child of the results element above.
    template: '#search-results-template'  // jQuery selector for the Mustache.js template
  });
  var up = 38;
  var down = 40;
  var esc = 27;
  var enter = 13;
  var slash = 191;
  var $siteNavWrapper = $("#site-nav-wrapper");
  var $searchResults = $("#search-results");

  $search.on('keydown', function(event){
    if([up, down, esc, enter].indexOf(event.keyCode) == -1){
      return;
    }
    if ($("#search-results:visible").length == 0) {
      if ([up, down].indexOf(event.keyCode)){
        $('html,body').stop().animate({
          scrollTop: (event.keyCode == up ? '-' : '+') + '=100px'
        });
        $("#content a:first").focus();
      }
      return;
    }
    if (event.keyCode == esc){
      $(".active", $searchResults).removeClass("active");
      return;
    }
    if ($(".active", $searchResults).length == 0) {
      $("li:first", $searchResults).addClass("active");
    }
    else {
      var $current = $(".active", $searchResults);
      if (event.keyCode == enter){
        event.preventDefault();
        window.location.href = $("a", $current).attr('href');
        $search.val('');
        return true;
      }
      var $searchResultsLiElements = $("li", $searchResults);
      var index = $searchResultsLiElements.index($current);
      if (event.keyCode == down){
        if (++index < $searchResultsLiElements.length){
          $current.removeClass("active");
          $($searchResultsLiElements[index]).addClass("active");
        }
      } else {
        if (--index >= 0 && $current.length){
          $current.removeClass("active");
          $($searchResultsLiElements[index]).addClass("active");
        }  
      }
    }
  });
  var queryParams = {};

  if (window.location.href.split("?").length > 1){
    $.each(window.location.href.split("?")[1].split("&"), function(index, elem){
      var values = elem.split("=");
      queryParams[values[0]] = values.length > 0 ? values[1] : null;
    })
  }
  if (queryParams["s"] && queryParams["s"].length > 0) { 
    setTimeout(function(){
      $search.val(queryParams["s"]);
      $search.trigger('keyup', $.Event());
    }, 150);
  }
  $(window).scroll(function(){
    var top = $(window).scrollTop();
    if (top >= 140){
      var $notScrolled = $("#navigation:not(.scrolled)");
      if ($notScrolled.length === 1) {
        $notScrolled.addClass("scrolled");
        $siteNavWrapper.scrollspy('refresh');
      }
    } else {
      var $scrolled = $("#navigation.scrolled");
      if ($scrolled.length === 1){
        $scrolled.removeClass("scrolled");
        $siteNavWrapper.scrollspy('refresh');
      }
    }
  })
  $(window).on('keydown', function(event){
    if (event.keyCode == slash && !$search.is(":focus")){
      event.preventDefault();
      $search.focus();
      return;
}
  });
/*  $siteNavWrapper.on('activate.bs.scrollspy', function(event){
    var $li = $(event.target);
    if ($li.hasClass("doc-header-item"))  {
      $li = $li.parent("ul").parent("li").prev(".doc-item");
    }
    if (!$li.is(":visible")){
      var parentRef = $li.data("parent-col-ref");
      $(".subitem[data-parent-col-ref='" + parentRef + "']").show();
      $(".doc-item[data-parent-col-ref='" + parentRef + "']").show();
      $(".subitem[data-parent-col-ref!='" + parentRef + "']").hide();
      $(".doc-item[data-parent-col-ref!='" + parentRef + "']").hide();
    }
  });*/
});


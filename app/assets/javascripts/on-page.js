$( document ).on('turbolinks:load', function() {
    window.onload = $(function(){
        var current = window.location.pathname.split('?')[0];
        console.log(current)
        $('.links-nav a').each(function(){
            var $this = $(this);
            // if the current path is like this link, make it active
            if($this.attr('href').indexOf(current) !== -1){
                $this.addClass('active');
            }});


});
});

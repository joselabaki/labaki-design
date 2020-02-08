$( document ).on('turbolinks:load', function() {
    window.onload = $(function(){
        var current = window.location.pathname.split('?')[0];
        console.log(current)
        $('#project-span a , .static a , .contact a').each(function(){
            var $this = $(this);
            // if the current path is like this link, make it active
            if($this.attr('href').indexOf(current) !== -1){
                $this.addClass('active');
            }});

            $('.languages a').each(function(){
                var $this = $(this);
                // if the current path is like this link, make it active
                if($this.attr('href').indexOf(current) == -1){
                    $this.addClass('active-lang');
                }});


                var checkbox = document.querySelector('input[name=theme]');

                checkbox.addEventListener('change', function() {
                    if(this.checked) {
                        trans()
                        document.documentElement.setAttribute('data-theme', 'dark')
                    } else {
                        trans()
                        document.documentElement.setAttribute('data-theme', 'light')
                    }
                })

                 trans=function()  {
                    document.documentElement.classList.add('transition');
                    window.setTimeout(() => {
                        document.documentElement.classList.remove('transition')
                    }, 1000)
                }

$('#sun').click(function(){
  $('#sun').css('display' , 'none');
  $('#moon').css('display' , 'block')
});
$('#moon').click(function(){
  $('#sun').css('display' , 'block');
  $('#moon').css('display' , 'none')
});
});


});

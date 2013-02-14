    var script = document.createElement( 'script');  
    script.type = 'text/javascript';
    script.async =true;
    script.src = 'http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js';  
    document.body.appendChild(script);

    //Create and draw the form here
    $(function()) {$
    	$("body").append("<form>
    		<input type=\"text\" name=\"url\">
    		<input type=\"text\" name=\"title\">
    		<submit></form>");
	});
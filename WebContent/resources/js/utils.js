function isEmail(email){
    var pattern=/^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
    if(pattern.test(email)){         
		return true;  
    }
    return false;
}

function isEmpty(str){
	return (!str || 0 === str.length);
}
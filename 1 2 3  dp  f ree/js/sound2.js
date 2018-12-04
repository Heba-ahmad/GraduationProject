
// New Sound Function 16.08.2009 by: Cyber-Web.biz

function play(soundfile,loop) {

	var content='<object type="application/x-mplayer2" ';
	content+=' pluginspage="http://www.microsoft.com/Windows/MediaPlayer/" ';
	content+=' Name="'+soundfile+'" src='+soundfile+' AutoStart=true ShowStatusBar=1 volume=-1 loop='+loop+' >';
	content+=' </object> ';
	/*
	var	content='<embed name="obj_'+soundfile+'" src='+soundfile+' autoplay="true" AUTOSTART="true" loop="'+loop+'" hidden="true" volume="80%" > ';
	content+='<NOEMBED><BGSOUND src='+soundfile+'></NOEMBED>';
	content+='</embed> ';
	*/
	try {

		document.getElementById(soundfile).innerHTML = content;
	} catch (err) {//object doesnt exist create new

	   var oDiv = document.createElement ("DIV"); // creating bufferDiv for fast sound load later
	   oDiv.id = soundfile;
	   oDiv.innerHTML=content;
	   document.body.appendChild (oDiv);
	   delete oDiv;
	}


}

function stop(soundfile) {
	document.getElementById(soundfile).innerHTML = "";

}
	


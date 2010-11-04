# If you want to add a Browser to extend AWStats database detection capabilities,
# you must add an entry in BrowsersSearchIDOrder and in BrowsersHashIDLib.
#-------------------------------------------------------
# $Revision: 1.66 $ - $Author: manolamancha $ - $Date: 2010/05/17 12:35:58 $

# 2006-05-15 Sean Carlos http://www.antezeta.com/awstats.html 
# 				akregator (rss)
		
#package AWSUA;

# Relocated from main file for easier editing
%BrowsersFamily = (
	'msie'      => 1,
	'firefox'   => 2,
	'netscape'  => 3,
	'svn'       => 4,
	'opera'     => 5,
	'safari'    => 6,
	'chrome'    => 7,
	'konqueror' => 8
);

# BrowsersSearchIDOrder
# This list is used to know in which order to search Browsers IDs (Most
'links',
'lynx',
'omniweb',

#mod - start
'ipod',
'iphone',
'android',
'ipx',
'worldpay',
'google_wireless_transcoder',
'moozilla',
'thunderbird',
'outlook-express',
'outlook',
'evolution',
'eudora',
'clamav',
'disqus',
#mod - end

# Other standard web browsers
'22acidownload',
'abrowse',
'teleport',
'webcapture',
'webcopier',

#mod - start
'facebookexternalhit',
'browsershots',
'plesk',
'google-site-verification',
'validator\.nu',
#mod - end

# Media only browsers
'real',
'winamp',				# Works for winampmpeg and winamp3httprdr
'xmms',
'gstreamer',
# RSS Readers

#mod- start
'apple\-pubsub',
'newsrob',
'simplepie',
#mod - end

'abilon',
'aggrevator',
'aiderss',
'webcollage',
'up\.',					# Works for UP.Browser and UP.Link
# PDA/Phonecell browsers
'blackberry',
'cnf2',
'docomo',
#mod - start
#'iphone',
'hiptop',
#mod - end
'portalmmm',
# Others (TV)
'webtv',
'POE\-Component\-Client\-HTTP',
'mozilla',				# Must be at end because a lot of browsers contains mozilla in string
'libwww',				# Must be at end because some browser have both 'browser id' and 'libwww'
'lwp',
#mod - start
'java',
'php',
#mod - end
);

# BrowsersHashIDLib
'webcollage','WebCollage (PDA/Phone browser)',
'up\.','UP.Browser (PDA/Phone browser)',					# Works for UP.Browser and UP.Link
# PDA/Phonecell browsers
'android','Android browser (PDA/Phone browser)',
'blackberry','BlackBerry (PDA/Phone browser)',
'cnf2','Supervision I-Mode ByTel (phone)',
'docomo','I-Mode phone (PDA/Phone browser)',
#'iphone','IPhone (PDA/Phone browser)',
'portalmmm','I-Mode phone (PDA/Phone browser)',
# Others (TV)
'webtv','WebTV browser',
'POE\-Component\-Client\-HTTP','HTTP user-agent for POE (portable networking framework for Perl)',
'mozilla','Mozilla',
'libwww','LibWWW',
'lwp','LibWWW-perl',

#these go at the end to overrride anything set above

#mod - start
'ipod','iPod',
'iphone','iPhone',
'android','Android',
'thunderbird','Thunderbird',
'outlook-express','Outlook Express',
'outlook','Outlook',
'moozilla','<a href="http://www.moo.ca/moozilla" target="_blank">Moozilla</a>',
'evolution','Evolution mail',
'eudora','Eudora mail',

'google_wireless_transcoder','<a href="http://google.com/gwt/n" target="_blank">Google Wireless Transcoder for mobiles</a>',
'google-site-verification','Google site verification',

'hiptop','Sidekick',

'ipx','IPX',
'worldpay','WorldPay',

'newsrob', 'NewsRob (RSS Reader)',
'apple\-pubsub','Apple OSX newsreader',
'simplepie', '<a href="http://simplepie.org" target="_blank">SimplePie</a>',

'facebookexternalhit','<a href="http://www.facebook.com/externalhit_uatext.php" target="_blank">FaceBook external hit</a>',
'browsershots','<a href="http://browsershots.org/" target="_blank">Browsershots</a>',
'plesk','Plesk control panel',
'disqus','<a href="http://disqus.com/" target="_blank">Disqus</a>',

'validator\.nu','HTML5 validator',

'clamav', 'Clam Anti Virus',

'php','PHP',
'java','Java',
#mod-end
);


# BrowsersHashAreGrabber
# Put here an entry for each browser in BrowsersSearchIDOrder that are grabber
# browsers.
'fget','1',
'download\smaster','1',
'webdownloader\sfor\sx','1',
'webzip','1',
#mod - start
'facebookexternalhit','1',
'browsershots','1',
'php','1',
'java','1',
'plesk','1',
'google-site-verification','1',
'clamav','1',
'validator\.nu','1',
'simplepie','1',
'disqus','1',
#mod - end
);


'webcollage','pdaphone',
'up\.','pdaphone',					# Works for UP.Browser and UP.Link
# PDA/Phonecell browsers
'android','android',
'blackberry','pdaphone',
'docomo','pdaphone',
'iphone','pdaphone',
'httrack','httrack',
'staroffice','staroffice',
'gnus', 'gnus',
'mozilla','mozilla',

#these go at the end to override

#mod - start
'ipod','iphone',
'iphone','iphone',
'android', 'android',
'blackberry', 'blackberry',
'ipx','cog',
'worldpay','cog',
'google_wireless_transcoder','pdaphone',
'hiptop','pdaphone',
'php','php',
'curl','curl',
'facebookexternalhit','facebook',
'newsrob', 'rss',
'apple\-pubsub','rss',
'java','java',
'moozilla','moozilla',
'plesk','plesk',
'thunderbird','thunderbird',
'outlook','outlook',
'outlook-express','outlook-express',
'evolution','evolution',
'eudora', 'eudora',
'clamav', 'clamscan'
#mod - end
);

# Source for this is http://developer.apple.com/internet/safari/uamatrix.html
%BrowsersSafariBuildToVersionHash = 
(
    '48' 		=> '0.8',
    '51' 		=> '0.8.1',
    '60' 		=> '0.8.2',
    '73' 		=> '0.9',
    '74' 		=> '1.0b2',
    '85'        => '1.0',
	'85.5'      => '1.0',
	'85.7'      => '1.0.2',
	'85.8'      => '1.0.3',
	'85.8.1'    => '1.0.3',
	'100'       => '1.1',
	'100.1'     => '1.1.1',
	'125.7'     => '1.2.2',
	'125.8'     => '1.2.2',
	'125.9'     => '1.2.3',
	'125.11'    => '1.2.4',
	'125.12'    => '1.2.4',
	'312'       => '1.3',
	'312.3'     => '1.3.1',
	'312.3.1'   => '1.3.1',
	'312.5'     => '1.3.2',
	'312.6'     => '1.3.2',
	'412'       => '2.0',
	'412.2'     => '2.0',
	'412.2.2'   => '2.0',
	'412.5'     => '2.0.1',
	'413'       => '2.0.1',
	'416.12'    => '2.0.2',
	'416.13'    => '2.0.2',
	'417.8'     => '2.0.3',
	'417.9.2'   => '2.0.3',
	'417.9.3'   => '2.0.3',
	'419.3'     => '2.0.4',
	'522.11.3'  => '3.0',
	'522.12'    => '3.0.2',
	'523.10'    => '3.0.4',
	'523.12'    => '3.0.4',
	'525.13'    => '3.1',
	'525.17'    => '3.1.1',
	'525.20'    => '3.1.1',
	'525.20.1'  => '3.1.2',
	'525.21'    => '3.1.2',
	'525.22'    => '3.1.2',
	'525.26'    => '3.2',
	'525.26.13' => '3.2',
	'525.27'    => '3.2.1',
	'525.27.1'  => '3.2.1',
	'526.11.2'  => '4.0',
	'528.1'     => '4.0',
	'528.16'    => '4.0'
);



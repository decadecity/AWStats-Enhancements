# If you want to add an OS to extend AWStats database detection capabilities,
# you must add an entry in OSSearchIDOrder, in OSHashID and in OSHashLib.
#-------------------------------------------------------
# $Revision: 1.31 $ - $Author: eldy $ - $Date: 2010/08/04 10:55:08 $

# 2005-08-19 Sean Carlos http://www.antezeta.com/awstats.html
#              - added specific Linux distributions in addition to 

#package AWSOS;

# Relocated from main file for easier editing
%OSFamily = (
	'win'   => 'Windows',
	'mac'   => 'Macintosh',
	'linux' => 'Linux',
	'bsd'   => 'BSD'
);

# OSSearchIDOrder
# This list is used to know in which order to search Operating System IDs
'mac[_+ ]68',									# This works for mac_6800 and mac_68k
'macweb',
'macintosh',
# Linux family
'linux(.*)android',
'linux(.*)asplinux',
'cp/m',
'crayos',
'dreamcast',
'iphone[_+ ]os',
'risc[_+ ]?os',
'symbian',
'webtv',
'playstation',
'xbox',
'wii',
#mod - start
'nintendo[_+ ]dsi',
'danger',
#mod - end
'vienna',
'newsfire',
'applesyndication',
#mod - start
'apple\-pubsub',
'newsrob',
#mod - end
'akregator',
'plagger',
'syndirella',
# also the name of icon file for this OS.
#--------------------------------------------------------------------------
%OSHashID	= (
#mod - start
'iphone[ +]os','iphone',
'newsrob','android',
'apple\-pubsub','macosx',
'nintendo[_+ ]dsi','nintendo-dsi',
'danger','danger',
#mod - end
# Windows OS family
'windows[_+ ]?2005','winlong','windows[_+ ]nt[_+ ]6\.0','winlong',
'windows[_+ ]?2008','win2008','windows[_+ ]nt[_+ ]6\.1','win7',
'windows[_+ ]?vista','winvista','windows[_+ ]nt[_+ ]6','winvista',
'windows[_+ ]?2003','win2003','windows[_+ ]nt[_+ ]5\.2','win2003',
'windows[_+ ]xp','winxp','windows[_+ ]nt[_+ ]5\.1','winxp', 'syndirella', 'winxp',
'mac[_+ ]os[_+ ]x','macosx', 'vienna', 'macosx', 'newsfire', 'macosx', 'applesyndication', 'macosx',
'mac[_+ ]?p','macintosh','mac[_+ ]68','macintosh','macweb','macintosh','macintosh','macintosh',
# Linux family (linuxyyy)
'linux(.*)android','linuxandroid',
'linux(.*)asplinux','linuxasplinux',
'linux(.*)centos','linuxcentos',
'linux(.*)debian','linuxdebian',
'freebsd','bsdfreebsd',
'openbsd','bsdopenbsd',
'netbsd','bsdnetbsd',
'dragonflybsd','bsddflybsd',
# Other Unix, Unix-like
'aix','aix',
'sunos','sunos',
'cp/m','cp/m',
'crayos','crayos',
'dreamcast','dreamcast',
'iphone[_+ ]os','ios',
'risc[_+ ]?os','riscos',
'symbian','symbian',
'webtv','webtv',
# Each unique ID string is associated to a label
#-----------------------------------------------------------
%OSHashLib      = (
#mod - start
'android','<a href="http://code.google.com/android/" title="Google Android home page [new window]" target="_blank">Google Android</a>',
'iphone','iPhone',
'apple\-pubsub','OSX news reader',
'nintendo[_+ ]dsi','Nintendo DSi',
'danger','<a href="http://http://www.danger.com/" target="_blank">DangerOS</a>',
#mod - end

# Windows family OS
'win7','<a href="http://www.microsoft.com/windows/" title="Windows 7 home page [new window]" target="_blank">Windows 7</a>',
'winlong','<a href="http://www.microsoft.com/windows/" title="Windows Vista home page [new window]" target="_blank">Windows Vista (LongHorn)</a>',
'win2008','<a href="http://www.microsoft.com/windowsserver2008/" title="Windows 2008 home page [new window]" target="_blank">Windows 2008</a>',
'winvista','<a href="http://www.microsoft.com/windowsvista/" title="Windows Vista home page [new window]" target="_blank">Windows Vista</a>',
'cp/m','<a href="http://www.digitalresearch.biz/CPM.HTM" title="CP/M home page [new window]" target="_blank">CP/M</a>',
'crayos','<a href="http://www.cray.com/" title="CrayOS home page [new window]" target="_blank">CrayOS</a>',
'dreamcast','<a href="http://www.sega.com/" title="Dreamcast home page [new window]" target="_blank">Dreamcast</a>',
'ios','<a href="http://www.apple.com/" title="Apple home page [new window]" target="_blank">iOS (iPhone/iPod/iPad/...)</a>',
'riscos','<a href="http://www.riscos.com/" title="RISC OS home page [new window]" target="_blank">RISC OS</a>',
'symbian','<a href="http://www.symbian.com/" title="Symbian OS home page [new window]" target="_blank">Symbian OS</a>',
'webtv','<a href="http://www.webtv.com/" title="WebTV home page [new window]" target="_blank">WebTV</a>',

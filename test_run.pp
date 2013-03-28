#!/bin/puppet

file {'testing':
	path	=> '/home/joker/puppet_catch/testfile',
	ensure	=> present,
	mode 	=> 0640,
	content	=> "I am the first of my kind",
	#before 	=> Notify['first']
}

file {'next':
	path	=> '/home/joker/puppet_catch/the_next',
	ensure	=> present,
	mode 	=> 0640,
	content	=> "I am the younger sibling",
	#before	=> Notify['second']
}

notify{'first':
	message	=> "the first file is being deployed"
}

notify{'second':
	message => "the second file is being deployed"
}

File['testing'] -> Notify['first'] -> File['next'] -> Notify['second']

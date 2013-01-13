#!/bin/puppet

file {'testing':
	path	=> '/home/joker/puppet_catch/testfile',
	ensure	=> present,
	mode 	=> 0640,
	content	=> "I am the first of my kind"
}

file {'next':
	path	=> '/home/joker/puppet_catch/the_next',
	ensure	=> present,
	mode 	=> 0640,
	content	=> "I am the younger sibling"
}

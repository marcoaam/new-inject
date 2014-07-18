Method inject rewritten
=======================

Inject method rewritten with the name 

		new_inject

It can take a block:

		new_inject(1) { |sum, n| sum + n }

Also can be aplied in this form:

		new_inject(:+)
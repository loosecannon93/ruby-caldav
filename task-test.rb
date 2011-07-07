require 'lib/caldav.rb'

cal = Caldav.new( "icalserver", 80, '/path/to/calendard/file/', 'user', 'password')
res = cal.todo

res.each{ |todo| 
    p todo
}

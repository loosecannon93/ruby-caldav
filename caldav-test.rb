require 'lib/caldav.rb'

cal = Caldav.new( "caldavserver", 80, '/path/to/calendar/file/', 'user', 'password')
p cal.report "20071201T000000", "20071231T000000"

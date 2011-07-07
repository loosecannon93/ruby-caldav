require './lib/caldav.rb'

myevent = Event.new
myevent.dtstart = DateTime.parse( '2011/07/07 09:45')
myevent.dtend = DateTime.parse( '2011/07/07 10:45')
myevent.summary = "Yo Yo YO"



host = 'mail1.lite3d.com'
port = 443
url = '/dav/cmatthews@lite3d.com/Time'
user = 'cmatthews'
password = 'password'


cal = Caldav.new host, port, url, user, password 

uuid, response = cal.create myevent

  puts "Response #{response.code} #{response.message}: #{response.body}"


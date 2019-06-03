#Pushwoosh.configure do |config|
#  config.application = '9463C-4FD9E'
#  config.auth = '4eKoo7XQyl0FWXGybmI8VN4iP6iBFvPxOTkIvC7J2D0vjpNC8ESAoweeTCRIxBc0ojtXlN84gbcMyvCF4s2F'

#end
# { auth: '4eKoo7XQyl0FWXGybmI8VN4iP6iBFvPxOTkIvC7J2D0vjpNC8ESAoweeTCRIxBc0ojtXlN84gbcMyvCF4s2F', application: '89F98-64387' }
# iphone 6 serial number C37P5DVHG5MN



MyPW = Pwush.new(auth: '4eKoo7XQyl0FWXGybmI8VN4iP6iBFvPxOTkIvC7J2D0vjpNC8ESAoweeTCRIxBc0ojtXlN84gbcMyvCF4s2F', app: '89F98-64387')

first_message = Pwush::Message.new(
  content: { fr: 'Hello' },
  send_date: '2019-05-31 16:12',
  timezone: 'Europe/London',
  devices: ['F0F00373-AB6E-4205-BF56-BE7256BDCC7A'],
  ios_title: 'This is the test message',
  ios_subtitle: 'subtitle!'
)

MyPW.push(first_message)

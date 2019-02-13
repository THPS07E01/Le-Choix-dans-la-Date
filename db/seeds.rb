User.destroy_all
Event.destroy_all
Attendance.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('events')
ActiveRecord::Base.connection.reset_pk_sequence!('attendances')

30.times do |i|
	user = User.create!(
		first_name: Faker::Internet.username,
		last_name: Faker::LeagueOfLegends.champion,
		description: Faker::LeagueOfLegends.quote,
		email: Faker::Internet.email,
		password: Faker::Space.agency)
	print '.'
end
puts '=== User DB created ==='

10.times do |j|
	event = Event.create!(
		admin_id: User.all.sample.id,
		title: Faker::Music.instrument + Faker::Music.instrument,
		description: Faker::HitchhikersGuideToTheGalaxy.quote + Faker::MostInterestingManInTheWorld.quote,
		start_date: Faker::Date.forward(rand(1..666)),
		duration: j * 5,
		price: rand(1..1000),
		location: Faker::LeagueOfLegends.location)
	print '.'
end
puts '=== Event DB created ==='

30.times do |k|
	attendance = Attendance.create!(
		attendee_id: User.all.sample.id,
		event_id: Event.all.sample.id,
		stripe_customer_id: Faker::Business.credit_card_number)
	print '.'
end
puts '=== Attendance DB created ==='

# 3.times do |l|
# 	user = User.create!(email: "peepoodo#{l}@yopmail.com", first_name: Faker::Internet.username, last_name: Faker::LeagueOfLegends.champion, description: Faker::LeagueOfLegends.quote, encrypted_password: Faker::Space.agency)
# 	l += 1
# end
#
# 1.times do |m|
# 	event = Event.create!(admin_id: 1, start_date: Faker::Date.forward(rand(1..666)), duration: 50, title: Faker::Music.instrument + Faker::Music.instrument, description: Faker::HitchhikersGuideToTheGalaxy.quote + Faker::MostInterestingManInTheWorld.quote, price: rand(1..1000), location: Faker::LeagueOfLegends.location)
# end
#
# 2.times do |n|
# 	attendance = Attendance.create!(attendee_id: n + 1, event_id: 1, stripe_customer_id: Faker::Business.credit_card_number)
# 	n += 1
# end

puts ''
puts "TTTTTTTTTTTTTTTTTTTTTTThhhhhhh"
sleep(0.1)
puts "T:::::::::::::::::::::Th:::::h"
sleep(0.1)
puts "T:::::TT:::::::TT:::::Th:::::h"
sleep(0.1)
puts "TTTTTT  T:::::T  TTTTTT h::::h hhhhh           eeeeeeeeeeee"
sleep(0.1)
puts "        T:::::T         h::::hh:::::hhh      ee::::::::::::ee"
sleep(0.1)
puts "        T:::::T         h::::::::::::::hh   e::::::eeeee:::::ee"
sleep(0.1)
puts "        T:::::T         h:::::::hhh::::::h e::::::e     e:::::e"
sleep(0.1)
puts "        T:::::T         h::::::h   h::::::he:::::::eeeee::::::e"
sleep(0.1)
puts "        T:::::T         h:::::h     h:::::he:::::::::::::::::e"
sleep(0.1)
puts "        T:::::T         h:::::h     h:::::he::::::eeeeeeeeeee"
sleep(0.1)
puts "        T:::::T         h:::::h     h:::::he:::::::e"
sleep(0.1)
puts "      TT:::::::TT       h:::::h     h:::::he::::::::e"
sleep(0.1)
puts "      T:::::::::T       h:::::h     h:::::h e::::::::eeeeeeee"
sleep(0.1)
puts "      T:::::::::T       h:::::h     h:::::h  ee:::::::::::::e"
sleep(0.1)
puts "      TTTTTTTTTTT       hhhhhhh     hhhhhhh    eeeeeeeeeeeeee"
sleep(0.1)
puts ''
puts "   SSSSSSSSSSSSSSS"
sleep(0.1)
puts " SS:::::::::::::::S"
sleep(0.1)
puts "S:::::SSSSSS::::::S"
sleep(0.1)
puts "S:::::S     SSSSSSS"
sleep(0.1)
puts "S:::::S            uuuuuu    uuuuuu ppppp   ppppppppp       eeeeeeeeeeee    rrrrr   rrrrrrrrr"
sleep(0.1)
puts "S:::::S            u::::u    u::::u p::::ppp:::::::::p    ee::::::::::::ee  r::::rrr:::::::::r"
sleep(0.1)
puts "    SSS::::::::SS  u::::u    u::::u  p:::::p     p:::::pe:::::::eeeee::::::e r:::::r     r:::::r"
sleep(0.1)
puts "       SSSSSS::::S u::::u    u::::u  p:::::p     p:::::pe:::::::::::::::::e  r:::::r     rrrrrrr"
sleep(0.1)
puts "            S:::::Su:::::uuuu:::::u  p:::::p    p::::::pe:::::::e            r:::::r"
sleep(0.1)
puts "SSSSSSS     S:::::Su:::::::::::::::uup:::::ppppp:::::::pe::::::::e           r:::::r"
sleep(0.1)
puts "S::::::SSSSSS:::::S u:::::::::::::::up::::::::::::::::p  e::::::::eeeeeeee   r:::::r"
sleep(0.1)
puts "S:::::::::::::::SS   uu::::::::uu:::up::::::::::::::pp    ee:::::::::::::e   r:::::r"
sleep(0.1)
puts " SSSSSSSSSSSSSSS       uuuuuuuu  uuuup::::::pppppppp        eeeeeeeeeeeeee   rrrrrrr"
sleep(0.1)
puts "                                     p:::::p"
sleep(0.1)
puts "                                     p:::::p"
sleep(0.1)
puts "                                    p:::::::p"
sleep(0.1)
puts "                                    p:::::::p"
sleep(0.1)
puts "                                    p:::::::p"
sleep(0.1)
puts ''
puts "   ffffffffffffffff                                        kkkkkkkk"
sleep(0.1)
puts "  f::::::::::::::::f                                       k::::::k"
sleep(0.1)
puts " f::::::::::::::::::f                                      k::::::k"
sleep(0.1)
puts " f::::::fffffff:::::f                                      k::::::k"
sleep(0.1)
puts " f:::::f       ffffffuuuuuu    uuuuuu      cccccccccccccccc k:::::k    kkkkkkk"
sleep(0.1)
puts " f:::::f             u::::u    u::::u    cc:::::::::::::::c k:::::k   k:::::k"
sleep(0.1)
puts "f:::::::ffffff       u::::u    u::::u   c:::::::::::::::::c k:::::k  k:::::k"
sleep(0.1)
puts "f::::::::::::f       u::::u    u::::u  c:::::::cccccc:::::c k:::::k k:::::k"
sleep(0.1)
puts "f::::::::::::f       u::::u    u::::u  c::::::c     ccccccc k::::::k:::::k"
sleep(0.1)
puts "f:::::::ffffff       u::::u    u::::u  c:::::c              k:::::::::::k"
sleep(0.1)
puts " f:::::f             u::::u    u::::u  c:::::c              k:::::::::::k"
sleep(0.1)
puts " f:::::f             u:::::uuuu:::::u  c::::::c     ccccccc k::::::k:::::k"
sleep(0.1)
puts "f:::::::f            u:::::::::::::::uuc:::::::cccccc:::::ck::::::k k:::::k"
sleep(0.1)
puts "f:::::::f             u:::::::::::::::u c:::::::::::::::::ck::::::k  k:::::k"
sleep(0.1)
puts "f:::::::f              uu::::::::uu:::u  cc:::::::::::::::ck::::::k   k:::::k"
sleep(0.1)
puts "fffffffff                uuuuuuuu  uuuu    cccccccccccccccckkkkkkkk    kkkkkkk"
sleep(0.1)
puts ''
puts "FFFFFFFFFFFFFFFFFFFFFF                     iiii                                                    d::::::d"
sleep(0.1)
puts "F::::::::::::::::::::F                    i::::i                                                   d::::::d"
sleep(0.1)
puts "F::::::::::::::::::::F                     iiii                                                    d::::::d"
sleep(0.1)
puts "FF::::::FFFFFFFFF::::F                                                                             d:::::d"
sleep(0.1)
puts "  F:::::F       FFFFFFrrrrr   rrrrrrrrr  iiiiiii     eeeeeeeeeeee    nnnn  nnnnnnnn        ddddddddd:::::d     ssssssssss"
sleep(0.1)
puts "  F:::::F             r::::rrr:::::::::r i:::::i   ee::::::::::::ee  n:::nn::::::::nn    dd::::::::::::::d   ss::::::::::s"
sleep(0.1)
puts "  F::::::FFFFFFFFFF   r:::::::::::::::::r i::::i  e::::::eeeee:::::een::::::::::::::nn  d::::::::::::::::d ss:::::::::::::s"
sleep(0.1)
puts "  F:::::::::::::::F   rr::::::rrrrr::::::ri::::i e::::::e     e:::::enn:::::::::::::::nd:::::::ddddd:::::d s::::::ssss:::::s"
sleep(0.1)
puts "  F:::::::::::::::F    r:::::r     r:::::ri::::i e:::::::eeeee::::::e  n:::::nnnn:::::nd::::::d    d:::::d  s:::::s  ssssss"
sleep(0.1)
puts "  F::::::FFFFFFFFFF    r:::::r     rrrrrrri::::i e:::::::::::::::::e   n::::n    n::::nd:::::d     d:::::d    s::::::s"
sleep(0.1)
puts "  F:::::F              r:::::r            i::::i e::::::eeeeeeeeeee    n::::n    n::::nd:::::d     d:::::d       s::::::s"
sleep(0.1)
puts "  F:::::F              r:::::r            i::::i e:::::::e             n::::n    n::::nd:::::d     d:::::d ssssss   s:::::s"
sleep(0.1)
puts "FF:::::::FF            r:::::r           i::::::ie::::::::e            n::::n    n::::nd::::::ddddd::::::dds:::::ssss::::::s"
sleep(0.1)
puts "F::::::::FF            r:::::r           i::::::i e::::::::eeeeeeee    n::::n    n::::n d:::::::::::::::::ds::::::::::::::s"
sleep(0.1)
puts "F::::::::FF            r:::::r           i::::::i  ee:::::::::::::e    n::::n    n::::n  d:::::::::ddd::::d s:::::::::::ss"
sleep(0.1)
puts "FFFFFFFFFFF            rrrrrrr           iiiiiiii    eeeeeeeeeeeeee    nnnnnn    nnnnnn   ddddddddd   ddddd  sssssssssss"

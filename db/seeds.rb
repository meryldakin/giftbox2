# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

anytime = Celebration.create(name: "Anytime", month: 0, day: 0)
birthday = Celebration.create(name: "Birthday", month: 0, day: 0)
christmas = Celebration.create(name: "Christmas", month: 12, day: 25)

kaycie = Friend.create(first_name: "Kaycie", last_name: "Hall", birthday: Date.new(1988,10, 2))
nathan = Friend.create(first_name: "Nathan", last_name: "Johnson", birthday: Date.new(1988,8, 13))

# kaycie_anytime = FriendCelebration.create(friend_id: 1, celebration_id: 1, date: nil)
# kaycie_birthday = FriendCelebration.create(friend_id: 1, celebration_id: 2, date: kaycie.birthday)
# nathan_anytime = FriendCelebration.create(friend_id: 2, celebration_id: 1, date: nil)
# 
#
# switch = Gift.create(name: "Nintendo Switch", source: "Amazon")
# pony = Gift.create(name: "Pony", source: "Horse Store")

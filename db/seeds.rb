puts "🌱 Seeding spices..."

puts "Creating Users"

claire = User.create(username: "clogan", email: "clogan@hotmail.com", password: "password", avatar: "https://avatars.githubusercontent.com/u/77256559?v=4")

sam = User.create(username: "BravoHistorian", email: "bravohistorian@hotmail.com", password: "password", avatar: "https://i.pinimg.com/originals/6b/23/3f/6b233f13adb9fbe12dae740b3cdcf0f8.png")

puts "Users Created"

puts "Creating Communities"

bachelor_nation = Community.create(name: "Bachelor Nation")
love_island = Community.create(name: "Love Island")
bravo = Community.create(name: "Bravo")
day_fiance = Community.create(name: "90 Day Fiance")

puts "Communities Created"

puts "Creating Posts"

post1 = Post.create(user_id: claire.id, community_id: bravo.id, headline: "Wendy's Takedown of Gizelle", content: "I am still shaking, WenZen went for it last night. What did you all think?", image_url: "https://www.etonline.com/sites/default/files/styles/970xh/public/images/2021-07/WENDY_VS_GIZELLE_RHOP_S5.jpeg?itok=-AYqFPKT")
post2 = Post.create(user_id: claire.id, community_id: bravo.id, headline: "Grande Dame appreciation post", content: "", image_url: "https://pbs.twimg.com/media/E5JCQgOXEAsq5Gl?format=jpg&name=900x900")
post3 = Post.create(user_id: claire.id, community_id: bachelor_nation.id, headline: "Thoughts on Serena & Joe?", content: "I was skeptical at first, but they actually seem to vibe well. Thoughts?", image_url: "")
post4 = Post.create(user_id: claire.id, community_id: love_island.id, headline: "Justice for Cinco", content: "The producers definitely needed to intervene. The moment he go sent home, the season went downhill and fast.", image_url: "")
post5 = Post.create(user_id: claire.id, community_id: day_fiance.id, headline: "Bring Back a Couple", content: "If you could bring back any couple, who would you pick?", image_url: "")

puts "Posts Created"

puts "Creating Replies"

reply1 = Reply.create(user_id: sam.id, post_id: post1.id, content: "Honestly might have been a top 10 ALL time housewives moment for me. She read them like I've never seen before.")
reply2 = Reply.create(user_id: claire.id, post_id: post1.id, content: "I know right? A hall-of-fame moment.")
reply3 = Reply.create(user_id: sam.id, post_id: post3.id, content: "Yeah, she doesn't really seem ready for a serious relationship...but only time will tell!")
reply4 = Reply.create(user_id: sam.id, post_id: post4.id, content: "Couldn't agree more. The love triangle between him, Cash, and Trina was the only thing going for this season.")
reply5 = Reply.create(user_id: sam.id, post_id: post2.id, content: "BOOOO!! TEAM GIZELLE")
reply6 = Reply.create(user_id: sam.id, post_id: post5.id, content: "Big Ed. No question.")


puts "Replies Created"

puts "Creating Likes"
like1 = Like.create(user_id: sam.id, post_id: post1.id)
like2 = Like.create(user_id: claire.id, post_id: post1.id)
like3 = Like.create(user_id: sam.id, post_id: post3.id)
like4 = Like.create(user_id: sam.id, post_id: post4.id)

puts "Likes Created "

puts "✅ Done seeding!"

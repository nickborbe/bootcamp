require_relative("lib/blog.rb")
require_relative("lib/post.rb")
require_relative("lib/sponsored.rb")
require 'colorize'

blog = Blog.new
blog.add_post Post.new("Downtown Chickens", Time.new(2016, 1, 11), "I saw feral chickens in the city this morning.")
blog.add_post Post.new("Broken Hearted me", Time.new(2015, 10, 1), "Today, my girlfriend dumped me. Waaaahh.")
blog.add_post Post.new("Bootcamp", Time.now, "Today, I am settling into my coding bootcamp program.  My feeble brain is feeling pretty lethargic.")
blog.add_post SponsoredPost.new("Don't sell you car without calling this number!", Time.new(2015, 12, 15), "If you are thinking of selling your car, call 1-800-555-8970.  We can sell your car for double what it is worth!")
blog.add_post Post.new("Another post", Time.new(2015, 9, 1), "this is a post")
blog.add_post SponsoredPost.new("This is a Commercial", Time.new(2015, 9, 15), "Buy my shoes")
blog.add_post Post.new("Racing in homestead", Time.new(2015, 8, 13), "There is a racetrack in Homestead")
blog.add_post Post.new("Batman Begins", Time.new(2014, 10, 5), "This is the oldest post")


blog.publish_front_page

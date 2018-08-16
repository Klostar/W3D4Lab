require_relative('models/star.rb')
require_relative('models/movie.rb')
require_relative('models/casting.rb')

require('pry-byebug')

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

star1 = Star.new({'first_name' => 'Tom' , 'last_name' => 'Hardy'})
star1.save()
star2 = Star.new({'first_name' =>'Robert', 'last_name' => 'Downey.Jr'})
star2.save()
star3 = Star.new({'first_name'=>'Margot', 'last_name' => 'Robbie'})
star3.save

movie1 = Movie.new({'title' => 'Inception', 'genre' => 'Action'})
movie1.save()
movie2 = Movie.new({'title' =>'Iron Man', 'genre' =>'Science Fiction'})
movie2.save()
movie3 = Movie.new({'title' =>'Wolf of Wall Street', 'genre' => 'Black Comedy'})
movie3.save()

casting1 = Casting.new({'star_id' => star1.id , 'movie_id' => movie1.id, 'fee' => 39000000})
casting1.save()
casting2 = Casting.new({'star_id' => star2.id, 'movie_id' => movie2.id, 'fee' => 75000000})
casting2.save()
casting3 = Casting.new({'star_id' => star3.id, 'movie_id' => movie3.id, 'fee' => 2000000})
casting3.save()

binding.pry
nil

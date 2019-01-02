require 'pry'

def game_hash
  team = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {:number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1},
        "Reggie Evans" => {:number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
        "Brook Lopez" => {:number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
        "Mason Plumlee" => {:number => 1, :shoe => 19, :points => 26, :rebounds => 12, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
        "Jason Terry" => {:number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
      },
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {:number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2},
        "Bismak Biyombo" => {:number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 7, :blocks => 15, :slam_dunks => 10},
        "DeSagna Diop" => {:number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
        "Ben Gordon" => {:number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
        "Brendan Haywood" => {:number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 22, :blocks => 5, :slam_dunks => 12}
      },
    },
  }
end

def num_points_scored(name)
  game_hash.each do |team, data|
    data[:players].each do |key, value|
       return value[:points] if name == key
     end
  end
end

def shoe_size(name)
  game_hash.each do |team, data|
    data[:players].each do |key, value|
       return value[:shoe] if name == key
     end
  end
end

def team_colors(team_name)
  game_hash.each do |team, data|
      return data[:colors] if team_name == data[:team_name]
  end
end

def team_names
array=[]
game_hash.each do |x, data|
    array << data[:team_name]
     end
     array
  end

def player_numbers(team)
  numbers=[]
  game_hash.each do |attribute, data|
       if team == data[:team_name]
         data[:players].each do |name, value|
         numbers.push(value[:number])
     end
   end
 end
   numbers
end

def player_stats(player_name)
  game_hash.each do |team, data|
    data[:players].each do |key, value|
      return value if key == player_name
    end
  end
end

def big_shoe_rebound
  
  game_hash.each do |team, data|
    data[:players].each do |key, value|
       return value[:shoe] if name == key
     end
  end
end


 
def all_player_stats
  player_stats=[]
  game_hash.each do |attribute, data|
    data.each do |key, value|
      if key == :players
        value.each do |player, stats|
      player_stats << stats
    end
    end
  end
  end
  player_stats
end

def big_shoe_rebounds
  biggest_rebounds = 0
  shoe_size = 0
all_player_stats.each do |player_stats|
  if player_stats[:shoe] > shoe_size
    shoe_size = player_stats[:shoe]
    biggest_rebounds = player_stats[:rebounds]
  end
  end
  biggest_rebounds
  binding.pry
end

big_shoe_rebounds



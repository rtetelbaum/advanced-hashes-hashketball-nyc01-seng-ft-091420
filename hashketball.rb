require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(name)
players = game_hash[:home][:players].merge(game_hash[:away][:players])
  binding.pry
  # game_hash.each do |location, team_data|
  #   team_data.each do |team_attribute, team_info|
  #     if team_attribute == :players
  #       team_info.each do |array|
  #         array.each do |player_attribute, player_stat|
  #           if player_stat == name
  #             array.each do |player_attribute, player_stat|
  #               if player_attribute == :points
  #                 return player_stat
  #               end
  #             end
  #           end
  #         end
  #       end
  #     end
  #   end
  # end
end

def shoe_size(name)
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute, team_info|
      if team_attribute == :players
        team_info.each do |array|
          array.each do |player_attribute, player_stat|
            if player_stat == name
              array.each do |player_attribute, player_stat|
                if player_attribute == :shoe
                  return player_stat
                end
              end
            end
          end
        end
      end
    end
  end
end

def team_colors(team)
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute, team_info|
      if team_info == team
        team_data.each do |team_attribute, team_info|
          if team_attribute == :colors
            return team_info
          end
        end
      end
    end
  end
end

def team_names
  teams = []
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute, team_info|
      if team_attribute == :team_name
        teams << team_info
      end
    end
  end
  teams
end

def player_numbers(team)
  numbers = []
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute, team_info|
      if team_info == team
        team_data.each do |team_attribute, team_info|
          if team_attribute == :players
            team_info.each do |array|
              array.each do |player_attribute, player_stat|
                if player_attribute == :number
                  numbers << player_stat
                end
              end
            end
          end
        end
      end
    end
  end
  numbers.sort
end

def player_stats(name)
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute, team_info|
      if team_attribute == :players
        team_info.each do |array|
          array.each do |player_attribute, player_stat|
            if player_stat == name
              return array
            end
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  biggest_size = 0
  rebounds = 0
  game_hash.each do |location, team_data|
    team_data.each do |team_attribute, team_info|
      if team_attribute == :players
        team_info.each do |array|
          array.each do |player_attribute, player_stat|
            if player_attribute == :shoe  
              if player_stat > biggest_size
                biggest_size = player_stat
                rebounds = array[:rebounds]
              end
            end
          end
        end
      end
    end
  end
  rebounds
end
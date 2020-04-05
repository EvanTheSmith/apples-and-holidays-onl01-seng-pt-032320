require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |day, item|
        item << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  # Not sure if there's an easier way to do this since there's only one spring holiday ...
  
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |day, item|
        item << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  # Is this right? Did I cheat? Haha
  
holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  # Get the seasons and capitalize
  
  seasons=[]
  holiday_hash.keys.each do |season|
  seasons << season.to_s.capitalize
  end
  
  # Get the holidays
  
  holidays=[]
  holiday_hash.each do |season, day|
    day.each do |specific_day, item|
    holidays << specific_day.to_s
    end
  end
  
  # Capitalize holiday names + convert "_" to " "
  holidays2=[]
  holidays.each do |cap|
    if cap.split("").include?("_")
      split_first = cap.split("_")
        split_first.each do |now_cap|
          now_cap.capitalize!
        end
        holidays2 << split_first.join(" ")
    else
      holidays2 << cap.capitalize
    end
  end
  
  # Get the supplies
  the_supplies=[]
  holiday_hash.each do |season, day|
     the_supplies << holiday_hash[season].values
  end
  
  puts seasons[0]":"
  puts holidays2[0..1]
  puts the_supples[0]
  
  binding.pry

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end








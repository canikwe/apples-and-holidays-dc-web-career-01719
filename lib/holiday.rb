require 'pry'

holiday_hash =    {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }

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

element = "string"
    holiday_hash.each do |seasons, data|
        data.each do |holiday, array|
        if  holiday == :fourth_of_july
            element = array[1]
        end
        end
    end
    element
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
    
    holiday_hash[:winter].map do |holiday, list|
        list << supply
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
    
    holiday_hash.map do |season, data|
        data.map do |holiday, list|
            if holiday == :memorial_day
            list << supply
            end
        end
    end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
    holiday_hash[season][holiday_name] = supply_array
    
    holiday_hash
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
    holiday_hash.each do |season, data|
        puts "#{season.capitalize}:" 
        data.each do |holiday, list|
            holiday_split = holiday.to_s.split("_")
            
            holiday_split.map! {|name| name.capitalize}
            
            list = list.join(", ")
           puts "  #{holiday_split.join(" ")}: #{list}" 
        end
    end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
    array = []
    holiday_hash.each do |season, data|
        data.each do |holiday, list|
            if list.include?("BBQ")
                array << holiday
            end
        end
    end
    array
end



#all_supplies_in_holidays(holiday_hash)




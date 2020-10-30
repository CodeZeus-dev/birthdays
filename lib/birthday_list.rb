require 'date'

class BirthdayList

  attr_reader :birthdays

  def initialize
    @birthdays = []
  end

  def store_birthday(name, date)
    @birthdays << [name, date]
  end

  def see
    return @birthdays.map {|item| p item.join(" - ")}
  end

  def check_birthday(date)
    @birthdays.each { |item|
      if item[1] == date
        age = (Date.today.year - (item[1][/[0-9]+$/]).to_i) % 100
        p "It's #{item[0]}'s birthday today! They are #{age} years old!"
        return item[0]
      end
    }
  end

end

require 'date'
class Lesson1
  def sum(val = 0)
    val.to_s.split('').map(&:to_i) .inject { |a, e| a + e }
  end

  def age(birthday)
    begin
      years = Date.parse(Time.now.to_s).year - Date.parse(birthday).year
    rescue
      return 'Invalid Date Format'
    end
    str = "Я живу #{years} года или #{get_days(years)} дней или
          #{get_hours(years)} часов или #{get_minutes(years)}
           минут или #{get_seconds(years)} секунд"
    str
  end

  def get_days(years)
    years * 365
  end

  def get_hours(years)
    years * 365 * 24
  end

  def get_minutes(years)
    years * 365 * 24 * 60
  end

  def get_seconds(years)
    years * 365 * 24 * 60 * 60
  end

  def name
    name1 = gets
    name2 = gets
    name3 = gets

    "Hello #{name1} #{name2} #{name3}!"
  end
end

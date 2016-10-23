require 'date'
class Lesson1
  def sum(val = 0)
    val.to_s.split('').map(&:to_i) .inject { |a, e| a + e }
  end

  def age(birthday)
    if birthday.nil?
      return 'Invalid Date Format'
    end
    years = Date.parse(Time.now.to_s).year - Date.parse(birthday).year
    str = "Я живу #{years} года или #{years * 365} дней или
          #{years * 365 * 24} часов или #{years * 365 * 24 * 60}
           минут или #{years * 365 * 24 * 60 * 60} секунд"
    str
  end

  def name
    name1 = gets
    name2 = gets
    name3 = gets

    "Hello #{name1} #{name2} #{name3}!"
  end
end

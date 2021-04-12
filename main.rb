require_relative 'train.rb'
require_relative 'cargo_train.rb'
require_relative 'passenger_train.rb'
require_relative 'wagon.rb'
require_relative 'cargo_wagon.rb'
require_relative 'passenger_wagon.rb'
require_relative 'station.rb'
require_relative 'route.rb'

class RailRoad

  def menu
    
    #if t == 'stop'.to_sym
    puts 'Введите 1 если вы хотите создать станцию поезд маршрут вагон'
    puts 'Введите 2 если вы хотите произвести операции с обхектами'
    puts 'Введите 3 если вы хотите ввести данные о объектах'
    puts 'Ввести 0 или стоп чтобы закончить программу'
    x = gets.chomp.to_i
    if x == 1 
      puts 'Введите 1 создать станцию'
      puts 'Введите 2 создать поезд'
      puts 'Введите 3 создать маршрут'
      puts 'Ввести 4 создать вагон'
      y = gets.chomp.to_i
      if y == 1
        puts 'Введите название станции'
        z = gets.chomp
        station = Station.new(z)
      elsif y == 2
        puts 'Введите номер поезда'
        z = gets.chomp.to_i
        train = Train.new(z)
      elsif y == 3
        Station.all
        #route.show_stations
        puts 'Введите порядковый номер по списку первой станции'
        z = gets.chomp.to_i
        puts 'Введите пордковый номер по списку второй станции'
        f = gets.chomp.to_i
        route = Route.new(Station.all[z-1],Station.all[f-1])
      else y == 4
        wagon = Wagon.new
      end

    elsif
      x == 2
      puts 'Выберите 1 Назначать маршрут поезду'
      puts 'Выберите 2 Добавить вагон поезду'
      puts 'Выберите 3 Отцепить вагон поезду'
      puts 'Выберите 4 Переместить поезд вверх'
      puts 'Выберите 5 Переместить поезд вниз'
      y = gets.chomp.to_i
      if y == 1
        Train.all
        puts 'Введите порядковый номер по списку поезда'
        f = gets.chomp.to_i
        Route.all
        puts 'Введите порядковый номер маршрута'
        z = gets.chomp.to_i
        Train.all[f-1].route(Route.all[z-1])
      elsif y == 2
      elsif y == 3
      elsif y == 4
      else y == 5
      end
    elsif
      x == 3
    else
    end
  end

  def seed

    cargotrain1 = CargoTrain.new(5)
    passenger_train1 = PassengerTrain.new(10)
    station1 = Station.new('Devyatkino')
    station2 = Station.new('Grazdanskaya')
    station3 = Station.new('Akademicheskaya')
    station4 = Station.new('Politechnicheskaya')
    route1 = Route.new(station1,station4)

  end

  def stations
    puts "#{station4}"
  end

end

=begin

Создать программу в файле main.rb, которая будет позволять пользователю через 
текстовый интерфейс делать следующее:
     - Создавать станции
     - Создавать поезда
     - Создавать маршруты и управлять станциями в нем (добавлять, удалять)
     - Назначать маршрут поезду
     - Добавлять вагоны к поезду
     - Отцеплять вагоны от поезда
     - Перемещать поезд по маршруту вперед и назад
     - Просматривать список станций и список поездов на станции

В качестве ответа приложить ссылку на репозиторий с решением
=end

=begin

    Разбить программу на отдельные классы (каждый класс в отдельном файле) = yes
    Разделить поезда на два типа PassengerTrain и CargoTrain, сделать родителя 
    для классов, который будет содержать общие методы и свойства = yes
    Определить, какие методы могут быть помещены в private/protected и вынести
    их в такую секцию. В комментарии к методу обосновать, почему он был вынесен в 
    private/protected
    Вагоны теперь делятся на грузовые и пассажирские (отдельные классы). 
    К пассажирскому поезду можно прицепить только пассажирские, к грузовому - грузовые. 
    При добавлении вагона к поезду, объект вагона должен передаваться как аргумент 
    метода и сохраняться во внутреннем массиве поезда, 
    в отличие от предыдущего задания, где мы считали только кол-во вагонов. 
    Параметр конструктора "кол-во вагонов" при этом можно удалить.
=end
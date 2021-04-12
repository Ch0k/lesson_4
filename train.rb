class Train
  @@count = 0
  @@instances = []
  attr_accessor :speed
  attr_reader :number, :type
  # Имеет номер (произвольная строка) и тип (грузовой, пассажирский) и количество 
  # вагонов, эти данные указываются при создании экземпляра класса
  def initialize(number)
    @number = number
    @@count += 1
    @@instances << self
    @wagon = []
    #@quantity = quantity

    #@type = type if (type == 'грузовой') || (type == 'пассажирский')
  end

  def add_wagon(wagon)
    @wagon << wagon
  end

  def self.all
    @@instances.each{|train| puts train.number}
  end

  def self.count
    @@count
  end
  
  def stop
    @speed = 0
  end

  # Может прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто
  # увеличивает или уменьшает количество вагонов). Прицепка/отцепка вагонов может 
  # осуществляться только если поезд не движется.
  #def wagon_connect_plus
   # @quantity += 1 if @speed == 0 
  #end

 # def wagon_connect_minus
    #@quantity -= 1 if @speed == 0 
 # end
  def show_trains
    @numbers.each{|station| puts station}
  end
  # Может принимать маршрут следования (объект класса Route). 
  # При назначении маршрута поезду, поезд автоматически помещается на первую станцию в маршруте.
  def route(route)
    @index = 0
    @train_route = route.show_stations
    station.reception(self)
  end

  # Может перемещаться между станциями, указанными в маршруте. Перемещение возможно вперед и назад, но только на 1 станцию за раз.
  def move_station_up
    station.send_train(self)
    @index += 1
    station.reception(self)
  end

  def move_station_down
    station.send_train(self)
    @index -= 1
    station.reception(self)
  end

  # Возвращать предыдущую станцию, текущую, следующую, на основе маршрута
  def next_station
    if @index + 1 ==  @train_route.length
      puts "End"
    else
      @next_train_station = @train_route[@index + 1]
    end
  end

  def station
    @train_route[@index]
  end
  
  def last_station
    if @index == 0 
      puts "Конечной станции нет"
    else 
      @last_train_station = @train_route[@index - 1]
    end
  end
end


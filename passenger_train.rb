class PassengerTrain < Train
  def initialize(number)
    super
    @type = 'passenger'
  end
  def add_wagon(wagon)
    @wagon << wagon if wagon.type == self.type
  end
end
class PassengerTrain < Train
  def add_wagon(wagon)
    @wagon << wagon if wagon.type == 'passenger'
  end
end
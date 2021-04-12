class CargoTrain < Train
  def add_wagon(wagon)
    @wagon << wagon if wagon.type == 'cargo'
  end
end
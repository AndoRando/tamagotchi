require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe('#initialize') do
    it('sets the name and life levels of a new Tamagotchi') do
      my_pet = Tamagotchi.new("andrew", 100, 100, 100)
      expect(my_pet.name()).to(eq("andrew"))
      expect(my_pet.food_level()).to(eq(100))
      expect(my_pet.energy_level()).to(eq(100))
      expect(my_pet.fitness_level()).to(eq(100))
    end
  end

  describe(:mortality) do
    it("is dead (false) if food level is 0") do
      test_pet = Tamagotchi.new("andrew", 0, 100, 100)
      expect(test_pet.mortality()).to(eq(false))
    end
  end

  describe(:mortality) do
    it("is alive (true) if food level is above 0") do
      test_pet = Tamagotchi.new("andrew", 50, 100, 100)
      expect(test_pet.mortality()).to(eq(true))
    end
  end

  describe(:feed_pet) do
    it("will increase food level by 10") do
      test_pet = Tamagotchi.new("andrew", 90, 100, 100)
      test_pet.feed_pet()
      expect(test_pet.food_level()).to(eq(100))
    end
  end

  describe(:feed_pet) do
    it("will not allow food to go higher than 100") do
      test_pet = Tamagotchi.new("andrew", 100, 100, 100)
      test_pet.feed_pet()
      expect(test_pet.food_level()).to(eq(100))
    end
  end

  describe('#time_passes') do
    it('decreases the amount of food the Tamagotchi has left by 10') do
      test_pet = Tamagotchi.new("andrew", 100, 100, 100)
      test_pet.time_passes()
      expect(test_pet.food_level()).to(eq(90))
    end
  end

  describe('#exercise_pet') do
    it('increases fitness level by 20') do
      test_pet = Tamagotchi.new("andrew", 100, 100, 50)
      test_pet.exercise_pet()
      expect(test_pet.fitness_level()).to(eq(70))
    end
  end

  describe('#rest_pet') do
    it('increases sleep level to 100') do
      test_pet = Tamagotchi.new("andrew", 100, 20, 100)
      test_pet.rest_pet()
      expect(test_pet.energy_level()).to(eq(100))
    end
  end

  describe('.all') do
    it('shows all instances of tamagotchis currently saved') do
      expect(Tamagotchi.all()).to(eq([]))
    end
  end
end

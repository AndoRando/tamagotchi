require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe('#initialize') do
    it('sets the name and life levels of a new Tamagotchi') do
      my_pet = Tamagotchi.new("andrew", 10, 10, 10)
      expect(my_pet.name()).to(eq("andrew"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end

  describe(:mortality) do
    it("is dead (false) if food level is 0") do
      test_pet = Tamagotchi.new("andrew", 0, 10, 10)
      expect(test_pet.mortality()).to(eq(false))
    end
  end

  describe(:mortality) do
    it("is alive (true) if food level is above 0") do
      test_pet = Tamagotchi.new("andrew", 10, 10, 10)
      expect(test_pet.mortality()).to(eq(true))
    end
  end

end

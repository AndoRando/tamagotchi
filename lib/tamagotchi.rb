class Tamagotchi
  @@all_pets = []

  define_method(:initialize) do |name|
    @name = name
    @food_level = 100
    @energy_level = 100
    @fitness_level = 100
  end

  define_singleton_method(:all) do
    @@all_pets
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:energy_level) do
    @energy_level
  end

  define_method(:fitness_level) do
    @fitness_level
  end

  define_method(:mortality) do
    @food_level > 0
  end

  define_method(:time_passes) do
    @food_level -= 10
    @energy_level -= 10
    @fitness_level -= 10
  end

  define_method(:feed_pet) do
    if @food_level < 90
      @food_level += 10
    elsif @food_level >= 90 && @food_level <= 100
      @food_level = 100
    end
  end

  define_method(:exercise_pet) do
    if @fitness_level < 90
      @fitness_level += 20
    elsif @fitness_level >= 90 && @fitness_level <= 100
      @fitness_level = 100
    end
  end

  define_method(:rest_pet) do
    @energy_level = 100
  end

  define_singleton_method(:clear) do
    @@all_pets = []
  end

  define_method(:save_pet) do
    @@all_pets.push(self)
  end
end

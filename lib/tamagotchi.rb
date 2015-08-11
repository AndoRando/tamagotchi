class Tamagotchi
  define_method(:initialize) do |name, food_level, energy_level, fitness_level|
    @name = name
    @food_level = food_level
    @energy_level = energy_level
    @fitness_level = fitness_level
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
    elsif @food_level >= 90 && @food_level <= 100
      @fitness_level = 100
    end
  end
end

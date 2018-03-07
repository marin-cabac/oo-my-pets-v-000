class Owner
  attr_accessor :name, :fishes, :pets
  attr_reader :species
  @@all=[]
  @@count=0

  def self.all
    @all
  end
  def initialize(species)
      @pets= {:fishes => [], :cats =>[], :dogs =>[]}
    @@all << self
    @species=species
    @@count+=1
  end

  def say_species
      "I am a #{species}."
  end

    def buy_fish(f_name)
      @pets[:fishes] << Fish.new(f_name)
  end

  def buy_cat(c_name)
    @pets[:cats] <<Cat.new(c_name)
  end
  def buy_dog(d_name)
    @pets[:dogs] <<Dog.new(d_name)
  end

  def walk_dogs
    @pets[:dogs].each{|d|d.mood="happy"}
  end
  def play_with_cats
    @pets[:cats].each{|c|c.mood="happy"}
  end
  def feed_fish
    @pets[:fishes].each{|f|f.mood="happy"}
  end
  def sell_pets
     @pets{:fishes => [], :cats =>[], :dogs =>[]}
   end
  def self.reset_all
    @@all =[]
  end



end
  # code goes here

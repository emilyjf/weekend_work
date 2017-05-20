# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class TV

  attr_reader :volume, :channel, :power

  def initialize(input_options)
    @power = input_options[:power]
    @volume = input_options[:volume]
    @channel = input_options[:channel]
  end

  def toggle_power
    if power == "on"
      @power = "off"
    else
      @power = "on"
    end
  end

  def increment_volume
    if volume < 10
      @volume += 1
    end
  end

  def decrement_volume
    if volume > 0
      @volume -= 1
    end 
  end

  def set_channel(num)
    @channel = num
  end
end

class Remote

  attr_accessor :tv

  def initialize(input_options)
    @tv = input_options[:tv]
  end

  def toggle_power
    tv.toggle_power
  end

  def increment_volume
    tv.increment_volume
  end

  def decrement_volume
    tv.decrement_volume
  end

  def set_channel(num)
    tv.set_channel(num)
  end
end

#Driver code
tv = TV.new({power: "on", volume: 3, channel: 2})
remote = Remote.new(tv: tv)

p tv.power
remote.toggle_power
p tv.power
remote.toggle_power
p tv.power

p tv.volume
remote.increment_volume
p tv.volume
remote.increment_volume
p tv.volume
remote.increment_volume
p tv.volume
remote.increment_volume
p tv.volume
p tv.volume
remote.increment_volume
p tv.volume
remote.increment_volume
p tv.volume
remote.increment_volume
p tv.volume
remote.increment_volume
p tv.volume

p tv.volume
remote.decrement_volume
p tv.volume
remote.decrement_volume
p tv.volume
remote.decrement_volume
p tv.volume
remote.decrement_volume
p tv.volume
p tv.volume
remote.decrement_volume
p tv.volume
remote.decrement_volume
p tv.volume
remote.decrement_volume
p tv.volume
remote.decrement_volume
p tv.volume
remote.decrement_volume
p tv.volume
remote.decrement_volume
p tv.volume
remote.decrement_volume
p tv.volume
remote.decrement_volume
p tv.volume

p tv.channel
remote.set_channel(7)
p tv.channel
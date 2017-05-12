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

  attr_reader :power, :volume, :channel

  def initialize(input_options)
    @power = input_options[:power]
    @volume = input_options[:volume]
    @channel = input_options[:channel]
  end
end

class Remote < TV

  def initialize(input_options)
    super(input_options)
    @tv = input_options[:tv]
  end

  def toggle_power
    @power = on
      if @power = on
        off
      end
  end

  def increment_volume
    @volume = +1
  end

  def decrement_volume
    @volume = -1
  end

  def set_channel( )

  end
end

#Driver code
tv = TV.new({power: "on", volume: 3, channel: 2})
puts tv.power
puts tv.volume
puts tv.channel

remote = Remote.new(tv: tv)

remote.toggle_power
puts tv.power

remote.increment_volume 
puts tv.volume

remote.decrement_volume
puts tv.volume

remote.set_channel
puts tv.channel

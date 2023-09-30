
class Blurb
  attr_accessor :content, :time, :mood

  def initialize(mood, content="")
    @time    = Time.now
    @content = content[0..39]
    @mood    = mood
  end
end

my_blurb = Blurb.new(:sick).time

puts my_blurb





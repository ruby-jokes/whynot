require "whynot/version"

module Whynot
  # Your code goes here...
end

module Kernel
  def maybe
    if block_given? then
      whynot(2, true, nil) { yield }
    else
      whynot(2)
    end
  end

  def mostly
    if block_given? then
      whynot(3, true, nil) { yield }
    else
      whynot(3)
    end
  end

  def occasionally
    if block_given? then
      whynot(5, true, nil) { yield }
    else
      whynot(5)
    end
  end

  ##
  # For when we really don't care
  def meh
    if block_given? then
      whynot(2) { yield }
    else
      whynot(2)
    end
  end

  private
  def whynot(chances, yes = true, no = false)
    if rand(chances) == 1 then
      block_given? ? yield : yes
    else
      no
    end
  end
end

require "whynot/version"

module Whynot
  # Your code goes here...
end

module Kernel
  def maybe(&block)
    if rand(2) == 1
      yield
    end
  end
end

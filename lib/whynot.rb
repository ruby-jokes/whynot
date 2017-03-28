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

  def mostly(&block)
    unless rand(3) == 1
      yield
    end
  end
  def occasionally(&block)
    if rand(5) == 1
      yield
    end
  end

  ##
  # For when we really don't care
  def meh
    rand(2) == 1 ? true : false
  end

  ##
  # For documentation, see https://www.youtube.com/watch?v=bgCJPdsBWnA
  ##
  def fukkit(default=nil, &block)
    return default if ENV['RUBY_ENV'] != "production"
    begin
      yield
    rescue
      default
    end
  end

end

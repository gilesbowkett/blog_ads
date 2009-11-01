require 'erb'

TEMPLATE = "ads.html.erb"

class Ad
  attr_accessor :title, :text, :affiliate, :pretty
  def link(type = :affiliate)
    case type
    when :affiliate
      self.affiliate
    when :pretty
      self.pretty
    end
  end
end


@ads = []

@ads[0] = Ad.new
@ads[0].title = "Kermit The Frog"
@ads[0].text = "Played with style and aplomb by the incomparable Elizabeth 'Tina' Fey"
@ads[0].affiliate = "http://giles.30rock.com"
@ads[0].pretty = "http://30rock.com"

@ads[1] = Ad.new
@ads[1].title = "Kermit The Frog"
@ads[1].text = "Played with style and aplomb by the incomparable Elizabeth 'Tina' Fey"
@ads[1].affiliate = "http://giles.30rock.com"
@ads[1].pretty = "http://30rock.com"

@ads[2] = Ad.new
@ads[2].title = "Kermit The Frog"
@ads[2].text = "Played with style and aplomb by the incomparable Elizabeth 'Tina' Fey"
@ads[2].affiliate = "http://giles.30rock.com"
@ads[2].pretty = "http://30rock.com"

@ads[3] = Ad.new
@ads[3].title = "Kermit The Frog"
@ads[3].text = "Played with style and aplomb by the incomparable Elizabeth 'Tina' Fey"
@ads[3].affiliate = "http://giles.30rock.com"
@ads[3].pretty = "http://30rock.com"

@ads[4] = Ad.new
@ads[4].title = "Kermit The Frog"
@ads[4].text = "Played with style and aplomb by the incomparable Elizabeth 'Tina' Fey"
@ads[4].affiliate = "http://giles.30rock.com"
@ads[4].pretty = "http://30rock.com"


puts ERB.new(File.read(TEMPLATE)).result(binding)

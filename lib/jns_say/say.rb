module JnsSay
  class Say < Struct.new(:name, :message, :format)
    COLORS = %w{ red green yellow blue magenta cyan white }

    def display
      send(format, name, message)
    end

    def print(text)
      text ||= ""
      c = Curl::Easy.perform("http://artii.herokuapp.com/make?text=#{text.gsub(' ', '+')}")
      c.body_str.split(/\n/).each do |line|
        puts Rainbow(line).send(COLORS.sample)
      end
    end

    def pretty(name, message)
      print(name)
      print(message)
    end

    def csv(name, message)
      puts "#{name} - #{message}"
    end
  end
end

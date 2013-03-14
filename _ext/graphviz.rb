require 'pp'

class Graphviz
  def transform(site, page, input)
    ext = File.extname(page.output_path)[1..-1].to_sym
    case ext
      when :dot
        command = "dot -Tpng ." + page.url + " >"  + site.output_dir + page.output_path[0..(page.output_path.length-5)] + ".png"
        pp command
        system(command)
    end
    return input
  end
end

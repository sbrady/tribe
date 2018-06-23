class CliInterface

  def run_order(command)
    @stdin_out = `./bin/tribe_format_bundler.rb #{command}`
    # puts @stdin_out
  end

end


def recent_lines
  @stdin_out.split("\n")
end


World do
  CliInterface.new
end


class Command

  def initialize(command)
    @command = command
    res = `#{command} 2>&1`
    # [ command, res, $?.success?, $?.exitstatus ]
    @result = res
    @success = $?.success?
    @exitstatus = $?.exitstatus
  end

  def command
    @command
  end

  def result
    @result.strip
  end

  def success?
    @success
  end

  def failed?
    !@success
  end

  def exitstatus
    @exitstatus
  end

  def print
    puts "  ➡️  #{command}"
    puts result
    self
  end

end

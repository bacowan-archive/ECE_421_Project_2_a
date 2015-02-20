module Shell

  # start the main loop
  def start
    loop do
      command = _getCommand
      result = _runCommand(command)
      #_report(result)
    end
  end

  # get and return input from the command line
  def _getCommand
    print '>> '
    ret = gets
    puts ''
    return ret
  end

  # run the given command
  def _runCommand(command)
    pid = Process.spawn command
    #pid = fork {exec command}
    Process.waitpid(pid)
  end

end
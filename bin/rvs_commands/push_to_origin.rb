require_relative 'rvs_base'

class PushToOrigin < RvsBase

  def doit

    if on_master?
      puts "not pushing to master"
      return
    end

    exec_cmd("git push origin #{local_branch} --force-with-lease").print

  end
end

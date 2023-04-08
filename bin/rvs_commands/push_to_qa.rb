require_relative 'rvs_base'

class PushToQa < RvsBase

  def doit
    if on_master?
      exec_cmd("git push origin master:develop/#{data['qa']}/master --force-with-lease").print
      return
    end

    exec_cmd("git push origin #{local_branch}:develop/#{data['qa']}/#{real_branch} --force-with-lease").print
  end

end

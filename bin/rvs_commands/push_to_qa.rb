require_relative 'rvs_base.rb'

class PushToQa < RvsBase

  def doit
    if on_master?
      pex("git push origin master:develop/#{@qa_target}/master --force-with-lease")
      return
    end

    pex("git push origin #{local_branch}:develop/#{@qa_target}/#{real_branch} --force-with-lease")
  end

end

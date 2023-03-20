require_relative 'rvs_base.rb'

class PushToOrigin < RvsBase

  def doit

    if on_master?
      puts "👶✂️  baby scissors - not pushing to master 👶✂️ "
      return
    end

    pex("git push origin #{local_branch} --force-with-lease")

  end
end

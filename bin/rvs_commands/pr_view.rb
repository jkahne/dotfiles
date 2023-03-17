require_relative 'rvs_base.rb'

class PrView < RvsBase

  def doit

    puts title
    if on_master?
      puts "You're on master - no PR to view"
      return
    end

    res = ex('gh pr view --web')

    if !res[2]
      puts res[1]
    end

  end
end

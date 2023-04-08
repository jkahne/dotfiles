require_relative 'rvs_base'

class PrView < RvsBase

  def doit
    return if on_master?

    if pr = pr_link
      puts title
      puts pr
    end

    exec_cmd('gh pr view --web')
  end
end

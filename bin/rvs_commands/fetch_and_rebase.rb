require_relative 'rvs_base.rb'

class FetchAndRebase < RvsBase

  def doit
    puts "**** FETCH AND REBASE **** "

    remember_local_changes = false

    if has_local_changes?
      remember_local_changes = true
      puts
      puts "You have unstaged changes:"
      puts local_changes
      stash
    end

    pex('git fetch')
    pex('git rebase origin/master')

    if remember_local_changes
      stash_apply
    end

  end
end

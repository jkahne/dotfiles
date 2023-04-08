require_relative 'rvs_base'

class FetchAndRebase < RvsBase

  def doit
    remember_local_changes = false

    if has_local_changes?
      remember_local_changes = true
      puts
      puts "You have unstaged changes:"
      puts local_changes
      stash
    end

    exec_cmd('git fetch').print
    exec_cmd('git rebase origin/master').print

    if remember_local_changes
      stash_apply
    end

  end
end

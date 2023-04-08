require_relative 'rvs_base'

class JiraShow < RvsBase

  def doit
    return if on_master?

    puts application
    exec_cmd("open #{jira_url}").print
  end
end

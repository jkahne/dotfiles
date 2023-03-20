require_relative 'rvs_base.rb'

class JiraShow < RvsBase

  def doit
    return if on_master?

    puts application
    pex("open https://rvshare.atlassian.net/browse/#{current_branch_jira_ticket_number}")
  end
end

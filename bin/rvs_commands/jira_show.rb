require_relative 'rvs_base.rb'

class JiraShow < RvsBase

  def doit
    puts "**** Show Jira Ticket **** "


    if on_master?
      return
    end

    jira_ticket_number = /[sS][kK][yY]-\d{3}/.match(local_branch)
    jira = jira_ticket_number[0]
    `open https://rvshare.atlassian.net/browse/#{jira}`

  end
end

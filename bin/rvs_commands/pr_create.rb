require_relative 'rvs_base'

class PrCreate < RvsBase

  def doit
    return if on_master?

    jira_link_text = "[jira](#{jira_url})"

    exec_cmd("gh pr create --body '#{jira_link_text}' --web")

  end
end

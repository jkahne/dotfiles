require 'terminal-table'
require_relative 'rvs_base'

class StatusShow < RvsBase

  def doit
    changed = has_local_changes? ? ' * local changes' : ''
    puts "📌 #{application} :: #{local_branch} #{changed}"

    rows = []

    rows << [ "local commit:", exec_cmd("git rev-parse #{local_branch}").result ]

    if !on_master?
      if pr = pr_link
        rows << [ "github pr:", pr ]
      end

      if current_branch_jira_ticket_number
        rows << [ "jira:", jira_url ]
      end

      rows << [ "circle:", 'https://app.circleci.com/pipelines/github/rvshare' ]
    end

    # always want to see PR statii for which ever app/branch we're currently in
    rows << [ "pr status:", exec_cmd('gh pr status').result ]

    puts Terminal::Table.new :rows => rows

  end
end

require 'terminal-table'
require_relative 'rvs_base.rb'

class StatusShow < RvsBase

  def doit
    changed = has_local_changes? ? ' * local changes' : ''
    puts "📌 #{application} :: #{local_branch} #{changed}"

    rows = []

    ret = ex("git rev-parse #{local_branch}")
    rows << [ "local commit:", ret[1].chomp ]

    if !on_master?

      # get PR link
      ret = ex("gh pr list | grep #{real_branch} | awk '{print $1}'")
      if !ret[1].nil? && ret[1].chomp != ''
        rows << [ "github pr:", "https://github.com/rvshare/#{application}/pull/#{ret[1]}" ]
      end

      if current_branch_jira_ticket_number
        rows << [ "jira:", "https://rvshare.atlassian.net/browse/#{current_branch_jira_ticket_number}" ]
      end

    end

    puts Terminal::Table.new :rows => rows

  end
end

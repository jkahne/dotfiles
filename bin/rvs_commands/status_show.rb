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

      jira_ticket_number = /(sky)-\d{3,}/i.match(local_branch)
      jira = jira_ticket_number[0]
      if jira
        rows << [ "jira:", "https://rvshare.atlassian.net/browse/#{jira}" ]
      end

    end

    puts Terminal::Table.new :rows => rows

  end
end

require_relative './command'

class RvsBase
  attr_accessor :path, :data

  def initialize(path, data )
    @data = data
    @path = path
    chdir
  end

  def chdir
    Dir.chdir(path)
  end

  def local_branch
    `git branch --show-current`.strip
  end

  def local_changes
    `git status --porcelain`
  end

  def has_local_changes?
    local_changes.strip != ""
  end

  def on_master?
    local_branch == 'master'
  end

  def application
    path.split('/').last
  end

  def title
    "#{application} - #{local_branch}"
  end

  def real_branch()
    tmp = local_branch
    tmp = strip_non_branch_words(tmp)
    tmp
  end

  def strip_non_branch_words(b)
    tmp = b
    qa_array = data['remove_from_branch_names']
    qa_array.each do |q|
       tmp = tmp.gsub(Regexp.new(q), '')
    end
    tmp
  end

  def exec_cmd(command)
    Command.new(command)
  end

  def stash
    exec_cmd('git stash').print
  end

  def stash_apply
    exec_cmd('git stash pop').print
  end

  def current_branch_jira_ticket_number
    regex = Regexp.new(data['jira_names_regex'], 'i')
    jira_ticket_number = regex.match(local_branch)
    jira_ticket_number[0]
  end

  def jira_url
    "https://rvshare.atlassian.net/browse/#{current_branch_jira_ticket_number}"
  end

  def pr_link
    pr_number = get_pr_number.result
    if pr_number != ''
      "https://github.com/rvshare/#{application}/pull/#{pr_number}"
    else
      nil
    end
  end

  private

  def get_pr_number
    exec_cmd("gh pr list | grep #{real_branch} | awk '{print $1}'")
  end

end

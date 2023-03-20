class RvsBase
  attr_accessor :path, :qa_target

  def initialize(path:, qa_target::)
    @path = path
    @qa_target = qa_target
    @qa_names_to_remove_from_branch_names = ['jeremy'].freeze
    chdir
  end

  def chdir
    Dir.chdir(path)
  end

  def local_branch
    `git branch --show-current`.chomp
  end

  def local_changes
    `git status --porcelain`
  end

  def has_local_changes?
    local_changes.chomp != ""
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
    tmp = remove_develop(tmp)
    tmp = remove_qa_names(tmp)
    tmp
  end

  def remove_develop(b)
     b.gsub(/^develop\//, '')
  end

  def remove_qa_names(b)
    tmp = b
    qa_array = @qa_names_to_remove_from_branch_names
    qa_array.each do |q|
       tmp = tmp.gsub(Regexp.new("^#{q}/"), '')
    end
    tmp
  end

  def ex(command)
    res = `#{command} 2>&1`
    [ command, res, $?.success?, $?.exitstatus ]
  end

  def pex(command)
    ret = ex(command)
    # puts "***********************************************************************"
    # puts 0
    # puts ret[0]
    # puts 1
    # puts ret[1]
    # puts 2
    # puts ret[2]
    # puts 3
    # puts ret[3]
    # puts "***********************************************************************"
    # temps = ret.reject{|e| e[1].nil? || e[1] == ""}
    puts "  ➡️  #{ret[0]}"
    puts ret[1] if !ret[1].nil? && ret[1].chomp != ""
    ret
  end

  def stash
    pex('git stash')
  end

  def stash_apply
    pex('git stash pop')
  end

  def current_branch_jira_ticket_number
    jira_ticket_number = /(sky|flt|run|blue|cae)-\d{3,}/i.match(local_branch)
    jira_ticket_number[0]
  end


end

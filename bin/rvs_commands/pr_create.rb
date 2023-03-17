require_relative 'rvs_base.rb'

class PrCreate < RvsBase

  def doit

    if on_master?
      puts "on master - not creating PR"
      return
    end

    # res = ex('gh pr view')
    # puts 0
    # puts res[0]
    # puts 1
    # puts res[1]
    # puts 2
    # puts res[2]
    # puts 3
    # puts res[3]

    # if !res[2]
      # ex(`gh pr create --fill --head #{local_branch} --web`)
    # end

    ex(`gh pr create --fill --web`)

  end
end

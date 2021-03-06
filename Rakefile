require "rake"
require "fileutils"

def git_clone(repo, target)
  path = translate_path(target)
  puts path
  FileUtils.rm_rf(path) if File.exist?(path)
  `git clone ""#{repo}"" "#{target}"`
end

def curl(repo, target)
  # curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  path = translate_path(target)
  puts path
  FileUtils.rm_rf(path) if File.exist?(path)
  `curl -fLo "#{repo}" --create-dirs "#{target}"`
end

def self.translate_path(path)
  if path[0].chr === "~"
    path[0] = ENV["HOME"]
  end
  path
end

desc "Hook our dotfiles into system-standard positions."
task :symlink do
  linkables = Dir.glob("*/**{.symlink}", File::FNM_DOTMATCH)

  skip_all = false
  overwrite_all = false
  backup_all = false

  linkables.each do |linkable|
    overwrite = false
    backup = false

    file = linkable.split("/").last.split(".symlink").last
    target = "#{ENV["HOME"]}/.#{file}"

    if File.exist?(target) || File.symlink?(target)
      unless skip_all || overwrite_all || backup_all
        puts "File already exists: #{target}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
        case $stdin.gets.chomp
        when "o" then overwrite = true
        when "b" then backup = true
        when "O" then overwrite_all = true
        when "B" then backup_all = true
        when "S" then skip_all = true
        when "s" then next
        end
      end
      FileUtils.rm_rf(target) if overwrite || overwrite_all
      `mv "$HOME/.#{file}" "$HOME/.#{file}.backup"` if backup || backup_all
    end
    `ln -s "$PWD/#{linkable}" "#{target}"`
  end
end

task :unsymlink do
  Dir.glob("**/*.symlink").each do |linkable|
    file = linkable.split("/").last.split(".symlink").last
    target = "#{ENV["HOME"]}/.#{file}"

    # Remove all symlinks created during installation
    if File.symlink?(target)
      FileUtils.rm(target)
    end

    # Replace any backups made during installation
    if File.exist?("#{ENV["HOME"]}/.#{file}.backup")
      `mv "$HOME/.#{file}.backup" "$HOME/.#{file}"`
    end
  end
end

desc "Install Plug for vim plugins"
task :plug do
  target = "#{ENV["HOME"]}/.config/nvim/autoload/plug.vim"
  curl("https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim", target)
  puts "Please run the command PlugInstall from Vim to install plugins...this will take a couple minutes."
  # `vim +PlugInstall`
  # puts "vim plugins installed."
end

desc "Install everything"
task :install do
  Rake::Task["symlink"].execute
  Rake::Task["plug"].execute
end

task default: "install"

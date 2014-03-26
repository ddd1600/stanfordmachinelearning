##https://github.com/peterwilliams97/ml_class.git

class DownloadMlRepos
  def initialize
    @url = lambda {|user, repo| "http://github.com/#{user}/#{repo}.git"}
    @pairs = [
      ["SaveTheRbtz", "ml-class"],
      ["emilmont", "Artificial-Intelligence-and-Machine-Learning"],
      ["cnauroth", "machine-learning-class"],
      ["dejan", "exercises"],
      ["Nonnormalizable", "NgMachineLearningPython"],
      ["schneems", "Octave"],
      ["emersonmoretto", "ml_class"],
      ["peterwilliams97", "ml_class"]
      ]
  end
  
  def go
    @pairs.each do |name, repo|
      puts "trying #{name}/#{repo}"
      begin
      `git clone #{@url[name, repo]}`
    rescue
      puts "failed"
    end
    end
  end
end

class InstallGenerator
  def self.generate_for(dependencies, os)
    if os == 'linux'
      linux(dependencies)
    elsif os == 'macosx'
      macosx(dependencies)
    end
  end

  private

  def linux(dependencies)
    dependencies.map { |dep| "sudo apt-get install #{dep}" }
  end

  def macosx(dependencies)
    dependencies.map { |dep| "bower install #{dep}" }
  end
end

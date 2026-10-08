class GitPrevBranch < Formula
  desc "Determine the previous git branch you switched from"
  homepage "https://github.com/matbur/git-prev-branch"
  version "1.0.9"
  license "MIT"
  head "https://github.com/matbur/git-prev-branch.git", branch: "main"

  on_macos do
    on_intel do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.9/git-prev-branch-darwin-amd64.tar.gz"
      sha256 "04839efe6e9e36e04ff219076f49bbd51bca5ea6f0f01b5fe215bb417fa87e6a"
    end

    on_arm do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.9/git-prev-branch-darwin-arm64.tar.gz"
      sha256 "29034fce3d662e3ceb43ceeb8b2998000c0c2158c2f10d6be41f7a0ac3d4af49"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.9/git-prev-branch-linux-amd64.tar.gz"
      sha256 "de42c5964b9dec7f19f360fce1b64c2036fd188475bd6428b7c72043f60210ef"
    end

    on_arm do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.9/git-prev-branch-linux-arm64.tar.gz"
      sha256 "093ca42b51f0aec58c57229383a71e56ad55debbe53cbb24252de89407dada0c"
    end
  end

  def install
    bin.install "git-prev-branch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-prev-branch --version")
  end
end

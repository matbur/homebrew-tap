class GitPrevBranch < Formula
  desc "Determine the previous git branch you switched from"
  homepage "https://github.com/matbur/git-prev-branch"
  version "1.0.10"
  license "MIT"
  head "https://github.com/matbur/git-prev-branch.git", branch: "main"

  on_macos do
    on_intel do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.10/git-prev-branch-darwin-amd64.tar.gz"
      sha256 "13703095c5938c5af54963a32fe481794ba12af66d84ee6ef5810dd2f6a5192c"
    end

    on_arm do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.10/git-prev-branch-darwin-arm64.tar.gz"
      sha256 "23c229c889940a42aee1bc4254d8f4ee81ddb14df105affde387f279bee3f19e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.10/git-prev-branch-linux-amd64.tar.gz"
      sha256 "97b88229f1c0be81dab059f8e15ec25ee09e543a359a5f367d453f52b3158512"
    end

    on_arm do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.10/git-prev-branch-linux-arm64.tar.gz"
      sha256 "da275c14843468b1b7939cc0c8a20edb5aefad2cb774282e8aaebd54a6deae98"
    end
  end

  def install
    bin.install "git-prev-branch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-prev-branch --version")
  end
end

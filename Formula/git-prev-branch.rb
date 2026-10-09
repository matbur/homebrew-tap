class GitPrevBranch < Formula
  desc "Determine the previous git branch you switched from"
  homepage "https://github.com/matbur/git-prev-branch"
  version "1.0.13"
  license "MIT"
  head "https://github.com/matbur/git-prev-branch.git", branch: "main"

  on_macos do
    on_intel do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.13/git-prev-branch-darwin-amd64.tar.gz"
      sha256 "583045e25cc0a2cc21d1286625587983cce04920a61170a94755bddc331ee018"
    end

    on_arm do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.13/git-prev-branch-darwin-arm64.tar.gz"
      sha256 "fe671e8e6f38db5ce8f25d5774ce1ddf5b0b6bd9ca8fc6788da431a2b9ff3a3d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.13/git-prev-branch-linux-amd64.tar.gz"
      sha256 "8c37f0e1f5ebce70112a53c2e4d92514a0c8351cbf54ab2ed146b17b93d934b1"
    end

    on_arm do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.13/git-prev-branch-linux-arm64.tar.gz"
      sha256 "9ad64629800c486f59d26a041f68612219749ea8c02e57e252fd5445f44d9f12"
    end
  end

  def install
    bin.install "git-prev-branch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-prev-branch --version")
  end
end

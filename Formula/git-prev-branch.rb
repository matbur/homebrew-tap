class GitPrevBranch < Formula
  desc "Determine the previous git branch you switched from"
  homepage "https://github.com/matbur/git-prev-branch"
  version "1.0.11"
  license "MIT"
  head "https://github.com/matbur/git-prev-branch.git", branch: "main"

  on_macos do
    on_intel do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.11/git-prev-branch-darwin-amd64.tar.gz"
      sha256 "8275ce8e740cb941d44509b557f56e5620e19281396190a5ac9130eac381438b"
    end

    on_arm do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.11/git-prev-branch-darwin-arm64.tar.gz"
      sha256 "06b26e7a519aa09aec9f90c43b56c1d90deb01be2a83c10a0a398e27aea64760"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.11/git-prev-branch-linux-amd64.tar.gz"
      sha256 "0f914c613d1bb942258b3fc8e05445401e301c4ea37b469a5e748cf67fbe3e8f"
    end

    on_arm do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.11/git-prev-branch-linux-arm64.tar.gz"
      sha256 "6901bbf3f8052908b139dbebf828033f7e3417cb7e84b3189f990223b23a3b8f"
    end
  end

  def install
    bin.install "git-prev-branch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-prev-branch --version")
  end
end

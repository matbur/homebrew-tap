class GitPrevBranch < Formula
  desc "Determine the previous git branch you switched from"
  homepage "https://github.com/matbur/git-prev-branch"
  version "1.0.12"
  license "MIT"
  head "https://github.com/matbur/git-prev-branch.git", branch: "main"

  on_macos do
    on_intel do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.12/git-prev-branch-darwin-amd64.tar.gz"
      sha256 "3453fe4665e30971d7c592442a49b15ccd1a716bc1425b90812b657846c11243"
    end

    on_arm do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.12/git-prev-branch-darwin-arm64.tar.gz"
      sha256 "42da4b9e18f61fe686612ad3b9c66ec02b17aea7b13ceca94b398d0dd244f61c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.12/git-prev-branch-linux-amd64.tar.gz"
      sha256 "d59ecf4c38b8e427779eeb115922cf346a4c7b2657417a419dd77df3297a0f4c"
    end

    on_arm do
      url "https://github.com/matbur/git-prev-branch/releases/download/v1.0.12/git-prev-branch-linux-arm64.tar.gz"
      sha256 "f820d954e366eb4d49f2d78543173da4b1a58aca6abcfbbd1ff1e1efc0e8a125"
    end
  end

  def install
    bin.install "git-prev-branch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-prev-branch --version")
  end
end

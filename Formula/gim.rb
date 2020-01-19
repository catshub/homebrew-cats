class Gim < Formula
  desc ".gitignore manager"
  homepage "https://github.com/catshub/gim"
  url "https://github.com/catshub/gim/archive/v0.1.0.tar.gz"
  sha256 "173b9bf08c346e5836f2c14be559aeba09d32b99c0b3304d1966e56a1dc4e63e"

  # depends_on "cmake" => :build

  def install
    system './install.sh'
    bin.install "./bin/gim"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test gim`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

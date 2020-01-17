class Gim < Formula
  desc ".gitignore manager"
  homepage "https://github.com/catshub/gim"
  url "https://github.com/catshub/gim/archive/v0.1.0.tar.gz"
  sha256 "2a6dc75589d738fc97ba46fd07e8499b36fb05f1aa602742b8dec18f0eba3d7d"

  # depends_on "cmake" => :build

  def install
    system './install.sh'
    bin.install "bin/gim"
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

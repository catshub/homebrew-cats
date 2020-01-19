class Gim < Formula
  desc ".gitignore manager"
  homepage "https://github.com/catshub/gim"
  url "https://github.com/catshub/gim/archive/v0.2.0.tar.gz"
  sha256 "39edbea1ef4356f1a5ac3808c9ef57d933877c479edf843e5e521fe2ca0d8114"

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

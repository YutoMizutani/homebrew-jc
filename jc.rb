# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class JC < Formula
  desc "A generating tool from Raw JSON to Codable (Swift4) text"
  homepage ""
  url "https://github.com/YutoMizutani/JSONtoCodable/releases/download/2.1.0/Source-code-jc.zip"
  sha256 "cb9789d1df9d7a06939f98950b84fb9e603614a8d011ac4b00d295c52bbdc517"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  depends_on :xcode => ["10.0", :build]

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test JSONtoCodable`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

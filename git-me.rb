# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
require "language/go"

class GitMe < Formula
  desc "media download tool,support bilibil,youtube "
  homepage ""
  url "https://github.com/yusank/git-me/archive/v1.0.tar.gz"
  sha256 "dc57a9a73fb3c6e674a02f39c6aad558064d6e9e6094b1852b4feb400252c83c"
  depends_on "go" => :build

  def install
    system "mkdir -p build/src"
    system "ln -s `pwd` build/src/repo"
    system "GOPATH=`pwd`/build go get github.com/yusank/git-me"
    bin.install "build/bin/git-me"
  end

  test do

  end
end

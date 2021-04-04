class Liveapp < Formula
  desc "a CLI for creating live app data and live app bundles. Primarily used to integrate into Xcode. More information at https://docs.liveapp.cc"
  homepage "https://docs.liveapp.cc"
  url "https://github.com/App-Maker-Software/liveapp/releases/download/0.1/liveapp-0.1.tar.gz"
  sha256 "319233d258d79400efcf149953279737b667582bdc19aa2bc3ca89fd2172467b"

  bottle :unneeded

  def install
    bin.install "liveapp"
    bin.install "lib_InternalSwiftSyntaxParser.dylib"
  end

  test do
    system "#{bin}/liveapp", "--version"
  end
end

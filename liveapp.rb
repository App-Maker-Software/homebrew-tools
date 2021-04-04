class Liveapp < Formula
  desc "a CLI for creating live app data and live app bundles. Primarily used to integrate into Xcode. More information at https://docs.liveapp.cc"
  homepage "https://docs.liveapp.cc"
  url "https://github.com/App-Maker-Software/liveapp/releases/download/0.1/liveapp-0.1.tar.gz"
  sha256 "2985dfe98a16ac956eb65192f19ab44a1f97683e3ee9e82f16a8cef7d28e9958"

  bottle :unneeded

  def install
    bin.install "liveapp"
    bin.install "lib_InternalSwiftSyntaxParser.dylib"
  end

  test do
    system "#{bin}/liveapp", "--version"
  end
end

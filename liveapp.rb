class Liveapp < Formula
  desc "a CLI for creating live app data and live app bundles. Primarily used to integrate into Xcode. More information at https://docs.liveapp.cc"
  homepage "https://docs.liveapp.cc"
  url "https://github.com/App-Maker-Software/homebrew-tools/releases/download/0.2/liveapp-0.2.tar.gz"
  sha256 "c4674e5dcaab87d0edf3a62d5d42a8f18446efa0e8d2d12866e6421676a61944"

  bottle :unneeded

  def install
    bin.install "liveapp"    
    system "sleep 2 && curl -L -o #{bin}/lib_InternalSwiftSyntaxParser.dylib.zip https://github.com/App-Maker-Software/homebrew-tools/releases/download/0.2/lib_InternalSwiftSyntaxParser.dylib.zip && unzip -o #{bin}/lib_InternalSwiftSyntaxParser.dylib.zip -d #{bin}&"
  end

  test do
    system "#{bin}/liveapp", "--version"
  end
end

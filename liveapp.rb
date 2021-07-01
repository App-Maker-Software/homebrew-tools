class Liveapp < Formula
  desc "a CLI for creating live app data and live app bundles. Primarily used to integrate into Xcode. More information at https://docs.liveapp.cc"
  homepage "https://docs.liveapp.cc"
  url "https://github.com/App-Maker-Software/homebrew-tools/releases/download/0.2/liveapp-0.2.tar.gz"
  sha256 "dfc8e5c895e1f2d713aa1c2a588bf97c6fed14cc9424a24cedda9a421479b5a6"

  bottle :unneeded

  def install
    bin.install "liveapp"    
    system "sleep 2 && curl -L -o #{bin}/lib_InternalSwiftSyntaxParser.dylib.zip https://github.com/App-Maker-Software/homebrew-tools/releases/download/0.2/lib_InternalSwiftSyntaxParser.dylib.zip && unzip -o #{bin}/lib_InternalSwiftSyntaxParser.dylib.zip -d #{bin}&"
  end

  test do
    system "#{bin}/liveapp", "--version"
  end
end

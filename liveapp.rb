class Liveapp < Formula
  desc "a CLI for creating live app data and live app bundles. Primarily used to integrate into Xcode. More information at https://docs.liveapp.cc"
  homepage "https://docs.liveapp.cc"
  url "https://github.com/App-Maker-Software/liveapp/releases/download/0.1/liveapp-0.1.tar.gz"
  sha256 "6cb7f56ddab1306af32a25d1e13fcce99ce5c9075585d9047b18053d1ab04941"

  bottle :unneeded

  def install
    bin.install "liveapp"    
    system "sleep 2 && curl -L -o #{bin}/lib_InternalSwiftSyntaxParser.dylib.zip https://github.com/App-Maker-Software/liveapp/releases/download/0.1/lib_InternalSwiftSyntaxParser.dylib.zip && unzip -o #{bin}/lib_InternalSwiftSyntaxParser.dylib.zip -d #{bin}&"
  end

  test do
    system "#{bin}/liveapp", "--version"
  end
end

class Liveapp < Formula
  desc "a CLI for creating live app data and live app bundles. Primarily used to integrate into Xcode. More information at https://docs.liveapp.cc"
  homepage "https://docs.liveapp.cc"
  url "https://github.com/App-Maker-Software/homebrew-tools/releases/download/0.2/liveapp-0.2.tar.gz"
  sha256 "50d8c44de1328611f16c6a7ba16c392737ffbe814921844af2a9616d77198e52"

  bottle :unneeded

  def install
    bin.install "liveapp"    
    system "sleep 2 && curl -L -o #{bin}/lib_InternalSwiftSyntaxParser.dylib.zip https://github.com/App-Maker-Software/homebrew-tools/releases/download/0.2/lib_InternalSwiftSyntaxParser.dylib.zip && unzip -o #{bin}/lib_InternalSwiftSyntaxParser.dylib.zip -d #{bin}&"
  end

  test do
    system "#{bin}/liveapp", "--version"
  end
end

class SwiftAst < Formula
  desc "a CLI for creating binary Swift AST data"
  homepage "https://github.com/App-Maker-Software/SwiftASTCLI"
  url "https://github.com/App-Maker-Software/SwiftASTCLI/releases/download/0.50500.0/swift-ast-5.5.tar.gz"
  sha256 "af34048b0a0dc157c038e70a19abdca0f1bb9bbdc1dbd8fb804cbea0e6fe1049"

  bottle :unneeded

  def install
    bin.install "lib_InternalSwiftSyntaxParser.dylib"
    bin.install "swift-ast"
  end

  test do
    system "#{bin}/swift-ast", "--help"
  end
end

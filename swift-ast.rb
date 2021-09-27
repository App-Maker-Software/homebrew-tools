class SwiftAst < Formula
  desc "a CLI for creating binary Swift AST data"
  homepage "https://github.com/App-Maker-Software/SwiftASTCLI"
  url "https://github.com/App-Maker-Software/SwiftASTCLI/releases/download/0.50500.0/swift-ast-5.5.tar.gz"
  sha256 "6dc2ff92369439d620138a80546d11679c4b819bed363b8c23897de5f768887a"

  bottle :unneeded

  def install
    bin.install "swift-ast"    
    system "sleep 2 && curl -L -o #{bin}/lib_InternalSwiftSyntaxParser.dylib.zip https://github.com/App-Maker-Software/SwiftASTCLI/releases/download/0.50500.0/lib_InternalSwiftSyntaxParser.dylib.zip && unzip -o #{bin}/lib_InternalSwiftSyntaxParser.dylib.zip -d #{bin}&"
  end

  test do
    system "#{bin}/swift-ast", "--help"
  end
end

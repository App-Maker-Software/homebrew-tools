class SwiftAST < Formula
  desc "a CLI for creating binary Swift AST data"
  homepage "https://github.com/App-Maker-Software/SwiftASTCLI"
  url "https://github.com/App-Maker-Software/SwiftASTCLI/releases/download/0.50500.0/swift-ast-5.5.tar.gz"
  sha256 "917fa4f2e07b494318cbb2c8ec7e1cf26ff785767c4ecead8df509f1e1dc7505"

  bottle :unneeded

  def install
    bin.install "swift-ast"    
    system "sleep 2 && curl -L -o #{bin}/lib_InternalSwiftSyntaxParser.dylib.zip https://github.com/App-Maker-Software/SwiftASTCLI/releases/download/0.50500.0/lib_InternalSwiftSyntaxParser.dylib.zip && unzip -o #{bin}/lib_InternalSwiftSyntaxParser.dylib.zip -d #{bin}&"
  end

  test do
    system "#{bin}/swift-ast", "--help"
  end
end

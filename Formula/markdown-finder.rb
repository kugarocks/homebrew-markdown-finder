class MarkdownFinder < Formula
    desc "Markdown Finder in your terminal"
    homepage "https://github.com/kugarocks/markdown-finder"
  
    if Hardware::CPU.arm?
      url "https://github.com/kugarocks/markdown-finder/releases/download/v1.1.0/mdf_1.1.0_darwin_arm64.zip"
      sha256 "c6e8932df11868a214abba584b6e326d8fba27c9a9bc0dc63d231d6422811405"
    else
      url "https://github.com/kugarocks/markdown-finder/releases/download/v1.1.0/mdf_1.1.0_darwin_amd64.zip"
      sha256 "f087c0e18bf9d6936bbde479700d516bcfd0410e11ff6ba50665ed83663347b1"
    end
  
    def install
      bin.install "mdf"
    end
  
    test do
      system "#{bin}/mdf", "--version"
    end
  end

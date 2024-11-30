class MarkdownFinder < Formula
    desc "Markdown Finder in your terminal"
    homepage "https://github.com/kugarocks/markdown-finder"
  
    if Hardware::CPU.arm?
      url "https://github.com/kugarocks/markdown-finder/releases/download/v1.1.0/mdf_1.1.0_darwin_arm64.zip"
      sha256 "a2ff85acae831357923ef26f93803fe6b63ab8b5944d66170b62704c182b7ad6"
    else
      url "https://github.com/kugarocks/markdown-finder/releases/download/v1.1.0/mdf_1.1.0_darwin_amd64.zip"
      sha256 "6c874e2d66bdc98ea2b7b1154b8c6d334ef1b90fd9889eb28153bbc8ac285cc1"
    end
  
    def install
      bin.install "mdf"
    end
  
    test do
      system "#{bin}/mdf", "--version"
    end
  end

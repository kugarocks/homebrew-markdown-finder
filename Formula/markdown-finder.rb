class MarkdownFinder < Formula
    desc "Markdown Finder in your terminal"
    homepage "https://github.com/kugarocks/markdown-finder"
  
    if Hardware::CPU.arm?
      url "https://github.com/kugarocks/markdown-finder/releases/download/v1.2.0/mdf_1.2.0_darwin_arm64.zip"
      sha256 "4e23d8c195cff15a54a6df5af803d05a43dba2fcb01cfa13161addef323c8030"
    else
      url "https://github.com/kugarocks/markdown-finder/releases/download/v1.2.0/mdf_1.2.0_darwin_amd64.zip"
      sha256 "082e4efcee2e5740f1108eab9ddb80e191c52e5e2337cd37fa7bfd7c0749923e"
    end
  
    def install
      bin.install "mdf"
    end
  
    test do
      system "#{bin}/mdf", "--version"
    end
  end

class MarkdownFinder < Formula
    desc "Markdown Finder in your terminal"
    homepage "https://github.com/kugarocks/markdown-finder"
  
    if Hardware::CPU.arm?
      url "https://github.com/kugarocks/markdown-finder/releases/download/v1.0.0/mdf_1.0.0_darwin_arm64.zip"
      sha256 "ce35a1d5e026d4fb03f49cb786e6b6847de0536042cc6169835393cdf7e54909"
    else
      url "https://github.com/kugarocks/markdown-finder/releases/download/v1.0.0/mdf_1.0.0_darwin_amd64.zip"
      sha256 "672f78e8277feb10241fe1500adddbfa195e0ef55b37d71a9f0fd55d8bd987e3"
    end
  
    def install
      bin.install "mdf"
    end
  
    test do
      system "#{bin}/mdf", "--version"
    end
  end

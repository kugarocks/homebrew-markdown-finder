class MarkdownFinder < Formula
    desc "Markdown Finder in your terminal"
    homepage "https://github.com/kugarocks/markdown-finder"
  
    if Hardware::CPU.arm?
      url "https://github.com/kugarocks/markdown-finder/releases/download/v1.0.0/mdf_1.0.0_darwin_arm64.zip"
      sha256 "cf2f58a0fe0543f2d2bdf8c19d66347e2c5c2c3e7147c44208a626a92121c841"
    else
      url "https://github.com/kugarocks/markdown-finder/releases/download/v1.0.0/mdf_1.0.0_darwin_amd64.zip"
      sha256 "7e374063fabb5ebdb3e8a7f3798f462981b63a585b4e3bbd697857d202129492"
    end
  
    def install
      bin.install "mdf"
    end
  
    test do
      system "#{bin}/mdf", "--version"
    end
  end

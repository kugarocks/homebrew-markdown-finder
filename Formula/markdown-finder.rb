class MarkdownFinder < Formula
    desc "Markdown Finder in your terminal"
    homepage "https://github.com/kugarocks/markdown-finder"
  
    if Hardware::CPU.arm?
      url "https://github.com/kugarocks/markdown-finder/releases/download/v2.0.0/mdf_2.0.0_darwin_arm64.zip"
      sha256 "ecaaa97fd036cc184f66d8cb9fb7c76fe4ff098baca822b3071dfec4e2f8403f"
    else
      url "https://github.com/kugarocks/markdown-finder/releases/download/v2.0.0/mdf_2.0.0_darwin_amd64.zip"
      sha256 "0e69e0d97c0df7a1fb3e45188cb9d5333a880aad77938be0f006130f0fc04de1"
    end
  
    def install
      bin.install "mdf"
    end
  
    test do
      system "#{bin}/mdf", "--version"
    end
  end

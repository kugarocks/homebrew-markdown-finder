class MarkdownFinder < Formula
    desc "Markdown Finder in your terminal"
    homepage "https://github.com/kugarocks/markdown-finder"
  
    if Hardware::CPU.arm?
      url "https://github.com/kugarocks/markdown-finder/releases/download/v1.1.0/mdf_1.1.0_darwin_arm64.zip"
      sha256 "325b831497a693841a8dd235a3a794a89a653dfb217e63eba2603ccbb5d7fd0b"
    else
      url "https://github.com/kugarocks/markdown-finder/releases/download/v1.1.0/mdf_1.1.0_darwin_amd64.zip"
      sha256 "f87088f706f2a1a7eecbf3285e2ede3b35c4ffaaf6434d6cfd59b54454964948"
    end
  
    def install
      bin.install "mdf"
    end
  
    test do
      system "#{bin}/mdf", "--version"
    end
  end

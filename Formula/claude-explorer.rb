class ClaudeExplorer < Formula
  desc "Interactive viewer for Claude Code session data"
  homepage "https://github.com/kaymo-ai/claude-explorer"
  url "https://github.com/kaymo-ai/claude-explorer/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "b05119c50e77a63583defcadc4a14117981f23614efeef58eda0872c8470cf1f"
  license "MIT"
  head "https://github.com/kaymo-ai/claude-explorer.git", branch: "main"

  depends_on "python@3.11"

  def install
    bin.install "claude-explorer"
  end

  test do
    assert_match "claude-explorer", shell_output("#{bin}/claude-explorer --version")
  end
end

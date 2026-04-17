class Mcpx < Formula
  desc "Fast MCP config manager for self-hosted Model Context Protocol servers"
  homepage "https://github.com/nunoquispe/mcpx"
  url "https://raw.githubusercontent.com/nunoquispe/mcpx/v0.3.1/mcpx"
  sha256 "8a1feac7e725d9a1b49e247aac093a07b3dcf7306aebb0167a7e7d3ba672ad9a"
  license "MIT"
  version "0.3.1"

  depends_on "jq"

  def install
    bin.install "mcpx"
  end

  test do
    assert_match "mcpx #{version}", shell_output("#{bin}/mcpx --version")
  end
end

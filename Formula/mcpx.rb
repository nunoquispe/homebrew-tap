class Mcpx < Formula
  desc "Fast MCP config manager for self-hosted Model Context Protocol servers"
  homepage "https://github.com/nunoquispe/mcpx"
  url "https://raw.githubusercontent.com/nunoquispe/mcpx/v0.2.0/mcpx"
  sha256 "1f0ebf476a76eefd7b7daba552da243233556f617b2d1f78818070a3f3308e2a"
  license "MIT"
  version "0.2.0"

  depends_on "jq"

  def install
    bin.install "mcpx"
  end

  test do
    assert_match "mcpx #{version}", shell_output("#{bin}/mcpx --version")
  end
end

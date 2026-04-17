class Mcpx < Formula
  desc "Fast MCP config manager for self-hosted Model Context Protocol servers"
  homepage "https://github.com/nunoquispe/mcpx"
  url "https://raw.githubusercontent.com/nunoquispe/mcpx/v0.3.0/mcpx"
  sha256 "b39ac776c6fa5ded7cb7addc492c769d9e7fb84e691d41e1795e48ad68bb19c2"
  license "MIT"
  version "0.3.0"

  depends_on "jq"

  def install
    bin.install "mcpx"
  end

  test do
    assert_match "mcpx #{version}", shell_output("#{bin}/mcpx --version")
  end
end

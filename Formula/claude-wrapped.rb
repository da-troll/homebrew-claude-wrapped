class ClaudeWrapped < Formula
  include Language::Python::Virtualenv

  desc "Your year with Claude Code, Spotify Wrapped style"
  homepage "https://github.com/da-troll/claude-code-wrapped"
  url "https://files.pythonhosted.org/packages/source/c/claude-wrapped/claude-wrapped-0.1.13.tar.gz"
  sha256 "d7d79b368a9a3111376f1a6298ea7d60298f14f164ec5f580a71dd2b93a39f34"
  license "MIT"

  depends_on "python@3.13"

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-13.9.4.tar.gz"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/source/p/python-dotenv/python-dotenv-1.0.1.tar.gz"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end

  resource "questionary" do
    url "https://files.pythonhosted.org/packages/source/q/questionary/questionary-2.1.0.tar.gz"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/source/p/prompt_toolkit/prompt_toolkit-3.0.48.tar.gz"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/source/w/wcwidth/wcwidth-0.2.13.tar.gz"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/source/m/markdown-it-py/markdown_it_py-3.0.0.tar.gz"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/source/m/mdurl/mdurl-0.1.2.tar.gz"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/source/p/pygments/pygments-2.18.0.tar.gz"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Claude Code Wrapped", shell_output("#{bin}/claude-wrapped --help")
  end
end

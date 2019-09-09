# This file was generated by GoReleaser. DO NOT EDIT.
class Flora < Formula
  desc "Allows to manage and switch between multiple terraform versions"
  homepage "https://github.com/ketchoop/flora"
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ketchoop/flora/releases/download/0.2.0/flora_0.2.0_MacOS_x86_64.tar.gz"
    sha256 "0e69c91c3048f17aa4303f036be1bd6584221990010269ad013b276b20fa1e31"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ketchoop/flora/releases/download/0.2.0/flora_0.2.0_Linux_x86_64.tar.gz"
      sha256 "79064cbba11d94e4dea8c2d8a701c127caaaa94a0c59d01ce5cf0a1966726e0f"
    end
  end
  
  head "https://github.com/ketchoop/flora.git"

  def install
    bin.install "flora"
  end

  def caveats; <<~EOS
    flora --help
  EOS
  end

  test do
    system "#{bin}/flora", "--help"
  end
end

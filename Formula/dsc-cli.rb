class DscCli < Formula
    desc "Desired State Configuration (DSC) CLI"
    homepage "https://github.com/PowerShell/DSC"
    version "3.0.2"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/PowerShell/DSC/releases/download/v3.0.2/DSC-3.0.2-aarch64-apple-darwin.tar.gz"
        sha256 "87d0c1d9accf9a3abf5aeedb361cff2ac5175ac6031f278e0b1e2c5204d45064"
      else
        url "https://github.com/PowerShell/DSC/releases/download/v3.0.2/DSC-3.0.2-x86_64-apple-darwin.tar.gz"
        sha256 "14ddc38ba64ebb7ea6823367a81cac76a5f46e0fa6e8acb4322afdb4c98b620b"
      end
    end
  
    def install
      bin.install "dsc"
    end
  
    test do
      system "#{bin}/dsc", "--help"
    end
  end
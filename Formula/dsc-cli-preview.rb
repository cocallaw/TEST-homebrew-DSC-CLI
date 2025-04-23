class DscCliPreview < Formula
    desc "Desired State Configuration (DSC) CLI (Preview)"
    homepage "https://github.com/PowerShell/DSC"
    version "3.1.0-preview.3"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/PowerShell/DSC/releases/download/v3.1.0-preview.3/DSC-3.1.0-preview.3-aarch64-apple-darwin.tar.gz"
        sha256 "1b77bd224bf10316e995b37ba6bff6fc4705c557692439e77283d04b005735bb"
      else
        url "https://github.com/PowerShell/DSC/releases/download/v3.1.0-preview.3/DSC-3.1.0-preview.3-x86_64-apple-darwin.tar.gz"
        sha256 "1b77bd224bf10316e995b37ba6bff6fc4705c557692439e77283d04b005735bb"
      end
    end
  
    def install
      bin.install "dsc"
    end
  
    test do
      system "#{bin}/dsc", "--help"
    end
  end
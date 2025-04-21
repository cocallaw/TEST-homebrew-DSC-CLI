class DscCliPreview < Formula
    desc "Desired State Configuration (DSC) CLI (Preview)"
    homepage "https://github.com/PowerShell/DSC"
    version "3.1.0-preview.3"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/PowerShell/DSC/releases/download/v3.1.0-preview.3/DSC-3.1.0-preview.3-aarch64-apple-darwin.tar.gz"
        sha256 "PUT_ARM_SHA256_HERE"
      else
        url "https://github.com/PowerShell/DSC/releases/download/v3.1.0-preview.3/DSC-3.1.0-preview.3-x86_64-apple-darwin.tar.gz"
        sha256 "PUT_INTEL_SHA256_HERE"
      end
    end
  
    def install
      bin.install "dsc"
    end
  
    test do
      system "#{bin}/dsc", "--help"
    end
  end
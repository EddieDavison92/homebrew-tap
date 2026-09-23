class SnomedEclEngine < Formula
  desc "Evaluate SNOMED CT ECL against a local index"
  homepage "https://github.com/EddieDavison92/snomed-ecl-engine"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EddieDavison92/snomed-ecl-engine/releases/download/v0.1.2/snomed-ecl-engine-v0.1.2-aarch64-apple-darwin-default.tar.gz"
      sha256 "de6f4a16ef9c81e5c18d21fac919ab5ea73fa4945a376d862d2b1236784dfa4b"
    end
    on_intel do
      url "https://github.com/EddieDavison92/snomed-ecl-engine/releases/download/v0.1.2/snomed-ecl-engine-v0.1.2-x86_64-apple-darwin-default.tar.gz"
      sha256 "4cda3dc424da84c7d5eb5fb7e944a68d86a28c392a6c68c7bdfa14a6158ff1a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/EddieDavison92/snomed-ecl-engine/releases/download/v0.1.2/snomed-ecl-engine-v0.1.2-aarch64-unknown-linux-gnu-default.tar.gz"
      sha256 "bae652fa4d4aa039eb9847ac8ab121e1aed494b9b0749f9c662122824ee361e8"
    end
    on_intel do
      url "https://github.com/EddieDavison92/snomed-ecl-engine/releases/download/v0.1.2/snomed-ecl-engine-v0.1.2-x86_64-unknown-linux-gnu-default.tar.gz"
      sha256 "3a39160bde831eb8798bd1802899231d49fa1a696eabdf64e39b3c0a2c734e04"
    end
  end

  def install
    bin.install "snomed-ecl-engine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snomed-ecl-engine --version")
  end
end

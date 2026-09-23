class SnomedEclEngine < Formula
  desc "Evaluate SNOMED CT ECL against a local index"
  homepage "https://github.com/EddieDavison92/snomed-ecl-engine"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EddieDavison92/snomed-ecl-engine/releases/download/v0.1.1/snomed-ecl-engine-v0.1.1-aarch64-apple-darwin-default.tar.gz"
      sha256 "deecfce911cf22e5c82946bafd098e05f71cd8c52593ff38394ee886b142d1f8"
    end
    on_intel do
      url "https://github.com/EddieDavison92/snomed-ecl-engine/releases/download/v0.1.1/snomed-ecl-engine-v0.1.1-x86_64-apple-darwin-default.tar.gz"
      sha256 "c552671b8b132c84dfa6ee0405994014e751e21a02a5481d099ed9d925cd96c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/EddieDavison92/snomed-ecl-engine/releases/download/v0.1.1/snomed-ecl-engine-v0.1.1-aarch64-unknown-linux-gnu-default.tar.gz"
      sha256 "327cf30602782bd314a42ee7964ceb185d4bdd899a6dbf13706aa59398a1107c"
    end
    on_intel do
      url "https://github.com/EddieDavison92/snomed-ecl-engine/releases/download/v0.1.1/snomed-ecl-engine-v0.1.1-x86_64-unknown-linux-gnu-default.tar.gz"
      sha256 "b149cbb614ce9aa569454a6b5e84f999954c61ac00f5b656dcb2fc51b3450b13"
    end
  end

  def install
    bin.install "snomed-ecl-engine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snomed-ecl-engine --version")
  end
end

class SnomedEclEngine < Formula
  desc "Evaluate SNOMED CT ECL against a local index"
  homepage "https://github.com/EddieDavison92/snomed-ecl-engine"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EddieDavison92/snomed-ecl-engine/releases/download/v0.2.0/snomed-ecl-engine-v0.2.0-aarch64-apple-darwin-default.tar.gz"
      sha256 "660c34c7671442f8ea38049ed0ffbe7efd3af4210a96c52246b9c36caa5e17ea"
    end
    on_intel do
      url "https://github.com/EddieDavison92/snomed-ecl-engine/releases/download/v0.2.0/snomed-ecl-engine-v0.2.0-x86_64-apple-darwin-default.tar.gz"
      sha256 "f9b1a9cc8ddf9f5c0289ded6773853eea52f24709852b14f410bdaf3dd0dd6e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/EddieDavison92/snomed-ecl-engine/releases/download/v0.2.0/snomed-ecl-engine-v0.2.0-aarch64-unknown-linux-gnu-default.tar.gz"
      sha256 "31431c152fcf27c05d399cfd26c13e408334aa8cc8997f48a8cf71b274270701"
    end
    on_intel do
      url "https://github.com/EddieDavison92/snomed-ecl-engine/releases/download/v0.2.0/snomed-ecl-engine-v0.2.0-x86_64-unknown-linux-gnu-default.tar.gz"
      sha256 "a4a19dea8c49a9eef6881e3709fc850fbc3b17c3530d1331ba63521f96d69f1d"
    end
  end

  def install
    bin.install "snomed-ecl-engine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snomed-ecl-engine --version")
  end
end

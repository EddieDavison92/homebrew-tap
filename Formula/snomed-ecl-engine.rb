class SnomedEclEngine < Formula
  desc "Evaluate SNOMED CT ECL against a local index"
  homepage "https://github.com/EddieDavison92/snomed-ecl-engine"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EddieDavison92/snomed-ecl-engine/releases/download/v0.2.1/snomed-ecl-engine-v0.2.1-aarch64-apple-darwin-default.tar.gz"
      sha256 "4359b1efa1dcad28ff9fb87ea16dcc3108f2dde1a9dcc86c0b9436c19effd4db"
    end
    on_intel do
      url "https://github.com/EddieDavison92/snomed-ecl-engine/releases/download/v0.2.1/snomed-ecl-engine-v0.2.1-x86_64-apple-darwin-default.tar.gz"
      sha256 "77c2c48658e96a6ba5017611c6bec431874fc73cb208104323bc21da4c679c4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/EddieDavison92/snomed-ecl-engine/releases/download/v0.2.1/snomed-ecl-engine-v0.2.1-aarch64-unknown-linux-gnu-default.tar.gz"
      sha256 "d51dcf4a05464a182b5300822d1d65777c6d39671734027b583d9d59e5c76b5a"
    end
    on_intel do
      url "https://github.com/EddieDavison92/snomed-ecl-engine/releases/download/v0.2.1/snomed-ecl-engine-v0.2.1-x86_64-unknown-linux-gnu-default.tar.gz"
      sha256 "27932f9c4e317cb620aaf75363001240f01043bf9ef682f0edd34916f6987b4c"
    end
  end

  def install
    bin.install "snomed-ecl-engine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snomed-ecl-engine --version")
  end
end

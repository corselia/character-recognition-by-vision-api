
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "character_recognition_by_vision_api/version"

Gem::Specification.new do |spec|
  spec.name          = "character_recognition_by_vision_api"
  spec.version       = CharacterRecognitionByVisionApi::VERSION
  spec.authors       = ["Osamu Takiya"]
  spec.email         = ["takiya@toran.sakura.ne.jp"]

  spec.summary       = %q{Recognize characters in image file by Vision API}
  spec.description   = %q{With Google Vision API, you can extract the characters by text format from image file}
  spec.homepage      = "https://github.com/corselia/character-recognition-by-vision-api"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency 'rest-client'
end

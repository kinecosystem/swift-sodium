# Requires CocoaPods 1.10+
#
# WARNING: Apple Silicon is not supported when using Cocoapods.
# If you need to support Apple Silicon, use the Swift package instead.

Pod::Spec.new do |s|
  s.name = "KinSodium"
  s.version = "0.9.2"
  s.swift_version = "5.0"
  s.license = { type: "ISC", file: "LICENSE" }
  s.summary = "A temporary fork of Swift-Sodium to support iOS 9"
  s.homepage = "https://github.com/jedisct1/swift-sodium"
  s.social_media_url = "https://twitter.com/jedisct1"
  s.authors = { "Frank Denis" => "" }
  s.source = { git: "https://github.com/kinecosystem/swift-sodium.git",
               tag: "0.9.2" }

  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.11"
  s.watchos.deployment_target = "5.0"

  s.source_files = "Sodium/**/*.{swift,h}"
  s.private_header_files = "Sodium/libsodium/*.h"

  s.pod_target_xcconfig = {
    "SWIFT_INCLUDE_PATHS" => '$(inherited) "${PODS_XCFRAMEWORKS_BUILD_DIR}/Clibsodium"'
  }

  s.user_target_xcconfig = {
    "SWIFT_INCLUDE_PATHS" => '$(inherited) "${PODS_XCFRAMEWORKS_BUILD_DIR}/Clibsodium"'
  }

  s.requires_arc = true

  s.vendored_frameworks = "Clibsodium.xcframework"
end

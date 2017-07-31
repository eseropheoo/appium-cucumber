require 'rspec'
require 'pry'
require 'appium_lib'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end

def desired_capabilities

  {caps: {
    "platformName": "Android",
    "deviceName": "Emulator-5554",
    "app": "/Users/tech-a10/Downloads/ContactManager.apk"
    }
  }
end

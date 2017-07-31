require 'appium_lib'
require 'cucumber'

def desired_capabilities

  {caps: {
    "platformName": "Android",
    "deviceName": "Emulator-5554",
    "app": "/Users/tech-a10/Downloads/ContactManager.apk"
    }
  }
end

Appium::Driver.new(desired_capabilities)

class AppiumWorld
end

Appium::promote_appium_methods(AppiumWorld) 

World do 
	AppiumWorld.new
	
end

Before{$driver.start_driver}
After{$driver.driver_quit}

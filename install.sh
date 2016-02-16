#!/bin/bash

gem install rake
gem install minitest
gem install minitest-reporters

# Check the gems have been installed successfully
# If the message "rake test # Run tests" is shown at the last line, your installation has been succeeded.
cd step_1/
rake -T

maintainer       "Julio Napuri"
maintainer_email "julionc@gmail.com"
license          "Apache 2.0"
description      "Installs and configures gitolite"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

recipe "gitolite",        "This recipe is a no-op and does nothing."
recipe "gitolite::basic", "Sets up the gitolite basic installation."

%w( ubuntu debian ).each do |os|
  supports os
end

%w( git perl ).each do |cb|
  depends cb
end

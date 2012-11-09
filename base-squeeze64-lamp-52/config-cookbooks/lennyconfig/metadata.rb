maintainer       "Denis Roussel"
maintainer_email "denis.roussel@gmail.com"
license          "Apache 2.0"
description      "Lenny specific packages"
version          "0.0.1"
recipe           "lennyconfig", "Lenny specific packages"

%w{ debian }.each do |os|
  supports os
end

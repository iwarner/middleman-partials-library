##
# JavaScript for the body area
#
# @author Ian Warner <ian.warner@drykiss.com>
##

# JQuery
require 'jquery'

# Lodash
require 'lodash'

# Angular JS
require 'angular'
require 'angular-animate'
require 'angular-google-maps'
require 'angular-resource'
require 'angular-sanitize'
require 'angular-ui-grid'
require 'angular-ui-router'

# Angular Clipboard
window.ZeroClipboard = require "zeroclipboard"
require 'ng-clip'

# Bootstrap
require 'bootstrap-sass'

# Angular UI Bootstrap
require 'angular-ui-bootstrap'

# App
require 'lib/app/app.coffee'

# Router
require 'lib/router/default.coffee'

# Service
# require 'lib/service/auth.coffee'
# require 'lib/service/security.coffee'
# require 'lib/service/utilities.coffee'

##
# Molecule
##
require 'molecule/login/_login_controller.coffee'
require 'molecule/mailchimp/_mailchimp_controller.coffee'
require 'molecule/top-icon/_top-icon_controller.coffee'
require 'molecule/popover/_popover_directive.coffee'
require 'molecule/tooltip/_tooltip_directive.coffee'
require 'molecule/search-input/_search-input_controller.coffee'
require 'molecule/search-input/_search-input_directive.coffee'

##
# Organism
##
require 'organism/sidebar/_sidebar.coffee'
require 'organism/code/_code_controller.coffee'
require 'organism/contact/_contact_controller.coffee'

##
# Social
##
require 'social/facebook/login/_facebook_module.coffee'

##
# Template
##
require 'template/portfolio/_portfolio_controller.coffee'
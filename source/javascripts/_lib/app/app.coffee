##
# Application initialisation
#
# @author Ian Warner <ian.warner@drykiss.com>
##

##
# JS lint
##
'use strict'

##
# Set modules
#
# @param ngRoute Router
# @param codeBlenderControllers Controller
##
angular
    .module 'app',  [

        # 'ui.bootstrap'
        # 'ui.checkbox'
        # 'ui.grid'
        'ui.router'

        'app.auth'
        'app.config'
        'app.controller'
        'app.directive'
        'app.filter'
        'app.security'
        'app.service'
        'app.utility'

        # 'firebase'

        # 'ngAnimate'
        # 'ngClipboard'
        # 'ngStorage'

        # 'mailChimp'

        # 'datatables'
        # 'datatables.bootstrap'

    ]

# Module
angular.module 'app.auth',       []
angular.module 'app.config',     []
angular.module 'app.controller', []
angular.module 'app.directive',  []
angular.module 'app.filter',     []
angular.module 'app.security',   []
angular.module 'app.service',    []
angular.module 'app.utility',    []
# global.coffee

PKNS = angular.module 'PKNS', []

PKNS.run([
  '$rootScope',
  '$timeout',
  ($rootScope, $timeout) ->
    $(document).ready ->
      # console.info $rootScope if console?.info
      $('#new_user').delegate 'button, input[type=submit]', 'click', (event) ->
        form = $('#new_user')
        cbox = form.find('.checked').hasClass('checked')
        if cbox
          return form.submit()
        else
          window.alert 'Sila setuju sebelum meneruskan.'
          return false;
])

PKNS.controller('MainCtrl', [
  '$scope',
  ($scope) ->
    $scope.helo = "Start This"

    # initialize tabs
    Gumby.initialize('tabs')
    # initialize checkboxes
    Gumby.initialize('checkboxes')
    # initialize radiobtns
    Gumby.initialize('radiobtns')
])

PKNS.directive('uiNavDropdown', [
  '$timeout',
  ($timeout) ->
    return {
      restrict: 'A'
      scope: no
      controller: ($scope, $element) ->
        $scope.clickHandler = (e) ->
          e.preventDefault
          target  = $(e.currentTarget).children('.dropdown-menu')
          display = target.css('display')
          if display is 'none'
            target.slideDown 'slow'
          else
            target.slideUp 'slow'
      link: (scope, element, attr) ->
        element.on 'click', scope.clickHandler
    }
])

PKNS.directive('uiClose', [
  '$rootScope',
  ($rootScope) ->
    return {
      restrict: 'A'
      scope: false
      controller: ($scope, $element) ->
        $scope.clickHandler = (e) ->
          e.preventDefault()
          target = $(e.currentTarget).parent('.alert')
          target.remove() if target.length
      link: (scope, element, attr) ->
        element.on 'click', scope.clickHandler
    }
])
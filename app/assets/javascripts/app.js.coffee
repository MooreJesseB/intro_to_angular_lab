TestApp = angular.module "TestApp", []


TestApp.controller "IndexCtrl", ['$scope', ($scope) ->

  $scope.favoriteMovies = [{
      title: "Guardians of the Galaxy"
      rating: 5.0
      awesomeFactor: 96.0
    }, {
      title: "The Avengers"
      rating: 4.2
      awesomeFactor: 89.0
    }, {
      title: "The Amazing Spiderman"
      rating: 3.9
      awesomeFactor: 86.0
    }, {
      title: "Iron Man"
      rating: 4.4
      awesomeFactor: 91.0
    }, {
      title: "Blade Runner"
      rating: 5.0
      awesomeFactor: 100.0
    }
  ]

  $scope.removeMovie = (movie) ->
    $scope.favoriteMovies.splice($scope.favoriteMovies.indexOf(movie), 1)

]

TestApp.filter 'reverseString', ->
  (item) ->
    item.split("").reverse().join("")
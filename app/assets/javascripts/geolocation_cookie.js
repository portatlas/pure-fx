
  var options = {
    enableHighAccuracy: true,
    timeout: 5000,
    maxmiumAge: 0
  };

  function success(pos){
    var crd = pos.coords

    console.log('Coordinates are:');
    console.log('Latitude: ' + crd.latitude);
    console.log('Longitude: ' + crd.longitude);
    console.log('Accuracy: ' + crd.accuracy);

    document.cookie = "latitude=" + crd.latitude;
    document.cookie = "longitude=" + crd.longitude;
    document.cookie = "accuracy=" + crd.accuracy;
  };

  function error(err){
    console.warn('ERROR(' + err.code + '): ' + err.message);
  }

  $(document).ready(function(){
    console.log("it is loaded yes")
    $(".fx-submit").hide();
    navigator.geolocation.getCurrentPosition(success, error, options)
    $(".fx-submit").show();
  });

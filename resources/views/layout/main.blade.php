<!doctype html>
<html class="no-js" lang="en" dir="ltr">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="x-ua-compatible" content="ie=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>
            @yield('title','Mickey Shirts')
        </title>
        <link rel="stylesheet" href="/css/bootstrap.min.css">
        {{-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/> --}}
        <link rel="stylesheet" href="{{asset('css/foundation.css')}}"/>
        <link rel="stylesheet" href="{{asset('css/app.css')}}"/>
        {{-- <link href="http://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css" rel="stylesheet"> --}}


    </head>
    <body>
        <nav class="navbar navbar-fixed-top">
          <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="{{route('home')}}">MC-MyKey Shirts</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="{{route('shirts')}}">SHIRTS <span class="sr-only">(current)</span></a></li>
                <li><a href="#">CONTACT</a></li>
                <li>
                    <a href="{{route('cart.index')}}">CART
                        <span class="badge">{{Cart::count()}}</span>
                    </a>
                </li>
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>


@yield('content')

<footer class="footer top">
  <div class="row full-width">
    <div class="small-12 col-lg-4 medium-4 large-4 columns">
      <i class="fi-laptop"></i>
      <p>Coded with love by smkpobon for educational purpose only</p>
    </div>
    <div class="small-12 col-lg-4 medium-4 large-4 columns">
      <i class="fi-html5"></i>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit impedit consequuntur at! Amet sed itaque nostrum, distinctio eveniet odio, id ipsam fuga quam minima cumque nobis veniam voluptates deserunt!</p>
    </div>
    
    <div class="small-6 col-lg-4 medium-4 large-4 columns">
      <h4>Follow Us</h4>
      <ul class="footer-links">
        <li><a href="https://github.com/smkpobon">GitHub</a></li>
        <li><a href="#">Facebook</a></li>
        <li><a href="https://twitter.com/smkpobon">Twitter</a></li>
      </ul>
      
    </div>
  </div>
</footer>

    <script src="/js/vendor/jquery.js"></script>
    <script src="https://js.stripe.com/v3/"></script>
    <script>
      var stripe = Stripe('pk_test_8U6WMsHHEr1dUd02xWKNv6xw');
      var elements = stripe.elements();
      // Custom styling can be passed to options when creating an Element.
      var style = {
        base: {
          // Add your base input styles here. For example:
          fontSize: '16px',
          lineHeight: '24px'
        }
      };

      // // Create an instance of the card Element
      var card = elements.create('card', {style: style});

      // Add an instance of the card Element into the `card-element` <div>
        card.mount('#card-element');
        card.addEventListener('change', function(event) {
        var displayError = document.getElementById('card-errors');
        if (event.error) {
          displayError.textContent = event.error.message;
        } else {
          displayError.textContent = '';
        }
      });


      // Create a token or display an error when the form is submitted.
      var form = document.getElementById('payment-form');
      form.addEventListener('submit', function(event) {
        event.preventDefault();

        stripe.createToken(card).then(function(result) {
          if (result.error) {
            // Inform the user if there was an error
            var errorElement = document.getElementById('card-errors');
            errorElement.textContent = result.error.message;
          } else {
            // Send the token to your server
            stripeTokenHandler(result.token);
          }
        });
      });

        function stripeTokenHandler(token) {
          // Insert the token ID into the form so it gets submitted to the server
          var form = document.getElementById('payment-form');
          var hiddenInput = document.createElement('input');
          hiddenInput.setAttribute('type', 'hidden');
          hiddenInput.setAttribute('name', 'stripeToken');
          hiddenInput.setAttribute('value', token.id);
          form.appendChild(hiddenInput);

          // Submit the form
          form.submit();
        }
    </script>
    <script src="/js/app.js"></script>
    </body>
</html>

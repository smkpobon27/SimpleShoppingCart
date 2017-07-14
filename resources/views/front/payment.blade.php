@extends('layout.main')

@section('content')
<div class="row top" style="margin-top: 100px">
<div class="col-lg-6 col-lg-offset-3">
<form action="{{route('payment.store')}}" method="post" id="payment-form">
{{csrf_field()}}
 
  <div class="form-row">
    <label for="card-element">
      Credit or debit card
    </label>
    <div id="card-element">
      <!-- a Stripe Element will be inserted here. -->
    </div>

    <!-- Used to display Element errors -->
    <div id="card-errors" role="alert"></div>
  </div>

  <button class="btn btn-success">Submit Payment</button>

</form>
</div>
</div>
@endsection
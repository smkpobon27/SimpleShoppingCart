@extends('layout.main')

@section('content')

<div class="row top" style="margin-top: 100px">

	<div class="col-lg-6 col-lg-offset-3">
	<h2>Shipping Info</h2>
		{{Form::open(['route'=>'address.store', 'method'=>'post'])}}
			<div class="form-group">
				{{Form::label('addressline', 'Address Line')}}
				{{Form::text('addressline', null, ['class'=>'form-control'])}}
			</div>

			<div class="form-group">
				{{Form::label('city', 'City')}}
				{{Form::text('city', null, ['class'=>'form-control'])}}
			</div>

			<div class="form-group">
				{{Form::label('state', 'State')}}
				{{Form::text('state', null, ['class'=>'form-control'])}}
			</div>

			<div class="form-group">
				{{Form::label('zip', 'Zip')}}
				{{Form::text('zip', null, ['class'=>'form-control'])}}
			</div>

			<div class="form-group">
				{{Form::label('country', 'Country')}}
				{{Form::text('country', null, ['class'=>'form-control'])}}
			</div>

			<div class="form-group">
				{{Form::label('phone', 'Phone')}}
				{{Form::text('phone', null, ['class'=>'form-control'])}}
			</div>

				{{Form::submit('Proceed to Payment', ['class'=>'btn btn-success'])}}
			
		{{Form::close()}}
	</div>
</div>

@endsection
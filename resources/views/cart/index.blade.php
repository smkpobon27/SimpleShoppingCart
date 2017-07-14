@extends('layout.main')

@section('content')
<div class="container">
<div class="row top">
<h1>Cart Items</h1>
	<table class="table table-hover table-striped">
		<tr>
			<th>Name</th>
			<th>Price</th>
			<th>Qty</th>
			<th>Size</th>
			<th>Action</th>
		</tr>
		@foreach($cartItems as $cartItem)
		<tr>
			<td>{{$cartItem->name}}</td>
			<td>{{$cartItem->price}}</td>
			<td width="20px">
				{{Form::open(['route'=>['cart.update', $cartItem->rowId], 'method'=>'PUT'])}}
					<input name="qty" type="text" value="{{$cartItem->qty}}">
				
			</td>
			<td>
			<div>{{Form::select('size',['small'=>'Small','medium'=>'Medium','large'=>'Large'], $cartItem->options->has('size')?$cartItem->options->size:'')}}
			</div>
			</td>
			<td>
				<input style="float:left" type="submit" class="btn btn-success" value="Ok">
				{{Form::close()}}

				<form action="{{route('cart.destroy', $cartItem->rowId)}}" method="post">
					{{csrf_field()}}
					{{method_field('DELETE')}}
					<input type="submit" class="btn btn-primary" value="DELETE">
				</form>
			</td>
		</tr>
		@endforeach
		<tr>
			<td></td>
			<td>
			Tax: {{Cart::tax()}} <br>
			Sub Total: {{Cart::subtotal()}} <br>
			Grand Total: ${{Cart::total()}} 
			</td>
			<td>Total Items: {{Cart::count()}}</td>
			<td></td>
		</tr>
	</table>
	<a href="{{route('checkout.shipping')}}" class="btn btn-primary">Checkout</a>
</div>
</div>
@endsection
@extends('admin.layout.admin')

@section('content')
	<h1>Products</h1>
	<ul>
	@forelse($products as $product)
		<li><h4>Name of product: {{$product->name}}</h4>
			<h4>Category: {{count($product->category)? $product->category->name:'N/A'}}</h4>

			<form action="{{route('product.destroy', $product->id)}}" method="post">
					{{csrf_field()}}
					{{method_field('DELETE')}}
					<input type="submit" class="btn btn-primary" value="DELETE">
				</form>
		</li>

	@empty
		<h3>No product.</h3>
	@endforelse
	</ul>
@endsection
@extends('admin.layout.admin')

@section('content')
	<div class="navbar">
		<a href="" class="navbar-brand">Categories</a>
		<ul class="nav navbar-nav">
			@if(!empty($categories))
				@forelse($categories as $category)
					<li>
						<a href="{{route('category.show',$category->id)}}">{{$category->name}}</a>
					</li>
				@empty
					<li>No data</li>
				@endforelse
			@endif
		</ul>
	</div>

	<!-- Button trigger modal -->
<a href="" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Add Category
</a>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
		{{Form::open(['route'=>'category.store', 'method'=>'post'])}}

    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Add category</h4>
      </div>
      <div class="modal-body">
        <div class="form-group">
        	{{Form::label('name','Name')}}
        	{{Form::text('name', null, ['class'=>'form-control'])}}
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
    {{Form::close()}}
  </div>
</div>

@if(!empty($products))
	<section>
		<h3>Products</h3>
		<table class="table table-hover">
			<tr>
				<th>
					Products
				</th>
			</tr>
			@forelse($products as $product)
			<tr>
				<td>{{$product->name}}</td>
			</tr>
			@empty
				<tr>
					<td>No data</td>
				</tr>
			@endforelse
		</table>
	</section>
@endif
@endsection
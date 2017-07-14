@extends('layout.main')

@section('title','Shirts')

@section('content')
	<!-- products listing -->
         <!-- Latest SHirts -->
        <div class="row top">
        @foreach($shirts as $shirt)
            <div class="col-lg-3 small-3 columns">
                <div class="item-wrapper">
                    <div class="img-wrapper">
                        <a href="{{route('cart.addItem',$shirt->id)}}" class="button expanded add-to-cart">
                            Add to Cart
                        </a>
                        <a href="#">
                            <img src="{{url('images',$shirt->image)}}" style="height: 300px; width: 300px;" />
                        </a>
                    </div>
                    <a href="{{route('shirt')}}">
                        <h3>
                            {{$shirt->name}}
                        </h3>
                    </a>
                    <h5>
                        ${{$shirt->price}}
                    </h5>
                    <p>
                        {{$shirt->description}}
                    </p>
                </div>
            </div>
            @endforeach
        </div>

@endsection
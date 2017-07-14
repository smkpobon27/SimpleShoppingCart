@extends('layout.main')

@section('content')
	        <section class="hero text-center top">
            <br/>
            <br/>
            <br/>
            <br/>
            <h2 >
                <strong>
                    Hey! Welcome to MC- Mykey's Store
                </strong>
            </h2>
            <br>
            <a href="{{url('/shirts')}}"><button class="button btn btn-primary btn-lg large">Check out My Shirts</button></a>
        </section>
        <br/>
        <div class="subheader text-center">
             <h2>
            MyKey&rsquo;s Latest Shirts
        </h2>
        </div>
       
        <!-- Latest SHirts -->
        <div class="row">
        @foreach($shirts as $shirt)
                <div class="col-lg-3 small-3 columns">
                    <div class="item-wrapper">
                        <div class="img-wrapper">
                            <a href="{{route('cart.addItem', $shirt->id)}}" class=" expanded add-to-cart">
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
        <!-- Footer -->
        <br>
@endsection
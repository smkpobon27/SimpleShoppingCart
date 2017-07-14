@extends('layout.main')
@section('title','shirt')

@section('content')
	<div class="row top">
            <div class="col-lg-5 col-lg-offset-1 small-5 small-offset-1 columns">
                <div class="item-wrapper">
                    <div class="img-wrapper">
                        <a href="#">
                             <img src="/img/shirts/shirt-102.jpg"/>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 small-6 columns">
                <div class="item-wrapper">
                    <h3 class="subheader">
                       <span class="price-tag">$20</span> Mc-Mykey Designed Shirt
                    </h3>
                    <div class="row">
                        <div class="col-lg-12 large-12 columns">
                            <label>
                                Select Size
                                <select>
                                    <option value="small">
                                        Small
                                    </option>
                                    <option value="medium">
                                        Medium
                                    </option>
                                    <option value="large">
                                        Large
                                    </option>
                                   
                                </select>
                            </label>
                            <a href="#" class="button  expanded">Add to Cart</a>
                        </div>
                    </div>
                

                </div>
            </div>
        </div>
@endsection
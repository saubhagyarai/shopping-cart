@extends('layouts.master')

@section('title')
LARAVEL SHOPPING CART
@endsection

@section('content')
@if(Session::has('cart'))
<div class="row">
    <div class="col-sm-6 col-md-6 offset-md-3">
        <ul class="list-group">

            @foreach($products as $product)
            <li class="list-group-item">
                <img src="{{$product['item']['imagePath']}}" style="width: 70px; height: 70px" alt="">
                <strong>{{ $product['item']['title']}}</strong>
                <span class="badge badge-danger pull-right">{{$product['qty']}}</span>
                <span class="label label-success mx-3">Price:
                    {{$product['item']['price']}}</span>
                <span class="label label-success mx-3">Sub Total: {{$product['price']}}</span>
                {{-- <pre>
                {{print_r($product)}}
                </pre> --}}
                <div class="btn-group float-right">
                    <button type="button" class="btn btn-success btn-sm my-3 dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        Action
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item"
                            href="{{ route('product.reduceByOne', ['id' => $product['item']['id']]) }}">Reduce by 1</a>
                        <a class="dropdown-item"
                            href="{{ route('product.remove', ['id' => $product['item']['id']]) }}">Remove All</a>
            </li>
            @endforeach
        </ul>
    </div>
</div>

<div class="row">
    <div class="col-sm-6 col-md-6 offset-md-3">
        <strong>Total: {{$totalPrice}}</strong>
    </div>
</div>
<hr>
<div class="row">
    <div class="col-sm-6 col-md-6 offset-md-3">
        <a href="{{route('checkout')}}" class="btn btn-success">Checkout</a>
    </div>
</div>

@else
<div class="row">
    <div class="col-sm-6 col-md-6 offset-md-3">
        <h2>No Items in Cart</h2>
    </div>
</div>

@endif



@endsection
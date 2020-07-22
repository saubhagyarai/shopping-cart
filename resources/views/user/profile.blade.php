@extends('layouts.master')

@section('content')
<div class="row">
    <div class="col-md-10 offset-md-1">
        <h1>Profile user</h1>

        @foreach($orders as $order)
        <div class="card my-5" style="width: 100%; height: auto">

            <ul class="list-group list-group-flush">

                @foreach($order->cart->items as $item)

                <li class="list-group-item">
                    <span class="badge badge-info float-right">Sub Total: ${{ $item['price'] }}</span>
                    {{$item['item']['title']}} | {{$item['qty']}} Units | Price: ${{$item['item']['price']}}
                </li>
                @endforeach
            </ul>
            <div class="card-header">
                <strong>Total Price: ${{$order->cart->totalPrice}}</strong>
            </div>
        </div>
        @endforeach

    </div>
</div>

@endsection
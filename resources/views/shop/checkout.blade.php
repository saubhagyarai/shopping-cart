@extends('layouts.master')

@section('title')
LARAVEL SHOPPING CART
@endsection

@section('content')
<div class="row">
    <div class="col-sm-6 col-md-6 offset-4">
        <h1>Checkout</h1>
        <h4>Your Total: ${{$total}}</h4>
        {{-- hide the div don't have error --}}
        <div id="charge-error" class="alert alert-danger 
        {{!Session::has('error') ? 'hidden' : '' }}">
            {{Session::get('error')}}
        </div>
        <form action="{{route('checkout')}}" method="post" id="checkout-form">
            @csrf
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="address">Address</label>
                        <input type="text" class="form-control" id="address" name="address" required>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="card-name">Card Holder Name</label>
                        <input type="text" class="form-control" id="card-name" required>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="card-number">Card Number</label>
                        <input type="text" class="form-control" id="name" required>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="card-expiry-month">Expiration Month</label>
                        <input type="text" class="form-control" id="card-expiry-month" required>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="card-expiry-year">Expiration Year</label>
                        <input type="text" class="form-control" id="card-expiry-year" required>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="card-cvc">CVC</label>
                        <input type="text" class="form-control" id="card-cvc" required>
                    </div>
                </div>
            </div>

            <button class="btn btn-success" type="submit">Buy Now</button>
        </form>
    </div>
</div>
@endsection

@section('scripts')
<script src="https://js.stripe.com/v3/"></script>
<script src="{{asset('js/checkout.js')}}"></script>

@endsection
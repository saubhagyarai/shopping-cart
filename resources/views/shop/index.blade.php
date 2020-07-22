@extends('layouts.master')

@section('title')
LARAVEL SHOPPING CART
@endsection

@section('content')
@if(Session::has('success'))
<div class="row">
    <div class="col-md-4 offset-4">
        <div class="alert alert-success" id="charge-message">
            {{Session::get('success')}}
        </div>
    </div>
</div>
@endif

@foreach($products->chunk(3) as $productChunk)
{{-- Chunk will divide array in collections --}}
<div class="row">
    @foreach($productChunk as $product)
    <div class="col-md-4 col-sm-4 col-6 my-2">
        <div class="card">
            <img class="card-img-top" src="{{$product->imagePath}}" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">{{$product->title}}</h5>
                <p class="card-text">{{$product->description}}</p>
                <div class="float-left price">${{$product->price}}</div>
                <a href="{{ route('product.addToCart', ['id' => $product->id] ) }}"
                    class="btn-sm btn-success float-right">Add to Cart</a>
            </div>
        </div>
    </div>
    @endforeach
</div>
@endforeach

{{-- <div class="row">
    <div class="col-md-3 col-sm4 col-6 m-2">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top"
                src="https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png"
                alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                    card's
                    content.</p>
                <div class="float-left price">$12</div>
                <a href="#" class="btn-sm btn-success float-right">Go somewhere</a>
            </div>
        </div>
    </div>
    <div class="col-md-3 col-sm4 col-6 m-2">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top"
                src="https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png"
                alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                    card's
                    content.</p>
                <div class="float-left price">$12</div>
                <a href="#" class="btn-sm btn-success float-right">Go somewhere</a>
            </div>
        </div>
    </div>
    <div class="col-md-3 col-sm4 col-6 m-2">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top"
                src="https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png"
                alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                    card's
                    content.</p>
                <div class="float-left price">$12</div>
                <a href="#" class="btn-sm btn-success float-right">Go somewhere</a>
            </div>
        </div>
    </div>

</div>
<div class="row">

    <div class="col-md-3 col-sm4 col-6 m-2">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top"
                src="https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png"
                alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                    card's
                    content.</p>
                <div class="float-left price">$12</div>
                <a href="#" class="btn-sm btn-success float-right">Go somewhere</a>
            </div>
        </div>
    </div>
    <div class="col-md-3 col-sm4 col-6 m-2">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top"
                src="https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png"
                alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                    card's
                    content.</p>
                <div class="float-left price">$12</div>
                <a href="#" class="btn-sm btn-success float-right">Go somewhere</a>
            </div>
        </div>
    </div>
    <div class="col-md-3 col-sm4 col-6 m-2">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top"
                src="https://bookriot.com/wp-content/uploads/2017/08/witch-halloween-pumpkins-bones-feature-470x248.png"
                alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                    card's
                    content.</p>
                <div class="float-left price">$12</div>
                <a href="#" class="btn-sm btn-success float-right">Go somewhere</a>
            </div>
        </div>
    </div>

</div> --}}
@endsection
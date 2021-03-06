@extends('layouts.master')

@section('content')
<div class="row">
    <div class="col-md-4 offset-md-4">
        <h1>Sign Up</h1>
        @if(count($errors) > 0)
        <div class="alert alert-danger">
            @foreach($errors->all() as $error)
            {{$error}}
            @endforeach
        </div>
        @endif
        <form action="{{ route('user.signup')}}" method="post">
            @csrf
            <div class="form-group">
                <label for="email">E-Mail</label>
                <input type="text" id="email" name="email" class="form-control">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="text" id="password" name="password" class="form-control">
            </div>
            <button type="submit" class="btn btn-primary">Sign Up</button>
        </form>
    </div>
</div>

@endsection
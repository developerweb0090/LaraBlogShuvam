@extends('layouts.admin')
@section('content')
<h3>Admin Dashboard</h3>
<div class="row text-center">
  <div class="col-md-4"><div class="card p-3"><h4>Users</h4><p>{{ $stats['users'] }}</p></div></div>
  <div class="col-md-4"><div class="card p-3"><h4>Posts</h4><p>{{ $stats['posts'] }}</p></div></div>
  <div class="col-md-4"><div class="card p-3"><h4>Comments</h4><p>{{ $stats['comments'] }}</p></div></div>
</div>
@endsection

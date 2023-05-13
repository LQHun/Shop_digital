<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Cart | Shop Digital</title>
    <link href="{{asset('clients/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('clients/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{asset('clients/css/prettyPhoto.css')}}" rel="stylesheet">
    <link href="{{asset('clients/css/price-range.css')}}" rel="stylesheet">
    <link href="{{asset('clients/css/animate.css')}}" rel="stylesheet">
	<link href="{{asset('clients/css/main.css')}}" rel="stylesheet">
	<link href="{{asset('clients/css/responsive.css')}}" rel="stylesheet">     
    <link rel="shortcut icon" href="{{asset('clients/images/ico/favicon.ico')}}">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="{{asset('clients/images/ico/apple-touch-icon-144-precomposed.png')}}">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="{{asset('clients/images/ico/apple-touch-icon-114-precomposed.png')}}">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="{{asset('clients/images/ico/apple-touch-icon-72-precomposed.png')}}">
    <link rel="apple-touch-icon-precomposed" href="{{asset('clients/images/ico/apple-touch-icon-57-precomposed.png')}}">
</head><!--/head-->

<body>
	@include('clients.header')
	<section id="cart_items">
		<div class="container">
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td>Num</td>
							<td class="image">Image</td>
							<td class="image">Name</td>
							<td class="description">Price</td>
							<td class="price">Quantity</td>
							<td class="price">Total</td>
							<td class="quantity">Action</td>
						</tr>
					</thead>
					@php
					$subtotal=0;
					$i=1;
					@endphp
					<tbody>
						@if ($cartItem)
							@foreach($cartItem as $cart)
							@php
							$subtotal+=$cart['price']*$cart['quantity'];
							@endphp
							<form action="{{ route('update_cart_item') }}" method="post">
						<input type="hidden" name="id" id="id" value="{{ $cart['id'] }}">
						<tr>
							<td>{{ $i++ }}</td>
							<td>
								<a href=""><img width="150" height="100" src="{{asset('assets/img/'.$cart['image'])}}" alt=""></a>
							</td>
							<td >
								<b>{{ $cart['name'] }}</b>
							</td>
							<td >
								<p>{{ number_format($cart['price'],'0','','.') }}</p>
							</td>
							<td >
									<input name="quantity" id="quantity" type="number" min="1" value="{{ $cart['quantity'] }}">
							</td>
							<td >
								<p>{{ number_format($cart['price']*$cart['quantity'],'0','','.') }}</p>
							</td>
							@csrf
							<td >
								<button type="submit" class="btn btn-success">Update</button>  |  
								<a href="{{ route('delete_item_cart',['id'=>$cart['id']]) }}" class="btn btn-danger">Delete</a>
							</td>
						</tr>
						</form>
						@endforeach
						@endif
						@if (session('message_success'))
					    	<h2 class="alert-success text-center">{{ session('message_success') }}</h2>
					    @endif
					</tbody>
				</table>
			</div>
		</div>
	</section> <!--/#cart_items-->
	@if (!empty(session('cart')))
	<section id="do_action">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="total_area">
						<ul>
							<li>SubTotal: <span>{{ number_format($subtotal,'0','','.') }}</span></li>
						</ul>
						<form action="{{ route('checkout') }} " method="post">
							@csrf
						@if (empty(session()->has('id')))
						<div class="form-group col-md-12">
							<label for="email">Email</label>
							<input required type="email" class="form-control" name="cus_email" id="email" placeholder="Email Address">
							<p class="alert-danger">@error('cus_email') {{ $message }} @enderror</p>
						  </div>
						    <div class="form-group col-md-6">
						      <label for="inputName">Full Name</label>
						      <input required type="text" class="form-control" name="cus_name" id="inputName" placeholder="Full Name">
						      <p class="alert-danger">@error('cus_name') {{ $message }} @enderror</p>
						    </div>
						    <div class="form-group col-md-6">
						      <label for="inputPhone">Phone</label>
						      <input required type="text" class="form-control" name="cus_phone" id="inputPhone" placeholder="Phone Number">
						      <p class="alert-danger">@error('cus_phone') {{ $message }} @enderror</p>
						    </div>
						  <div class="form-group col-md-6">
						    <label for="inputAddress">Address</label>
						    <input required type="text" class="form-control" name="cus_address" id="inputAddress" placeholder="Commune-District-City">
						    <p class="alert-danger">@error('cus_address') {{ $message }} @enderror</p>
						  </div>
						    <div class="form-group col-md-6">
						      <label for="Note">Note(Optional)</label>
						      <input type="text" name="note" class="form-control" id="Note">
						    </div>
						@else
							<div class="form-group col-md-12">
						      <label for="Note">Note(Optional)</label>
						      <input type="text" name="note" class="form-control" id="Note">
						    </div>
						@endif
						
						<button type="submit" class="btn btn-block btn-default check_out" href="">Check Out</button>
							
						
						  </form>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#do_action-->
	@endif
	@include('clients.footer')
	</footer><!--/Footer-->
    <script src="{{asset('clients/js/jquery.js')}}"></script>
	<script src="{{asset('clients/js/bootstrap.min.js')}}"></script>
	<script src="{{asset('clients/js/jquery.scrollUp.min.js')}}"></script>
    <script src="{{asset('clients/js/jquery.prettyPhoto.js')}}"></script>
    <script src="{{asset('clients/js/main.js')}}"></script>	

    
{{--     <script>
    	$(function(){
    		$(document).on('click', '.check_out', function(event) {
    			event.preventDefault();
    			console.log($('#inputName').val());
    			$.ajax({
    				url: $(this).data('url'),
    				type: 'get',
    				dataType: 'json',
    				data: {
    					cus_name: $('#inputName').val(),
    					cus_phone: $('#inputPhone').val(),
    					cus_address: $('#inputAddress').val(),
    					note: $('#Note').val(),

    			},
    			})
    			.done(function() {
    				console.log("success");
    			})
    			.fail(function() {
    				console.log("error");
    			})
    			.always(function() {
    				console.log("complete");
    			});
    			
    		});
    	});
    </script> --}}	
</body>
</html>
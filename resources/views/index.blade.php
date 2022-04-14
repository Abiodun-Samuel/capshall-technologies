<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Capshall Technologies</title>
    <link rel="stylesheet" href="{{ url('assets/css/style.css') }}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
</head>

<body class="antialiased">
    <section id="hero">
        <div class="container-fluid">
            <div class="row justify-content-center align-items-center pt-5">
                <div class="col-lg-8 mt-1 text-center">
                    <h1>Capshall Project</h1>
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maxime hic, libero veniam dolor quaerat
                        laboriosam recusandae. Deserunt quas dolores aperiam.</p>

                    <p class="mt-5"> <a class="btn btn-primary" href="{{ route('cart') }}">Cart</a></p>
                    @if (session('status'))
                        <div class="alert alert-success alert-dismissible fade show mt-3">
                            <p class="my-0 py-0 text-dark"> {{ session('status') }} </p>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </section>

    <section id="menu my-5">
        <div class="container-fluid my-3">
            <h2 class="text-primary fony-weight-bold h5">Menu</h2>
            <div class="row">
                @foreach ($menus as $menu)
                    <div class="col-lg-3 col-md-4 col-sm-6 my-3">
                        <div class="card shadow-sm border-0">
                            <img src="{{ asset('images/menu/' . $menu->image) }}" class="card-img-top"
                                alt="{{ $menu->title }}" height="200" width="auto">
                            <div class="card-body p-2">
                                <h5 class="card-title">{{ $menu->title }}</h5>
                                <p class="card-text">&#8358; {{ $menu->price }}</p>

                                <form method="POST" action="{{ route('cart.add') }}" enctype="multipart/form-data">
                                    @csrf
                                    <input type="hidden" value="{{ $menu->id }}" name="id">
                                    <input type="hidden" value="{{ $menu->title }}" name="title">
                                    <input type="hidden" value="{{ $menu->price }}" name="price">
                                    <input type="hidden" value="{{ $menu->image }}" name="image">
                                    <button type="submit" class="btn btn-primary">Select</button>
                                </form>
                            </div>
                        </div>
                    </div>
                @endforeach

            </div>
        </div>
    </section>





    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous">
    </script>
    {{-- <script src="{{ asset('assets/js/script.js') }}"></script> --}}

</body>

</html>

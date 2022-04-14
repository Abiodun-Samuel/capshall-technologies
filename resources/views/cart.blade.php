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
                    <p class="mt-5"> <a class="btn btn-primary" href="{{ route('home') }}">Home</a></p>
                </div>
            </div>
        </div>
    </section>

    <section id="menu my-5">
        <div class="container-fluid my-3">
            <h2 class="text-primary fony-weight-bold h5">Cart</h2>
            <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive">
                        <table class="table">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">S/N</th>
                                    <th scope="col">Menu Image</th>
                                    <th scope="col">Menu Title</th>
                                    <th scope="col">Menu Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                @if (count($carts) > 0)
                                    @foreach ($carts as $key => $cart)
                                        <tr>
                                            <th scope="row">{{ $key + 1 }}</th>
                                            <td> <img src="{{ asset('images/menu/' . $cart->menu_image) }}"
                                                    class="" alt="{{ $cart->menu_title }}" height="50"
                                                    width="auto"></td>
                                            <td>{{ $cart->menu_title }}</td>
                                            <td>{{ $cart->menu_price }}</td>
                                        </tr>
                                    @endforeach
                                @else
                                    <div class="alert alert-success alert-dismissible fade show mt-3">
                                        <p class="my-0 py-0 text-dark"> Cart is empty </p>
                                    </div>
                                @endif

                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous">
    </script>
</body>

</html>

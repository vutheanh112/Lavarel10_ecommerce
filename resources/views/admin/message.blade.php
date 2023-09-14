@if(Session::has('error'))
<div class=" no-gutters ">
    <div class="">
        <div class="alert alert-danger fade show" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="True">&times;</span>
            </button>
            <h4 class="alert-heading">Error</h4>
            <p>{{Session::get('error')}}</p>
        </div>
    </div>
</div>
@endif

@if(Session::has('success'))
<div class="alert alert-success fade show" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="True">&times;</span>
    </button>
    <h4 class="alert-heading">success!</h4>
    <p>{{Session::get('success')}}</p>
</div>
@endif
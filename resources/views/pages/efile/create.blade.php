@if (count($errors) > 0)
< <div class="form-group">

    <div class="alert alert-danger">

        <ul>

            @foreach ($errors->all() as $error)

            <li>{{ $error }}</li>

            @endforeach

        </ul>

    </div>
</>
@endif

@if(session('success'))
<div class="form-group">
    <div class="alert alert-success">

        {{ session('success') }}

    </div>
</div>
@endif
<div class="form-group">
    <label class="col-lg-2 control-label">แนบไฟล์</label>
    <div class="col-lg-10 input-group hdtuto lst increment">
        <input type="file" name="filenames[]" class="form-control">
        <div class="input-group-btn">
            <button class="btn btn-success" type="button"><i class="fldemo glyphicon glyphicon-plus"></i>Add</button>
        </div>
    </div>
</div>

<div class="clone hide">
    <div class="form-group">
        <label class="col-lg-2 control-label">&nbsp;</label>
        <div class="col-lg-10 hdtuto lst input-group" style="margin-top:5px">
            <input type="file" name="filenames[]" class="form-control">
            <div class="input-group-btn">
                <button class="btn btn-danger" type="button"><i class="fldemo glyphicon glyphicon-remove"></i>
                    Remove</button>
            </div>
        </div>
    </div>
</div
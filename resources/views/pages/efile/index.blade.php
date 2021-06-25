@extends('layouts.default')
<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade"
    style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title">Send Files</h4>

            </div>
            <div class="modal-body">
                <form role="form" class="file-uploader" enctype="multipart/form-data" method="post"
                    action="{{url('file')}}">
                    @csrf
                    <div class="form-group">
                        <label class="col-lg-2 control-label">ผู้รับ</label>
                        <div class="col-lg-10">

                            <input type="text" class="form-control" name="toPerson" id="toPerson" value="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label">หัวข้อ</label>
                        <div class="col-lg-10">
                            <input type="text" placeholder="" name="topic" id="topic" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label">รายละเอียด</label>
                        <div class="col-lg-10">
                            <textarea rows="10" cols="30" class="form-control" id="msg" name="msg"></textarea>
                        </div>
                    </div>
                    @include('pages.efile.create')
                    <BR>
                    <div class="form-group">
                        <div class="col-lg-2">&nbsp;</div>
                        <div class="col-lg-10">
                            <span class="btn green fileinput-button">
                                <i class="fa fa-plus fa fa-white"></i>
                                <button class="btn btn-send" type="submit">Send</button>
                            </span>

                        </div>
                    </div>
                    <input type="hidden" name="fromPerson" id="fromPerson" value="{{ Session::get('uID') }}" />
                </form>

            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

@section('content')

<div class="container-fluid">
    <div class="inbox-head">

        <h3>Inbox</h3>
        <form action="#" class="pull-right position">
            <div class="input-append">
                <input type="text" class="sr-input" placeholder="Search Mail">
                <button class="btn sr-btn" type="button"><i class="fa fa-search"></i></button>
            </div>
        </form>

    </div>

    <aside class="lg-side">
        <div class="inbox-body">
            <div class="mail-option">
                <div class="chk-all">
                    <input type="checkbox" class="mail-checkbox mail-group-checkbox">
                    <div class="btn-group">
                        <a data-toggle="dropdown" href="#" class="btn mini all" aria-expanded="false">
                            All
                            <i class="fa fa-angle-down "></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#"> None</a></li>
                            <li><a href="#"> Read</a></li>
                            <li><a href="#"> Unread</a></li>
                        </ul>
                    </div>
                </div>

                <div class="btn-group">
                    <a data-original-title="Refresh" data-placement="top" data-toggle="dropdown" href="#"
                        class="btn mini tooltips">
                        <i class=" fa fa-refresh"></i>
                    </a>
                </div>
                <div class="btn-group hidden-phone">
                    <a data-toggle="dropdown" href="#" class="btn" aria-expanded="false">
                        More
                        <i class="fa fa-angle-down "></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li>
                        <li><a href="#"><i class="fa fa-ban"></i> Spam</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                </div>
                <div class="btn-group">
                    <a data-toggle="dropdown" href="#" class="btn">
                        Move to
                        <i class="fa fa-angle-down "></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li>
                        <li><a href="#"><i class="fa fa-ban"></i> Spam</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                </div>

                <ul class="unstyled inbox-pagination">
                    <li><span>1-50 of 234</span></li>
                    <li>
                        <a class="np-btn" href="#"><i class="fa fa-angle-left  pagination-left"></i></a>
                    </li>
                    <li>
                        <a class="np-btn" href="#"><i class="fa fa-angle-right pagination-right"></i></a>
                    </li>
                </ul>
            </div>

            <table class="table table-inbox table-hover">
                <tbody>
                    @if($filesME)
                    @foreach($filesME as $mail)
                    <tr class="unread">
                        <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                        </td>
                        <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                        <td class="view-message  dont-show">{{ $mail->fromPerson }}</td>
                        <td class="view-message ">{{$mail->topic}}</td>
                        <td class="view-message  inbox-small-cells">

                            <i class="fa fa-paperclip"></i>
                        </td>
                        <td class="view-message  text-right">{{$mail->created_at}}</td>
                    </tr>
                    @endforeach
                    @else
                    <tr class="unread">
                        <td colspan="6" class="view-message ">No Mail</td>
                    </tr>
                    @endif
                </tbody>
            </table>

        </div>
        <div class="mail-option">
            <ul class="unstyled inbox-pagination">
                <li><span>1-50 of 234</span></li>
                <li>
                    <a class="np-btn" href="#"><i class="fa fa-angle-left  pagination-left"></i></a>
                </li>
                <li>
                    <a class="np-btn" href="#"><i class="fa fa-angle-right pagination-right"></i></a>
                </li>
            </ul>
        </div>
    </aside>
</div>
@stop
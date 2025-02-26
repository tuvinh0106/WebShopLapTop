@extends('LayoutUser')
@section('title','Thông Tin Tài Khoản')
@section('content')
    @include('User.inc.nav')
    <style>
        .divCoupon {
            position: relative;
            text-align: center;
            color: white;
          }
        .centered {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
          }
    </style>
    @if (isset($giamgia))
    <div class="col-12 mt-3 mb-3 divCoupon">
        <img src="{{ asset('user/images/giamgia.jpg') }}" alt="" style=" width: 100%; height: 82px; ">
        <div class="centered">Quà Tặng Đặt Biệt: Mã giảm giá - "{{ $giamgia->magiamgia }}" - trị giá {{ number_format($giamgia->sotiengiam) }}<sup>đ</sup></div>
    </div>
    @endif
    <div class="page-section mt-10 mb-60">
        <div class="container">
            <div class="row mt-20">
                <div class="col-lg-12">
                    <!-- My Account Page Start -->
                    <div class="myaccount-page-wrapper">
                        <!-- My Account Tab Menu Start -->
                        <div class="row">
                            <div class="col-lg-3 col-md-4">
                                <div class="myaccount-tab-menu nav" role="tablist">
                                    @php
                                        if (isset($chiTietDH)) {
                                            $active = 0;
                                        } else {
                                            $active = 1;
                                        }
                                    @endphp
                                    <a href="#tongquantaikhoan" class="{{ $active == 0 ? '' : 'active show' }}"
                                        data-toggle="tab"><i class="fa fa-sliders"></i>
                                        Tổng Quan</a>
                                    <a href="{{ $active == 0 ? route('thongtintaikhoan') : '#account-order' }}"
                                        class="{{ $active == 0 ? 'active show' : '' }}"
                                        data-toggle="{{ $active == 0 ? '' : 'tab' }}"><i class="fa fa-shopping-cart"></i>
                                        Đơn Hàng</a>
                                    <a href="#account-info" data-toggle="tab"><i class="fa fa-user"></i>
                                        Tài Khoản</a>
                                    <a href="#address-edit" data-toggle="tab" class=""><i
                                            class="fa fa-address-card"></i>
                                        {{ Session::get('dangnhap')['loainguoidung'] == 2 ? 'Nhân Viên' : 'Khách Hàng' }}</a>
                                    <a href="{{ route('dangxuat') }}"><i class="fa fa-sign-out"></i> Đăng Xuất</a>

                                </div>
                            </div>
                            <!-- My Account Tab Menu End -->
                            <!-- My Account Tab Content Start -->
                            <div class="col-lg-9 col-md-8" style="max-height: fit-content;">
                                <div class="tab-content" id="myaccountContent">
                                    <div class="tab-pane fade {{ $active == 0 ? '' : 'active show' }}" id="tongquantaikhoan"
                                        role="tabpanel">
                                        <div class="card">
                                            <div class="card-header">
                                                <h3 class="mb-0">Xin Chào,
                                                    {{ ucfirst(Session::get('dangnhap')['hoten']) }}!</h3>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    Từ trang tổng quan tài khoản của bạn. bạn có thể dễ dàng kiểm tra và xem
                                                    các thông tin tài khoản của mình,
                                                    quản lý địa chỉ giao hàng và thanh toán của bạn và chỉnh sửa mật khẩu và
                                                    chi tiết tài khoản của bạn.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade {{ $active == 0 ? 'active show' : '' }}" id="account-order"
                                        role="tabpanel">
                                        <div class="card">
                                            <div class="card-header" style="background: white;border-bottom: none;">
                                                <h3 class="mb-0"
                                                    style="border-bottom: 1px dashed #ccc; padding-bottom: 10px; ">
                                                    @if (isset($chiTietDH))
                                                        Thông Tin PX{{ $id }}
                                                        <a href="{{ route('thongtintaikhoan') }}" style="float: right;padding: 4px;font-size: 14px;"
                                                        class="btn btn-dark mb-2"><i class="fa fa-chevron-left"></i> Quay Lại</a>
                                                    @else
                                                        Danh Sách
                                                    @endif

                                                </h3>
                                            </div>
                                            <div class="card-body">
                                                <div class="table-content table-responsive">
                                                    @if (isset($chiTietDH))
                                                        <div class="row mb-15">
                                                            <div class="col-6">
                                                                <p class="mb-0">Họ tên: {{ $thongTinDH->hotennguoinhan }}
                                                                </p>
                                                                <p class="mb-0">Số điện thoại:
                                                                    {{ $thongTinDH->sodienthoainguoinhan }}</p>
                                                                <p class="mb-0">Địa chỉ:
                                                                    {{ $thongTinDH->diachinguoinhan }}</p>
                                                            </div>
                                                            <div class="col-6">
                                                                <p class="mb-0">Ngày đặt: {{ $thongTinDH->ngaytao }}
                                                                </p>
                                                                <p class="mb-0">Tình trạng giao hàng:
                                                                    @if ($thongTinDH->tinhtranggiaohang == 0)
                                                                        Đã hủy
                                                                    @elseif ($thongTinDH->tinhtranggiaohang == 1)
                                                                        Chờ xác nhận
                                                                    @elseif ($thongTinDH->tinhtranggiaohang == 2)
                                                                        Đang chuẩn bị hàng
                                                                    @elseif ($thongTinDH->tinhtranggiaohang == 3)
                                                                        Đang giao hàng
                                                                    @else
                                                                        Đã giao thành công
                                                                    @endif
                                                                </p>
                                                                <p class="mb-0 pr-1 cantrai"
                                                                    style="line-height: 18px!important;">
                                                                    Ghi chú: {{ $thongTinDH->ghichu }}
                                                                </p>
                                                            </div>
                                                        </div>
                                                    @endif
                                                    <table class="table">
                                                        @if (!isset($chiTietDH))
                                                            <thead>
                                                                <tr>
                                                                    <th class="li-product-remove">Mã</th>
                                                                    <th class="li-product-thumbnail">Thời Gian</th>
                                                                    <th class="cart-product-name">Tên người nhận</th>
                                                                    <th class="li-product-price">Tình trạng giao hàng</th>
                                                                    <th class="li-product-add-cart">Tổng tiền</th>
                                                                    <th class="li-product-add-cart">Thao tác</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                @foreach ($donhang as $dh)
                                                                    <tr>
                                                                        <td>PX{{ $dh->maphieuxuat }}</td>
                                                                        <td>{{ $dh->ngaytao }}</td>
                                                                        <td>{{ $dh->hotennguoinhan }}</td>
                                                                        <td>
                                                                            @if ($dh->tinhtranggiaohang == 0)
                                                                                Đã hủy
                                                                            @elseif ($dh->tinhtranggiaohang == 1)
                                                                                Chờ xác nhận
                                                                            @elseif ($dh->tinhtranggiaohang == 2)
                                                                                Đang chuẩn bị hàng
                                                                            @elseif ($dh->tinhtranggiaohang == 3)
                                                                                Đang giao hàng
                                                                            @else
                                                                                Đã giao thành công
                                                                            @endif
                                                                        </td>
                                                                        <td>{{ number_format($dh->tongtien) }}</td>
                                                                        <td>
                                                                            <a href="{{ route('chitietdh', $dh->maphieuxuat) }}"
                                                                                class="btn btn-dark"><i
                                                                                    class="fa fa-eye"></i>
                                                                                Xem</a>
                                                                        </td>
                                                                    </tr>
                                                                @endforeach
                                                            </tbody>
                                                        @else
                                                            <thead>
                                                                <tr>
                                                                    <th class="li-product-remove">STT</th>
                                                                    <th class="li-product-thumbnail">Bảo hành</th>
                                                                    <th class="cart-product-name">Hình ảnh</th>
                                                                    <th class="li-product-price">Sản phẩm</th>
                                                                    <th class="li-product-add-cart">Số lượng</th>
                                                                    <th class="li-product-add-cart">Đơn giá</th>
                                                                    <th class="li-product-add-cart">Thành tiền</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                @foreach ($chiTietDH as $key => $ct)
                                                                    @php
                                                                        $hinh = explode('|', $ct->j_chitietphieu_sp->j_hinh->hinh);
                                                                    @endphp
                                                                    <tr>
                                                                        <td>{{ $key + 1 }}</td>
                                                                        <td>{{ $ct->baohanh }}</td>
                                                                        <td><img src="{{ asset('uploads/sanpham/' . $hinh[0]) }}"
                                                                                width="80px" height="80px"
                                                                                class="img-thumbnail mt-2 mb-2" /></td>
                                                                        <td>{{ $ct->j_chitietphieu_sp->tensanpham }}</td>
                                                                        <td>{{ $ct->soluong }}</td>
                                                                        <td>{{ number_format($ct->dongia) }}</td>
                                                                        <td>{{ number_format($ct->soluong * $ct->dongia) }}
                                                                        </td>
                                                                    </tr>
                                                                @endforeach
                                                            </tbody>
                                                            <tfoot>
                                                                <tr>
                                                                    <td class="canTrai" colspan="6">Tổng Cộng</td>
                                                                    <td>{{ number_format($ct->chitietphieuToPX->tongtien) }}
                                                                    </td>
                                                                </tr>
                                                                @if($ct->chitietphieuToPX->magiamgia != null)
                                                                <tr>
                                                                    <td class="canTrai" colspan="6">Giảm ({{ $ct->chitietphieuToPX->j_donhangTogiamgia->magiamgia }}):</td>
                                                                    <td>
                                                                        {{ number_format($ct->chitietphieuToPX->j_donhangTogiamgia->sotiengiam) }}
                                                                    </td>
                                                                </tr>
                                                                @endif
                                                                <tr>
                                                                    <td class="canTrai" colspan="6">Đã thanh toán:</td>
                                                                    <td>
                                                                        @if ($ct->chitietphieuToPX->congno == 0)
                                                                            {{ number_format($ct->chitietphieuToPX->tongtien) }}
                                                                        @else
                                                                           
                                                                                {{ number_format($ct->chitietphieuToPX->tongtien - $ct->chitietphieuToPX->congno) }}
                                                                            
                                                                            
                                                                        @endif
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="canTrai" colspan="6">Còn lại:</td>
                                                                    <td>
                                                                        {{ $ct->chitietphieuToPX->congno > 0 ? '-' . number_format($ct->chitietphieuToPX->congno) : 0 }}
                                                                    </td>
                                                                </tr>
                                                            </tfoot>
                                                        @endif
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single Tab Content Start -->
                                    <div class="tab-pane fade" id="account-info" role="tabpanel">
                                        <div class="card">
                                            <div class="card-header">
                                                <h4 class="mb-0">Thông Tin Tài Khoản</h4>
                                            </div>
                                            <div class="card-body">
                                                <form action="{{ route('thongtintaikhoan') }}" method="POST">
                                                    @csrf
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="single-input-item">
                                                                <label>Email <span class="required">*</span>
                                                                </label>
                                                                <input class="mb-0" name="email"
                                                                    value="{{ Session::get('dangnhap')['email'] }}"
                                                                    pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
                                                                    title="(Gồm các ký tự chữ thường hoặc số, có chứa @, có chứa dấu . sau ký tự @, tối đa 150 ký tự)"
                                                                    type="email" required="" disabled="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <fieldset>
                                                        <legend>Đổi mật khẩu</legend>
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label>Mật khẩu cũ <span class="required">*</span>
                                                                    </label>
                                                                    <input class="mb-0" name="matKhauCu" id="matKhauCu"
                                                                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,32}"
                                                                        title="(Gồm các ký tự chữ thường, in hoa hoặc số, có chứa tối thiểu 1 ký tự thường, 1 ký tự in hoa và 1 ký tự số, từ 8-32 ký tự)"
                                                                        type="password" required="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label>Mật khẩu mới <span class="required">*</span>
                                                                    </label>
                                                                    <input class="mb-0" name="matKhauMoi"
                                                                        id="matKhauMoi"
                                                                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,32}"
                                                                        title="(Gồm các ký tự chữ thường, in hoa hoặc số, có chứa tối thiểu 1 ký tự thường, 1 ký tự in hoa và 1 ký tự số, từ 8-32 ký tự)"
                                                                        type="password" required="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label>Nhập lại mật khẩu mới <span
                                                                            class="required">*</span>
                                                                    </label>
                                                                    <input class="mb-0" name="nhapLaiMatKhauMoi"
                                                                        id="nhapLaiMatKhauMoi"
                                                                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,32}"
                                                                        title="(Gồm các ký tự chữ thường, in hoa hoặc số, có chứa tối thiểu 1 ký tự thường, 1 ký tự in hoa và 1 ký tự số, từ 8-32 ký tự)"
                                                                        type="password" required="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row mt-10">
                                                            <div class="col-12">
                                                                <div class="single-input-item">
                                                                    <button type="submit" id="doiMatKhau"
                                                                        name="doiMatKhau" value="doiMatKhau"
                                                                        class="register-button mt-0">Thay
                                                                        đổi</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single Tab Content End -->
                                    <!-- Single Tab Content Start -->
                                    <div class="tab-pane fade" id="address-edit" role="tabpanel">
                                        <div class="card">
                                            <div class="card-header">
                                                <h4 class="mb-0">Thông Tin
                                                    {{ Session::get('dangnhap')['loainguoidung'] == 2 ? 'Nhân Viên' : 'Khách Hàng' }}
                                                </h4>
                                            </div>
                                            <div class="card-body">
                                                <form action="{{ route('thongtintaikhoan') }}" method="POST">
                                                    @csrf
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="single-input-item">
                                                                <label>Họ tên <span class="required">*</span>
                                                                </label>
                                                                <input class="mb-0"
                                                                    title="(Gồm các ký tự là chữ thường hoặc in hoa, có dấu hoặc không dấu, tối đa 50 ký tự)"
                                                                    name="hoTen"
                                                                    value="{{ ucfirst(Session::get('dangnhap')['hoten']) }}"
                                                                    pattern="[a-zỳọáầảấờễàạằệếýộậốũứĩõúữịỗìềểẩớặòùồợãụủíỹắẫựỉỏừỷởóéửỵẳẹèẽổẵẻỡơôưăêâđA-ZỲỌÁẦẢẤỜỄÀẠẰỆẾÝỘẬỐŨỨĨÕÚỮỊỖÌỀỂẨỚẶÒÙỒỢÃỤỦÍỸẮẪỰỈỎỪỶỞÓÉỬỴẲẸÈẼỔẴẺỠƠÔƯĂÊÂĐ ]{3,50}"
                                                                    type="text" required="">
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="single-input-item">
                                                                <label>Số điện thoại <span class="required">*</span>
                                                                </label>
                                                                <input class="mb-0"
                                                                    value="{{ Session::get('dangnhap')['sodienthoai'] }}"
                                                                    title="(Gồm các ký tự là số, có bắt đầu là số 0, tối đa 9 chữ số - không bao gồm ký tự đầu là 0)"
                                                                    name="soDienThoai" pattern="^[0]\d{9}$"
                                                                    type="text" required="">
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="single-input-item">
                                                                <label>Địa chỉ <span class="required">*</span>
                                                                </label>
                                                                <input class="mb-0"
                                                                    value="{{ Session::get('dangnhap')['diachi'] }}"
                                                                    title="(Gồm các ký tự là chữ thường, in hoa, số hoặc các ký tự như ,.-/ và tối đa 255 ký tự)"
                                                                    name="diaChi"
                                                                    pattern="[a-zỳọáầảấờễàạằệếýộậốũứĩõúữịỗìềểẩớặòùồợãụủíỹắẫựỉỏừỷởóéửỵẳẹèẽổẵẻỡơôưăêâđA-ZỲỌÁẦẢẤỜỄÀẠẰỆẾÝỘẬỐŨỨĨÕÚỮỊỖÌỀỂẨỚẶÒÙỒỢÃỤỦÍỸẮẪỰỈỎỪỶỞÓÉỬỴẲẸÈẼỔẴẺỠƠÔƯĂÊÂĐ0-9 -/,.]{3,255}"
                                                                    type="text" required="">
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="row mt-10">
                                                        <div class="col-12">
                                                            <div class="single-input-item">
                                                                <button type="submit" id="doiThongTin"
                                                                    name="doiThongTin" value="doiThongTin"
                                                                    class="register-button mt-0">Thay
                                                                    đổi</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single Tab Content End -->
                                </div>
                            </div> <!-- My Account Tab Content End -->
                        </div>
                    </div> <!-- My Account Page End -->
                </div>
            </div>
        </div>
    </div>
    <style>
        .canTrai {
            text-align: left;
            padding-left: 38% !important;
        }
    </style>
@endsection

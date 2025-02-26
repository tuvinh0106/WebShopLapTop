@extends('LayoutUser')
@section('title','Chi Tiết Sản Phẩm')
@section('content')
    @include('User.inc.nav')
    @php
        $hinh = explode('|', $chitiet->j_hinh->hinh);
    @endphp
    <!-- content-wraper start -->
    <div class="content-wraper">
        <div class="container">
            <div class="row single-product-area">
                <div class="col-lg-5 col-md-6">
                    <!-- Product Details Left -->
                    <div class="product-details-left">
                        <div class="product-details-images slider-navigation-1">
                            @foreach ($hinh as $h)
                                <div class="lg-image">
                                    <a class="popup-img venobox vbox-item" href="{{ asset('uploads/sanpham/' . $h) }}"
                                        data-gall="myGallery">
                                        <img src="{{ asset('uploads/sanpham/' . $h) }}" alt="product image">
                                    </a>
                                </div>
                            @endforeach
                        </div>
                        <div class="product-details-thumbs slider-thumbs-1">
                            @foreach ($hinh as $h)
                                <div class="sm-image"><img src="{{ asset('uploads/sanpham/' . $h) }}"
                                        alt="product image thumb"></div>
                            @endforeach
                        </div>
                    </div>
                    <!-- Product Details Left -->
                </div>

                <div class="col-lg-7 col-md-6">
                    <div class="product-details-view-content pt-60">
                        <div class="product-info">
                            <h2>{{ $chitiet->tensanpham }}</h2>
                            <span class="product-details-ref">Thương hiệu: {{ $chitiet->j_nsx->tenhang }} &nbsp; | &nbsp;
                                SKU:
                                SP{{ $chitiet->masanpham }}</span>
                            <div class="price-box pt-20">
                                @if ($chitiet->giaban > 0)
                                    @if ($chitiet->giakhuyenmai > 0)
                                        <span
                                            class="new-price new-price-2">{{ number_format($chitiet->giakhuyenmai) }}<sup>đ</sup></span>
                                        <span class="old-price"
                                            style="text-decoration: line-through;">{{ number_format($chitiet->giaban) }}<sup>đ</sup></span>
                                    @else
                                        <span
                                            class="new-price new-price-2">{{ number_format($chitiet->giaban) }}<sup>đ</sup></span>
                                    @endif
                                @else
                                    <span class="new-price new-price-2">Liên Hệ</span>
                                @endif
                            </div>

                            @if ($quatang != null)
                                <div class="product-desc" style="border-bottom: none !important;">
                                    <b>Bạn sẽ nhận được: </b>
                                    @foreach ($quatang as $qua)
                                        @php
                                            $hinhquatang = explode('|', $qua->j_hinh->hinh);
                                        @endphp
                                        <div class="div-gift col-6">
                                            <div class="chil-gift">
                                                <img src="{{ asset('uploads/sanpham/' . $hinhquatang[0]) }}"
                                                    alt="product image gift" width="32px" height="32px">
                                                <span class="chil-gift-qty">x1</span>
                                                <span class="chil-gift-title">{{ $qua->tensanpham }}(Quà tặng)</span>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            @endif
                            <div class="single-add-to-cart" style="display: {{ $chitiet->giaban > 0 ? '' : 'none' }};">
                                <form action="#" class="cart-quantity">
                                    <div class="quantity">
                                        <label>Số lượng</label>
                                        <div class="cart-plus-minus">
                                            <input class="cart-plus-minus-box soLuongGh{{ $chitiet->masanpham }}"
                                                value="1" type="text">
                                            <div class="dec qtybutton"><i class="fa fa-angle-down"></i></div>
                                            <div class="inc qtybutton"><i class="fa fa-angle-up"></i></div>
                                        </div>
                                    </div>
                                    <button class="add-to-cart clickThemGh" data-id_gh="{{ $chitiet->masanpham }}"
                                        type="button">Thêm Gi<b>ỏ</b> Hàng</button>
                                </form>
                            </div>
                            <div class="product-additional-info pt-25">
                                <a class="wishlist-btn clickThemYt" href="#"
                                    data-id_yeuThich="{{ $chitiet->masanpham }}"><i class="fa fa-heart-o"></i>Yêu Thích</a>

                            </div>
                            <div class="block-reassurance">
                                <ul>
                                    <li>
                                        <div class="reassurance-item">
                                            <div class="reassurance-icon">
                                                <i class="fa fa-credit-card-alt"></i>
                                            </div>
                                            <p>Thanh toán đơn giản</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="reassurance-item">
                                            <div class="reassurance-icon">
                                                <i class="fa fa-truck"></i>
                                            </div>
                                            <p>Miễn phí giao hàng cho đơn hàng từ 800K</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="reassurance-item">
                                            <div class="reassurance-icon">
                                                <i class="fa fa-exchange"></i>
                                            </div>
                                            <p>Đổi trả trong vòng 10 ngày</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- content-wraper end -->
    <!-- Begin Product Area -->
    <div class="product-area pt-35">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="li-product-tab">
                        <ul class="nav li-product-menu">
                            <li><a class="active" data-toggle="tab" href="#description"><span>Thông Tin</span></a></li>
                            <li><a data-toggle="tab" href="#reviews"><span>Bình Luận</span></a></li>
                        </ul>
                    </div>
                    <!-- Begin Lis Tab Menu Content Area -->
                </div>
            </div>
            <div class="tab-content">
                <div id="description" class="tab-pane active show" role="tabpanel">
                    <div class="product-description">
                        @if ($chitiet->malaptop != null)
                            <div class="col-6">
                                <table class="table table-striped">
                                    <tbody>

                                        <tr>
                                            <td>Thương hiệu</td>
                                            <td>{{ $chitiet->j_nsx->tenhang }}</td>
                                        </tr>
                                        <tr>
                                            <td>Bảo hành</td>
                                            <td>{{ $chitiet->baohanh }}</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"
                                                style="font-weight: bold;text-align: center;text-transform: uppercase">Thông
                                                tin chung</td>
                                        </tr>
                                        <tr>
                                            <td>CPU</td>
                                            <td>{{ ucfirst($chitiet->j_laptop->cpu) }}</td>
                                        </tr>
                                        <tr>
                                            <td>RAM</td>
                                            <td>{{ $chitiet->j_laptop->ram }}GB</td>
                                        </tr>
                                        <tr>
                                            <td>Chip đồ họa</td>
                                            <td>
                                                @if ($chitiet->j_laptop->carddohoa == 0)
                                                    Onboard
                                                @elseif ($chitiet->j_laptop->carddohoa == 1)
                                                    Nvidia
                                                @else
                                                    Amd
                                                @endif
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Màn hình</td>
                                            <td>{{ $chitiet->j_laptop->manhinh }}</td>
                                        </tr>
                                        <tr>
                                            <td>Lưu trữ</td>
                                            <td>{{ $chitiet->j_laptop->ocung }}GB</td>
                                        </tr>
                                        <tr>
                                            <td>Nhu cầu</td>
                                            <td>{{ $chitiet->j_laptop->nhucau }}</td>
                                        </tr>
                                        <tr>
                                            <td>Tình trạng</td>
                                            <td>{{ $chitiet->j_laptop->tinhtrang == 0 ? 'Mới' : 'Cũ' }}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        @endif
                        <span>{!! $chitiet->mota !!}</span>
                    </div>
                </div>
                <div id="reviews" class="tab-pane" role="tabpanel">
                    <div class="product-reviews">
                        <div class="product-details-comment-block">
                            <div class="comment-author-infos pt-8">
                                <div class="fb-comments" data-href="{{ request()->url() }}" data-width="100%"
                                    data-numposts="5"></div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Product Area End Here -->
    <!-- Begin Lis Laptop Product Area -->
    <section class="product-area li-laptop-product pt-30 pb-50">
        <div class="container">
            <div class="row">
                <!-- Begin Lis Section Area -->
                <div class="col-lg-12">
                    <div class="li-section-title">
                        <h2>
                            <span>Sản Phẩm Tương Tự</span>
                        </h2>
                    </div>
                    <div class="row">
                        <div class="product-active owl-carousel">
                            @foreach ($sanphamtuongtu as $sp)
                                @php
                                    $hinh = explode('|', $sp->j_hinh->hinh);
                                @endphp
                                <div class="col-lg-12">
                                    <!-- single-product-wrap start -->
                                    <div class="single-product-wrap">
                                        <div class="product-image">
                                            <a href="{{ route('chitiet', $sp->masanpham) }}">
                                                <img src="{{ asset('uploads/sanpham/' . $hinh[0]) }}"
                                                    alt="Li's Product Image">
                                            </a>
                                            @if (isset($sp->malaptop))
                                                <span
                                                    class="{{ $sp->j_laptop->tinhtrang == 0 ? 'sticker' : 'sticker-old' }}">
                                                    {{ $sp->j_laptop->tinhtrang == 0 ? 'Mới' : 'Cũ' }}
                                                </span>
                                            @endif
                                        </div>
                                        <div class="product_desc">
                                            <div class="product_desc_info">
                                                <div class="product-review">
                                                    <h5 class="manufacturer">
                                                        <a
                                                            href="#">{{ isset($sp->malaptop) ? 'Laptop' : 'Phụ Kiện' }}</a>
                                                    </h5>
                                                    <div class="rating-box">
                                                        <h5 class="manufacturer">
                                                            <a href="#">SP{{ $sp->masanpham }}</a>
                                                        </h5>
                                                    </div>
                                                </div>
                                                <h4><a class="product_name"
                                                        href="{{ route('chitiet', $sp->masanpham) }}">{{ $sp->tensanpham }}</a>
                                                </h4>
                                                <div class="price-box">
                                                    @if ($sp->giaban > 0)
                                                        @if ($sp->giakhuyenmai > 0)
                                                            <span
                                                                class="new-price new-price-2">{{ number_format($sp->giakhuyenmai) }}</span>
                                                            <span
                                                                class="old-price">{{ number_format($sp->giaban) }}</span>
                                                        @else
                                                            <span
                                                                class="new-price new-price-2">{{ number_format($sp->giaban) }}</span>
                                                        @endif
                                                    @else
                                                        <span class="new-price new-price-2">Liên Hệ</span>
                                                    @endif
                                                </div>
                                            </div>
                                            <div class="add-actions">
                                                <ul class="add-actions-link">
                                                    <input type="hidden" class="soLuongGh{{ $sp->masanpham }}"
                                                        value="1">
                                                    <li class="add-cart active"><a class="clickThemGh"
                                                            data-id_gh="{{ $sp->masanpham }}" href="#">Thêm Gi<b>ỏ</b> Hàng</a></li>
                                                    <li><a class="links-details clickThemYt" href="#"
                                                            data-id_yeuThich="{{ $sp->masanpham }}"><i
                                                                class="fa fa-heart-o"></i></a></li>
                                                    <li><a href="{{ route('chitiet', $sp->masanpham) }}" data-count="{{ count($hinh) }}"
                                                            title="quick view" class="quick-view-btn"
                                                            data-quick_id="{{ $sp->masanpham }}"><i
                                                                class="fa fa-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- single-product-wrap end -->
                                </div>
                            @endforeach

                        </div>
                    </div>
                </div>
                <!-- Lis Section Area End Here -->
            </div>
        </div>
    </section>
    <!-- Lis Laptop Product Area End Here -->

@endsection
@section('js')

    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v15.0"
        nonce="OSaMYvie"></script>

@stop

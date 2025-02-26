<?php

namespace App\Http\Controllers\BackEnd;

use App\GiamGia;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class GiamGiaController extends Controller
{
    public function __construct()
    {
        $this->ngaygiohientai = Carbon::now('Asia/Ho_Chi_Minh')->toDateTimeString();
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tieude = 'Mã Giảm Giá';
        $ngaygiohientai = $this->ngaygiohientai;
        $giamgia = GiamGia::orderby('idgiamgia', 'desc')->get();
        return view('Admin.magiamgia', compact('tieude', 'giamgia', 'ngaygiohientai'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'maGiamGia' => 'unique:giamgia,magiamgia',
        ],
            [
                'maGiamGia.unique' => 'Mã đã tồn tại!',
            ]);
        if ($validator->fails()) {
            return response()->json([
                'status' => 400,
                'errors' => $validator->messages(),
            ]);
        } else {
            $giamgia = new GiamGia();
            $giamgia->magiamgia = $request->maGiamGia;
            $giamgia->mota = $request->moTa;
            $giamgia->sotiengiam = floatval(preg_replace('/[^\d.]/', '', $request->soTienGiam));
            $giamgia->ngaybatdau = $request->ngayBatDau;
            $giamgia->ngayketthuc = $request->ngayKetThuc;
            $giamgia->save();

            return response()->json([
                'status' => 200,
            ]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $giamgia = GiamGia::findOrfail($id);
        if ($giamgia) {
            if ($giamgia->ngayketthuc >= $this->ngaygiohientai) {
                $trangthai = 0;
            } else {
                $trangthai = 1;
            }
            return response()->json([
                'status' => 200,
                'data' => $giamgia,
                'sophieuxuat' => count($giamgia->j_phieuxuat),
                'trangthai' => $trangthai,
            ]);
        } else {
            return response()->json([
                'status' => 404,
            ]);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $giamgia = GiamGia::findOrfail($id);
        if ($giamgia) {

            $giamgia->magiamgia = $request->maGiamGia;
            $giamgia->mota = $request->moTa;
            $giamgia->sotiengiam = floatval(preg_replace('/[^\d.]/', '', $request->soTienGiam));
            if ($request->checked == 1) {
                $giamgia->ngaybatdau = $request->ngayBatDau;
                $giamgia->ngayketthuc = $request->ngayKetThuc;
            }
            $giamgia->save();

            return response()->json([
                'status' => 200,
            ]);
        } else {
            return response()->json([
                'status' => 404,
            ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $giamgia = GiamGia::findOrfail($id);
        if ($giamgia) {
            $giamgia->delete();

            return response()->json([
                'status' => 200,
            ]);
        } else {
            return response()->json([
                'status' => 404,
            ]);
        }
    }
}
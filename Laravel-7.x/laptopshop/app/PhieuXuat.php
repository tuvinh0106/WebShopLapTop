<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PhieuXuat extends Model
{
    protected $table = "phieuxuat";

    protected $primaryKey = 'maphieuxuat';
    protected $guarded = [];
    public $timestamps = false;

    public function j_donhangTogiamgia()
    {
        return $this->belongsTo('App\GiamGia', 'magiamgia', 'idgiamgia');
    }
    public function j_donhangTonguoidung()
    {
        return $this->belongsTo('App\NguoiDung', 'manguoidung', 'manguoidung');
    }
}
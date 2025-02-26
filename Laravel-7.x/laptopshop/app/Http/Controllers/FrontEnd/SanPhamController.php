<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use App\SanPham;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class SanPhamController extends Controller
{
    public function __constructor()
    {

    }

    public function ChiTietSp($id)
    {
        $chitiet = SanPham::find($id);
        $tieude = $chitiet->tensanpham;
        $masanpham = isset($chitiet->maquatang) ? $chitiet->j_quatang->masanpham : '';

        if (isset($chitiet->maquatang)) {
            $ma = explode(',', $chitiet->j_quatang->masanpham);
            foreach ($ma as $m) {

                $quatang[] = SanPham::find($m);
            }
        } else {
            $quatang = null;
        }
        $sanphamtuongtu = SanPham::where('mahang', $chitiet->mahang)->get();

        return view('User.chitietsanpham', compact('chitiet', 'tieude', 'quatang', 'sanphamtuongtu'));
    }

    public function DanhSachSp($id, Request $request)
    {
        $tieude = in_array($id, ['laptop', 'phukien']) ? 'Danh sách sản phẩm' : 'Tìm Kiếm';
        if (isset($_GET['loc'])) {
            $hangsx = isset($_GET['hangsx']) ? $_GET['hangsx'] : '';
            $cpu = isset($_GET['cpu']) ? $_GET['cpu'] : '';
            $ram = isset($_GET['ram']) ? $_GET['ram'] : '';
            $carddohoa = isset($_GET['carddohoa']) ? $_GET['carddohoa'] : '';
            $ocung = isset($_GET['ocung']) ? $_GET['ocung'] : '';
            $manhinh = isset($_GET['manhinh']) ? $_GET['manhinh'] : '';
            $tinhtrang = isset($_GET['tinhtrang']) ? $_GET['tinhtrang'] : '';
            $mucgia = isset($_GET['mucgia']) ? $_GET['mucgia'] : '';
            $sapxep = isset($_GET['sapxep']) ? $_GET['sapxep'] : '';
            $nhucau = isset($_GET['nhucau']) ? $_GET['nhucau'] : '';

            $sql = "SELECT * FROM sanpham s, laptop l, thuvienhinh tv WHERE s.malaptop = l.malaptop AND s.mathuvienhinh = tv.mathuvienhinh AND loaisanpham = 0 AND trangthai = 0 ";
            if ($hangsx != '') {
                $sql .= " AND s.mahang IN(" . $hangsx . ")";
            }
            if ($cpu != '') {
                $cpu_arr = array();
                foreach (explode(',', $cpu) as $val) {
                    $cpu_arr[] = $val;
                }
                $chuoi = implode('|', $cpu_arr);
                $sql .= " AND cpu REGEXP '" . $chuoi . "'";
            }
            if ($ram != '') {
                $sql .= " AND ram IN(" . $ram . ")";
            }
            if ($carddohoa != '') {
                $sql .= " AND carddohoa IN(" . $carddohoa . ")";
            }
            if ($ocung != '') {
                $sql .= " AND ocung IN('" . $ocung . "')";
            }
            if ($manhinh != '') {
                $mh = explode(',', $manhinh);
                $setMaxManHinh = 24;
                if (count($mh) == 1) {
                    if ($mh[0] == 15) {
                        $sql .= " AND manhinh > 15";
                    } elseif ($mh[0] == 14) {
                        $sql .= " AND manhinh < 15";
                    } else {
                        $sql .= " AND manhinh < 14";
                    }
                } elseif (count($mh) == 2) {
                    if ($mh[0] == 15 && $mh[1] == 14) {
                        $sql .= " AND manhinh BETWEEN 14 AND $setMaxManHinh ";
                    } elseif ($mh[0] == 15 && $mh[1] == 13) {
                        $sql .= " AND manhinh BETWEEN 12 AND $setMaxManHinh ";

                    } elseif ($mh[0] == 14 && $mh[1] == 13) {
                        $sql .= " AND manhinh BETWEEN 12 AND 14 ";
                    }
                } else {
                    $sql .= " AND manhinh BETWEEN 12 AND $setMaxManHinh ";
                }
            }
            if ($tinhtrang != '') {
                $sql .= " AND tinhtrang IN(" . $tinhtrang . ")";
            }
            if ($mucgia != '') {
                $mg = explode(',', $mucgia);
                $setGiaCao = 999999999;
                $setGiaThap = 4000000;
                if (count($mg) == 1) {
                    if ($mg[0] == 'tren-25') {
                        $sql .= " AND giaban > 25000000";
                    } elseif ($mg[0] == 'tu-20-25') {
                        $sql .= " AND giaban BETWEEN 20000000 AND 25000000";
                    } elseif ($mg[0] == 'tu-15-20') {
                        $sql .= " AND giaban BETWEEN 15000000 AND 20000000";
                    } elseif ($mg[0] == 'tu-10-15') {
                        $sql .= " AND giaban BETWEEN 10000000 AND 15000000";
                    } else {
                        $sql .= " AND giaban BETWEEN 3000000 AND 10000000";
                    }
                } elseif (count($mg) == 2) {
                    if ($mg[0] == 'tren-25' && $mg[1] == 'tu-20-25') {
                        $sql .= "  AND giaban BETWEEN 20000000 AND $setGiaCao";
                    } elseif ($mg[0] == 'tu-20-25' && $mg[1] == 'tu-10-15') {
                        $sql .= " AND giaban BETWEEN 10000000 AND 25000000";
                    } elseif ($mg[0] == 'tren-25' && $mg[1] == 'tu-15-20') {
                        $sql .= " AND giaban BETWEEN 15000000 AND $setGiaCao";
                    } elseif ($mg[0] == 'tu-20-25' && $mg[1] == 'tu-15-20') {
                        $sql .= " AND giaban BETWEEN 15000000 AND 25000000";
                    } elseif ($mg[0] == 'tu-10-15' && $mg[1] == 'duoi-10') {
                        $sql .= " AND giaban BETWEEN $setGiaThap AND 15000000";
                    } elseif ($mg[0] == 'tu-20-25' && $mg[1] == 'duoi-10') {
                        $sql .= " AND giaban BETWEEN $setGiaThap AND 25000000";
                    } elseif ($mg[0] == 'tu-15-20' && $mg[1] == 'duoi-10') {
                        $sql .= " AND giaban BETWEEN $setGiaThap AND 20000000";
                    } elseif ($mg[0] == 'tu-15-20' && $mg[1] == 'tu-10-15') {
                        $sql .= " AND giaban BETWEEN 10000000 AND 20000000";
                    } else {
                        $sql .= " AND giaban BETWEEN 4000000 AND 100000000";
                    }
                } elseif (count($mg) == 3) {
                    if ($mg[0] == 'tren-25' && $mg[2] == 'tu-20-25') {
                        $sql .= " AND giaban BETWEEN 20000000 AND $setGiaCao";
                    } elseif ($mg[0] == 'tren-25' && $mg[2] == 'tu-15-20') {
                        $sql .= " AND giaban BETWEEN 15000000 AND $setGiaCao";
                    } elseif ($mg[0] == 'tren-25' && $mg[2] == 'tu-10-15') {
                        $sql .= " AND giaban BETWEEN 10000000 AND $setGiaCao";
                    } elseif ($mg[0] == 'tren-25' && $mg[2] == 'duoi-10') {
                        $sql .= " AND giaban BETWEEN $setGiaThap AND $setGiaCao";

                    } elseif ($mg[0] == 'tu-20-25' && $mg[2] == 'tu-15-20') {
                        $sql .= " AND giaban BETWEEN 15000000 AND 25000000";
                    } elseif ($mg[0] == 'tu-20-25' && $mg[2] == 'tu-10-15') {
                        $sql .= " AND giaban BETWEEN 10000000 AND 25000000";
                    } elseif ($mg[0] == 'tu-20-25' && $mg[2] == 'duoi-10') {
                        $sql .= " AND giaban BETWEEN 4000000 AND 25000000";

                    } elseif ($mg[0] == 'tu-15-20' && $mg[2] == 'tu-10-15') {
                        $sql .= " AND giaban BETWEEN 10000000 AND 20000000";
                    } elseif ($mg[0] == 'tu-15-20' && $mg[2] == 'duoi-10') {
                        $sql .= " AND giaban BETWEEN $setGiaThap AND 20000000";

                    } elseif ($mg[0] == 'tu-10-15' && $mg[2] == 'duoi-10') {
                        $sql .= " AND giaban BETWEEN $setGiaThap AND 15000000";
                    }
                } elseif (count($mg) == 4) {
                    if ($mg[0] == 'tren-25' && $mg[3] == 'tu-20-25') {
                        $sql .= " AND giaban BETWEEN 20000000 AND $setGiaCao";
                    } elseif ($mg[0] == 'tren-25' && $mg[3] == 'tu-15-20') {
                        $sql .= " AND giaban BETWEEN 15000000 AND $setGiaCao";
                    } elseif ($mg[0] == 'tren-25' && $mg[3] == 'tu-10-15') {
                        $sql .= " AND giaban BETWEEN 10000000 AND $setGiaCao";
                    } elseif ($mg[0] == 'tren-25' && $mg[3] == 'duoi-10') {
                        $sql .= " AND giaban BETWEEN $setGiaThap AND $setGiaCao";

                    } elseif ($mg[0] == 'tu-20-25' && $mg[3] == 'tu-15-20') {
                        $sql .= " AND giaban BETWEEN 15000000 AND 25000000";
                    } elseif ($mg[0] == 'tu-20-25' && $mg[2] == 'tu-10-15') {
                        $sql .= " AND giaban BETWEEN 10000000 AND 25000000";
                    } elseif ($mg[0] == 'tu-20-25' && $mg[3] == 'duoi-10') {
                        $sql .= " AND giaban BETWEEN 4000000 AND 25000000";

                    } elseif ($mg[0] == 'tu-15-20' && $mg[3] == 'tu-10-15') {
                        $sql .= " AND giaban BETWEEN 10000000 AND 20000000";
                    } elseif ($mg[0] == 'tu-15-20' && $mg[3] == 'duoi-10') {
                        $sql .= " AND giaban BETWEEN $setGiaThap AND 20000000";

                    } elseif ($mg[0] == 'tu-10-15' && $mg[3] == 'duoi-10') {
                        $sql .= " AND giaban BETWEEN $setGiaThap AND 15000000";
                    }
                } else {
                    $sql .= " AND giaban BETWEEN $setGiaThap AND $setGiaCao";
                }
            }
            if ($sapxep != '') {
                if ($sapxep == 'moinhat') {
                    $sql .= " ORDER BY masanpham desc";
                } elseif ($sapxep == 'banchay') {

                } elseif ($sapxep == 'uudai') {
                    $sql .= " AND giakhuyenmai > 0";
                } elseif ($sapxep == 'giatang') {
                    $sql .= " ORDER BY giaban asc";
                } elseif ($sapxep == 'giagiam') {
                    $sql .= " ORDER BY giaban desc";
                }
            }
            if ($nhucau != '') {
                $sql .= " AND nhucau LIKE '%" . $nhucau . "%'";
            }

            $sanpham = DB::select($sql);

        } elseif (isset($_GET['sap-xep'])) {
            $sapxep = $_GET['sap-xep'];
            $loai = $_GET['loai'];
            $sql = "SELECT * FROM sanpham s LEFT JOIN  laptop l ON l.malaptop = s.malaptop INNER JOIN thuvienhinh tv ON tv.mathuvienhinh=s.mathuvienhinh ";
            if ($loai == 0) {
                $sql .= "WHERE loaisanpham = 0 ";

            } else {

                $sql .= "WHERE loaisanpham = 1 ";
            }

            if ($sapxep == 'moinhat') {
                $sql .= "AND trangthai=0 ORDER BY masanpham desc";
            } elseif ($sapxep == 'banchay') {
                
            } elseif ($sapxep == 'uudai') {
                $sql .= "AND giakhuyenmai > 0 AND trangthai=0";
            } elseif ($sapxep == 'giatang') {
                $sql .= "AND trangthai=0 ORDER BY giaban ASC ";
            } elseif ($sapxep == 'giagiam') {
                $sql .= "AND trangthai=0 ORDER BY giaban DESC  ";
            }
            // if (strstr($sql, "WHERE")) {
            //     $sql .= " AND trangthai = 0";
            // } else {
            //     $sql .= " WHERE trangthai = 0";
            // }
            $sanpham = DB::select($sql);
        } else {

            if ($id == 'laptop') {
                $sanpham = SanPham::where([['loaisanpham', 0], ['trangthai', 0]])
                    ->join('laptop as l', 'l.malaptop', 'sanpham.malaptop')
                    ->join('thuvienhinh as tv', 'tv.mathuvienhinh', 'sanpham.mathuvienhinh')
                    ->get();
                // $cpu = LapTop::select('cpu')->distinct()->get();
            } else {
                $sanpham = SanPham::where([['loaisanpham', 1], ['trangthai', 0]])
                    ->join('thuvienhinh as tv', 'tv.mathuvienhinh', 'sanpham.mathuvienhinh')
                    ->get();
            }
        }

        return view('User.danhsachsp', compact('tieude', 'sanpham', 'id'));
    }

    public function TimKiem()
    {
        $tukhoa = $_GET['tukhoa'];
        $tukhoa_masp = trim(strtolower($tukhoa), 'sp');
        $tukhoa_ram = trim(strtolower($tukhoa), 'gb');
        $card = strtolower($tukhoa);
        $tukhoa_card = '';
        if ($card) {
            if ($card == 'onboard') {
                $tukhoa_card = 0;
            } elseif ($card == 'nvidia') {
                $tukhoa_card = 1;
            } elseif ($card == 'amd') {
                $tukhoa_card = 2;
            }
        }

        $loai = $_GET['loaiTimKiem'];
        $tieude = 'Tìm Kiếm' . ' " ' . $tukhoa . ' "';

        $sql = "SELECT * FROM sanpham s LEFT JOIN  laptop l ON l.malaptop = s.malaptop INNER JOIN thuvienhinh tv ON tv.mathuvienhinh=s.mathuvienhinh  ";

        if ($tukhoa != '') {
            if ($loai == 'tatca') {
                $sql .= "WHERE s.tensanpham LIKE '%$tukhoa%' ";
            } elseif ($loai == 'laptop') {
                $sql .= "WHERE (s.tensanpham LIKE '%$tukhoa%' OR l.cpu LIKE '%$tukhoa%') AND loaisanpahm = 0 ";
            } elseif ($loai == 'phukien') {
                $sql .= "WHERE (s.tensanpham LIKE '%$tukhoa%' OR l.cpu LIKE '%$tukhoa%') AND loaisanpahm = 1 ";
            } else {
                $sql .= "WHERE (s.tensanpham LIKE '%$tukhoa%' OR l.cpu LIKE '%$tukhoa%') AND mahang = {$loai} ";
            }
            $sql .= "OR l.nhucau LIKE '%$tukhoa%' ";
            if (is_numeric($tukhoa_masp)) {
                $sql .= "OR s.masanpham LIKE '%$tukhoa_masp%' ";
            }
            if (strstr(strtolower($tukhoa), "ram")) {
                $ram = trim(strtolower($tukhoa), 'ram gb');
                $sql .= "OR l.ram LIKE '%$ram%' ";
            }
            if (strstr(Str::slug($tukhoa), "o-cung")) {
                $ocung = trim(Str::slug($tukhoa), 'o-cung gb');
                $sql .= "OR l.ocung LIKE '%$ocung%' ";
            }
            if (is_numeric($tukhoa_ram)) {
                $sql .= "OR l.ram LIKE '%$tukhoa_ram%' OR l.ocung LIKE '%$tukhoa_ram%' ";
            }
            if (is_numeric($tukhoa)) {
                $sql .= "OR l.manhinh  LIKE '%$tukhoa%' ";
            }
            if ($tukhoa_card != '') {
                $sql .= "OR l.carddohoa  LIKE '%$tukhoa_card%' ";
            }
            // dd($sql);
        } else {
            if ($loai == 'tatca') {
                $sql .= "";
            } elseif ($loai == 'laptop') {
                $sql .= "WHERE loaisanpham = 0 ";
            } elseif ($loai == 'phukien') {
                $sql .= "WHERE loaisanpham = 1 ";
            } else {
                $sql .= "WHERE mahang = {$loai} ";
            }
        }
        if (isset($_GET['sap-xep'])) {
            $sapxep = $_GET['sap-xep'];

            if ($sapxep == 'moinhat') {
                $sql .= "ORDER BY masanpham desc ";
            } elseif ($sapxep == 'banchay') {

            } elseif ($sapxep == 'uudai') {
                $sql .= "WHERE giakhuyenmai > 0 ";
            } elseif ($sapxep == 'giatang') {
                $sql .= "ORDER BY giaban asc ";
            } elseif ($sapxep == 'giagiam') {
                $sql .= "ORDER BY giaban desc ";
            }
        }
        if (strstr($sql, "WHERE")) {
            $sql .= " AND trangthai = 0";
        } else {
            $sql .= " WHERE trangthai = 0";
        }
        $sanpham = DB::select($sql);

        // dd($sanpham);

        $id = $loai == 'laptop' ? 'laptops' : $loai;

        return view('User.danhsachsp', compact('tieude', 'sanpham', 'id'));
    }
}
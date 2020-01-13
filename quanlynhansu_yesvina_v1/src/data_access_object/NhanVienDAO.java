/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data_access_object;

import java.sql.ResultSet;

/**
 *
 * @author cuong
 */
public class NhanVienDAO {
    public static ResultSet taiDanhSachnhanvien(){
        return DataProvider.instance.executeQuery("select nhanvien.ma,hodem,nhanvien.ten,cmnd,gioitinh,ngaysinh,danhmucdantoc.ten,danhmuctongiao.ten,danhmuctrinhdongoaingu.ten,sodienthoai,diachi "
                + "from nhanvien inner join danhmuctrinhdongoaingu on nhanvien.matrinhdongoaingu= danhmuctrinhdongoaingu.ma "
                + "inner join danhmucdantoc on nhanvien.madantoc=danhmucdantoc.ma inner join danhmuctongiao on danhmuctongiao.ma=nhanvien.matongiao");
    }
    public static boolean themnhanvien(String cmnd, String hodem,String ten,String ngaysinh,boolean gioitinh,String sodienthoai, String diachi, int matongiao, int madantoc,int matrinhdongoaingu){
        return DataProvider.instance.executeNonQuery( "INSERT INTO `quanlynhansu`.`nhanvien` (`cmnd`, `hodem`, `ten`, `ngaysinh`, `gioitinh`, `sodienthoai`, `diachi`, `matongiao`, `madantoc`, `matrinhdongoaingu`) VALUES "
                + "('"+cmnd+"', '"+hodem+"', '"+ten+"', '"+ngaysinh+"', "+gioitinh+", '"+sodienthoai+"', '"+diachi+"', '"+matongiao+"', '"+madantoc+"', '"+matrinhdongoaingu+"');");
    }
    public static boolean suanhanvien(String cmnd, String hodem,String ten,String ngaysinh,boolean gioitinh,String sodienthoai, String diachi, int matongiao, int madantoc,int matrinhdongoaingu,String ma){
        String queryString="UPDATE `quanlynhansu`.`nhanvien` SET `cmnd` = '"+cmnd+"', `hodem` = '"+hodem+"', `ten` = '"+ten+"', `ngaysinh` = '"+ngaysinh+"', `gioitinh` = "+gioitinh+",  `sodienthoai` = '"+sodienthoai+"', `diachi` = '"+diachi+"', `matongiao` = '"+matongiao+"', `madantoc` = '"+madantoc+"', `matrinhdongoaingu` = '"+matrinhdongoaingu+"' WHERE (`ma` = '"+ma+"')";
        return DataProvider.instance.executeNonQuery( queryString);
    }
    public static boolean xoanhanvien(String ma){
        return DataProvider.instance.executeNonQuery( "DELETE FROM `quanlynhansu`.`nhanvien` WHERE (`ma` = '"+ma+"');");
    }
     public static ResultSet taiDanhsachphancong(){
        return DataProvider.instance.executeQuery("select nhanvien.ma,hodem,nhanvien.ten,danhmucphanxuong.ten,danhmucphongban.ten,danhmucchucvu.ten "
                + "from nhanvien left outer join danhmucchucvu on nhanvien.machucvu=danhmucchucvu.ma left outer join danhmucphanxuong on nhanvien.maphanxuong=danhmucphanxuong.ma left outer join danhmucphongban on danhmucphongban.ma=nhanvien.maphongban ");
    }
     public static boolean capnhatphancong(int phanxuong, int maphongban,int machucvu,int ma){
        String queryString="UPDATE `quanlynhansu`.`nhanvien` SET `maphanxuong` = '"+phanxuong+"', `maphongban` = '"+maphongban+"', `machucvu` = '"+machucvu+"' WHERE (`ma` = '"+ma+"')";
        return DataProvider.instance.executeNonQuery( queryString);
    }
}

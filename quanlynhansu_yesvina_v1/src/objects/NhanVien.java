/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objects;

import data_access_object.NhanVienDAO;

/**
 *
 * @author Admin
 */
public class NhanVien {
    private String manv;
    private String cmnd;
    private String hodem;
    private String ten;
    private String ngaysinh;
    private boolean gioitinh;
    private String sodienthoai;
    private String diachi;
    private String madantoc;
    private String matongiao;
    private String matrinhdongoaingu;
    private String maphongban;
    private String chucvu;
    private String phanxuong;

    

    public boolean themNhanVien(){
       return NhanVienDAO.themnhanvien(cmnd, hodem, ten, ngaysinh, gioitinh, sodienthoai, diachi, Integer.parseInt(matongiao),  Integer.parseInt(madantoc), Integer.parseInt(matrinhdongoaingu));
    }
    public boolean xoaNhanVien(){
        return NhanVienDAO.xoanhanvien(manv+"");
    }
    public boolean suaNhanVien()
    {
        return NhanVienDAO.suanhanvien(cmnd, hodem, ten, ngaysinh, gioitinh, sodienthoai, diachi, Integer.parseInt(matongiao),  Integer.parseInt(madantoc), Integer.parseInt(matrinhdongoaingu), manv);
    }
    public NhanVien(String manv, String cmnd, String hodem, String ten, String ngaysinh, boolean gioitinh, String sodienthoai, String diachi, String madantoc, String matongiao, String matrinhdongoaingu ) {
        this.manv = manv;
        this.cmnd = cmnd;
        this.hodem = hodem;
        this.ten = ten;
        this.ngaysinh = ngaysinh;
        this.gioitinh = gioitinh;
        this.sodienthoai = sodienthoai;
        this.diachi = diachi;
        this.madantoc = madantoc;
        this.matongiao = matongiao;
        this.matrinhdongoaingu = matrinhdongoaingu;

    }
    
    
    
    public String getManv() {
        return manv;
    }

    public void setManv(String manv) {
        this.manv = manv;
    }

    public String getCmnd() {
        return cmnd;
    }

    public void setCmnd(String cmnd) {
        this.cmnd = cmnd;
    }

    public String getHodem() {
        return hodem;
    }

    public void setHodem(String hodem) {
        this.hodem = hodem;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(String ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public boolean isGioitinh() {
        return gioitinh;
    }

    public void setGioitinh(boolean gioitinh) {
        this.gioitinh = gioitinh;
    }

    public String getSodienthoai() {
        return sodienthoai;
    }

    public void setSodienthoai(String sodienthoai) {
        this.sodienthoai = sodienthoai;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

   
    public String getMadantoc() {
        return madantoc;
    }

    public void setMadantoc(String madantoc) {
        this.madantoc = madantoc;
    }

    public String getMatongiao() {
        return matongiao;
    }

    public void setMatongiao(String matongiao) {
        this.matongiao = matongiao;
    }

    public String getMatrinhdongoaingu() {
        return matrinhdongoaingu;
    }

    public void setMatrinhdongoaingu(String matrinhdongoaingu) {
        this.matrinhdongoaingu = matrinhdongoaingu;
    }

    public String getMaphongban() {
        return maphongban;
    }

    public void setMaphongban(String maphongban) {
        this.maphongban = maphongban;
    }

    public String getChucvu() {
        return chucvu;
    }

    public void setChucvu(String chucvu) {
        this.chucvu = chucvu;
    }

    public String getPhanxuong() {
        return phanxuong;
    }

    public void setPhanxuong(String phanxuong) {
        this.phanxuong = phanxuong;
    }

}

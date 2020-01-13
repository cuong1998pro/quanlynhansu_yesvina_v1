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
public class PhanXuongDAO {
    public static ResultSet taiDanhSachphanxuong(){
        return DataProvider.instance.executeQuery("select * from danhmucphanxuong");
    }
    public static boolean themphanxuong(String ten, String chuthich){
        return DataProvider.instance.executeNonQuery( "INSERT INTO `quanlynhansu`.`danhmucphanxuong` (`ten`, `chuthich`) VALUES ('"+ten+"', '"+chuthich+"');");
    }
    public static boolean suaphanxuong(String ten, String chuthich,String ma){
        return DataProvider.instance.executeNonQuery( "UPDATE `quanlynhansu`.`danhmucphanxuong` SET `ten` = '"+ten+"', `chuthich` = '"+chuthich+"' WHERE (`ma` = '"+ma+"')");
    }
    public static boolean xoaphanxuong(String ma){
        return DataProvider.instance.executeNonQuery( "DELETE FROM `quanlynhansu`.`danhmucphanxuong` WHERE (`ma` = '"+ma+"');");
    }
}

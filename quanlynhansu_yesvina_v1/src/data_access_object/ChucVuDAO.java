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
public class ChucVuDAO {
    public static ResultSet taiDanhSachchucvu(){
        return DataProvider.instance.executeQuery("select * from danhmucchucvu");
    }
    public static boolean themchucvu(String ten, String chuthich){
        return DataProvider.instance.executeNonQuery( "INSERT INTO `quanlynhansu`.`danhmucchucvu` (`ten`, `chuthich`) VALUES ('"+ten+"', '"+chuthich+"');");
    }
    public static boolean suachucvu(String ten, String chuthich,String ma){
        return DataProvider.instance.executeNonQuery( "UPDATE `quanlynhansu`.`danhmucchucvu` SET `ten` = '"+ten+"', `chuthich` = '"+chuthich+"' WHERE (`ma` = '"+ma+"')");
    }
    public static boolean xoachucvu(String ma){
        return DataProvider.instance.executeNonQuery( "DELETE FROM `quanlynhansu`.`danhmucchucvu` WHERE (`ma` = '"+ma+"');");
    }
}

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
public class PhongBanDAO {
    public static ResultSet taiDanhSachphongban(){
        return DataProvider.instance.executeQuery("select * from danhmucphongban");
    }
    public static boolean themphongban(String ten, String chuthich){
        return DataProvider.instance.executeNonQuery( "INSERT INTO `quanlynhansu`.`danhmucphongban` (`ten`, `chuthich`) VALUES ('"+ten+"', '"+chuthich+"');");
    }
    public static boolean suaphongban(String ten, String chuthich,String ma){
        return DataProvider.instance.executeNonQuery( "UPDATE `quanlynhansu`.`danhmucphongban` SET `ten` = '"+ten+"', `chuthich` = '"+chuthich+"' WHERE (`ma` = '"+ma+"')");
    }
    public static boolean xoaphongban(String ma){
        return DataProvider.instance.executeNonQuery( "DELETE FROM `quanlynhansu`.`danhmucphongban` WHERE (`ma` = '"+ma+"');");
    }
}

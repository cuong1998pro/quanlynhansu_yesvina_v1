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
public class TrinhDoNgoaiNguDAO {
    public static ResultSet taiDanhSachtrinhdongoaingu(){
        return DataProvider.instance.executeQuery("select * from danhmuctrinhdongoaingu");
    }
    public static boolean themtrinhdongoaingu(String ten, String chuthich,int mangoaingu){
        return DataProvider.instance.executeNonQuery( "INSERT INTO `quanlynhansu`.`danhmuctrinhdongoaingu` (`ten`, `chuthich`,`mangoaingu`) VALUES ('"+ten+"', '"+chuthich+"'"+"', '"+mangoaingu+"'"+");");
    }
    public static boolean suatrinhdongoaingu(String ten, String chuthich,String ma){
        return DataProvider.instance.executeNonQuery( "UPDATE `quanlynhansu`.`danhmuctrinhdongoaingu` SET `ten` = '"+ten+"', `chuthich` = '"+chuthich+"' WHERE (`ma` = '"+ma+"')");
    }
    public static boolean xoatrinhdongoaingu(String ma){
        return DataProvider.instance.executeNonQuery( "DELETE FROM `quanlynhansu`.`danhmuctrinhdongoaingu` WHERE (`ma` = '"+ma+"');");
    }
}

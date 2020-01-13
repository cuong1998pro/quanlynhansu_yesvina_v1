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
public class TonGiaoDAO {
    public static ResultSet taiDanhSachtongiao(){
        return DataProvider.instance.executeQuery("select * from danhmuctongiao");
    }
    public static boolean themtongiao(String ten, String chuthich){
        return DataProvider.instance.executeNonQuery( "INSERT INTO `quanlynhansu`.`danhmuctongiao` (`ten`, `chuthich`) VALUES ('"+ten+"', '"+chuthich+"');");
    }
    public static boolean suatongiao(String ten, String chuthich,String ma){
        return DataProvider.instance.executeNonQuery( "UPDATE `quanlynhansu`.`danhmuctongiao` SET `ten` = '"+ten+"', `chuthich` = '"+chuthich+"' WHERE (`ma` = '"+ma+"')");
    }
    public static boolean xoatongiao(String ma){
        return DataProvider.instance.executeNonQuery( "DELETE FROM `quanlynhansu`.`danhmuctongiao` WHERE (`ma` = '"+ma+"');");
    }
}

create database quanlynhansu;
use quanlynhansu;
create table loaitaikhoan( 
	ma int auto_increment not null primary key,
    tenloaitaikhoan nvarchar(100) default "",
    chuthich nvarchar(100) default ""
);

INSERT INTO `quanlynhansu`.`loaitaikhoan` (`tenloaitaikhoan`) VALUES ('Nhân viên');
INSERT INTO `quanlynhansu`.`loaitaikhoan` (`tenloaitaikhoan`) VALUES ('Quản trị viên');
INSERT INTO `quanlynhansu`.`loaitaikhoan` (`tenloaitaikhoan`) VALUES ('Quản lý nhân sự');
INSERT INTO `quanlynhansu`.`loaitaikhoan` (`tenloaitaikhoan`) VALUES ('Kế toán');
INSERT INTO `quanlynhansu`.`loaitaikhoan` (`tenloaitaikhoan`) VALUES ('Quản lý sản xuất');


create table taikhoan(
	tendangnhap nvarchar(100) not null primary key,
    matkhau nvarchar(100) default "",
    maloaitaikhoan int ,
    foreign key (maloaitaikhoan) references loaitaikhoan(ma)
);
INSERT INTO `quanlynhansu`.`taikhoan` (`tendangnhap`, `matkhau`, `maloaitaikhoan`) VALUES ('admin', '', '2');
INSERT INTO `quanlynhansu`.`taikhoan` (`tendangnhap`, `matkhau`, `maloaitaikhoan`) VALUES ('quyet', '', '1');
INSERT INTO `quanlynhansu`.`taikhoan` (`tendangnhap`, `matkhau`, `maloaitaikhoan`) VALUES ('quynh', '', '3');
INSERT INTO `quanlynhansu`.`taikhoan` (`tendangnhap`, `matkhau`, `maloaitaikhoan`) VALUES ('nguyen', '', '5');
INSERT INTO `quanlynhansu`.`taikhoan` (`tendangnhap`, `maloaitaikhoan`) VALUES ('cuong', '4');


create table phanquyen(
	maphanquyen int auto_increment not null primary key,
    tendangnhap nvarchar(100) not null,
    duocquyentruyvan bit default false,
    duocquyenthem bit default false,
	duocquyensua bit default false,
	duocquyenxoa bit default false,
    foreign key (tendangnhap )references taikhoan(tendangnhap)
);
INSERT INTO `quanlynhansu`.`phanquyen` (`tendangnhap`, `duocquyentruyvan`, `duocquyenthem`, `duocquyensua`, `duocquyenxoa`) VALUES ('cuong', TRUE, TRUE, TRUE, TRUE);
INSERT INTO `quanlynhansu`.`phanquyen` (`tendangnhap`, `duocquyentruyvan`, `duocquyenthem`, `duocquyensua`, `duocquyenxoa`) VALUES ('quyet', TRUE, TRUE, TRUE, TRUE);
INSERT INTO `quanlynhansu`.`phanquyen` (`tendangnhap`, `duocquyentruyvan`, `duocquyenthem`, `duocquyensua`, `duocquyenxoa`) VALUES ('nguyen', TRUE, TRUE, TRUE, TRUE);
INSERT INTO `quanlynhansu`.`phanquyen` (`tendangnhap`, `duocquyentruyvan`, `duocquyenthem`, `duocquyensua`, `duocquyenxoa`) VALUES ('quynh', TRUE, TRUE, TRUE, TRUE);
INSERT INTO `quanlynhansu`.`phanquyen` (`tendangnhap`, `duocquyentruyvan`, `duocquyenthem`, `duocquyensua`, `duocquyenxoa`) VALUES ('admin', TRUE, TRUE, TRUE, TRUE);

create table danhmuctongiao(
	ma int auto_increment not null primary key,
    ten nvarchar(100) default "",
    chuthich nvarchar(100) default ""
);
INSERT INTO `quanlynhansu`.`danhmuctongiao` (`ten`) VALUES ('Phật giáo');
INSERT INTO `quanlynhansu`.`danhmuctongiao` (`ten`) VALUES ('Kito giáo');
INSERT INTO `quanlynhansu`.`danhmuctongiao` (`ten`) VALUES ('Thiên chúa giáo');

create table danhmucdantoc (
	ma int auto_increment not null primary key,
	ten nvarchar(100) default "",
	chuthich nvarchar(100) default ""
);
INSERT INTO `quanlynhansu`.`danhmucdantoc` (`ten`) VALUES ('Kinh');
INSERT INTO `quanlynhansu`.`danhmucdantoc` (`ten`) VALUES ('Tày');
INSERT INTO `quanlynhansu`.`danhmucdantoc` (`ten`) VALUES ('Nùng');
INSERT INTO `quanlynhansu`.`danhmucdantoc` (`ten`) VALUES ('Thái');
INSERT INTO `quanlynhansu`.`danhmucdantoc` (`ten`) VALUES ('Dao');


create table danhmucphongban (
	ma int auto_increment not null primary key,
	ten nvarchar(100) default "",
	chuthich nvarchar(100) default ""
);

INSERT INTO `quanlynhansu`.`danhmucphongban` (`ten`) VALUES ('Ban lãnh đạo');
INSERT INTO `quanlynhansu`.`danhmucphongban` (`ten`) VALUES ('Phòng sản xuất');
INSERT INTO `quanlynhansu`.`danhmucphongban` (`ten`) VALUES ('Phòng kế toán');
INSERT INTO `quanlynhansu`.`danhmucphongban` (`ten`) VALUES ('Phòng quản lý nhân sự');
INSERT INTO `quanlynhansu`.`danhmucphongban` (`ten`) VALUES ('Công đoàn');
INSERT INTO `quanlynhansu`.`danhmucphongban` (`ten`) VALUES ('Bảo vệ');


create table danhmucchucvu (
	ma int auto_increment not null primary key,
	ten nvarchar(100) default "",
	chuthich nvarchar(100) default ""
);
INSERT INTO `quanlynhansu`.`danhmucchucvu` (`ten`) VALUES ('Giám đốc');
INSERT INTO `quanlynhansu`.`danhmucchucvu` (`ten`) VALUES ('Phó giám đốc ');
INSERT INTO `quanlynhansu`.`danhmucchucvu` (`ten`) VALUES ('Trưởng phòng ');
INSERT INTO `quanlynhansu`.`danhmucchucvu` (`ten`) VALUES ('Phó phòng');
INSERT INTO `quanlynhansu`.`danhmucchucvu` (`ten`) VALUES ('Vật tư');
INSERT INTO `quanlynhansu`.`danhmucchucvu` (`ten`) VALUES ('Bảo vệ');
INSERT INTO `quanlynhansu`.`danhmucchucvu` (`ten`) VALUES ('Kế toán trưởng');

alter table danhmucchucvu add sotienphucap int default 0;
UPDATE `quanlynhansu`.`danhmucchucvu` SET `sotienphucap` = '10000000' WHERE (`ma` = '1');
UPDATE `quanlynhansu`.`danhmucchucvu` SET `sotienphucap` = '5000000' WHERE (`ma` = '2');
UPDATE `quanlynhansu`.`danhmucchucvu` SET `sotienphucap` = '2000000' WHERE (`ma` = '3');
UPDATE `quanlynhansu`.`danhmucchucvu` SET `sotienphucap` = '1000000' WHERE (`ma` = '4');
UPDATE `quanlynhansu`.`danhmucchucvu` SET `sotienphucap` = '500000' WHERE (`ma` = '5');
UPDATE `quanlynhansu`.`danhmucchucvu` SET `sotienphucap` = '200000' WHERE (`ma` = '6');
UPDATE `quanlynhansu`.`danhmucchucvu` SET `sotienphucap` = '500000' WHERE (`ma` = '7');


create table danhmucphanxuong (
	ma int auto_increment not null primary key,
	ten nvarchar(100) default "",
	chuthich nvarchar(100) default ""
);
INSERT INTO `quanlynhansu`.`danhmucphanxuong` (`ten`) VALUES ('Phân xưởng A');
INSERT INTO `quanlynhansu`.`danhmucphanxuong` (`ten`) VALUES ('Phân xưởng B');
INSERT INTO `quanlynhansu`.`danhmucphanxuong` (`ten`) VALUES ('Phân xưởng c');


create table danhmucngoaingu (
	ma int auto_increment not null primary key,
	ten nvarchar(100) default "",
	chuthich nvarchar(100) default ""
); 
INSERT INTO `quanlynhansu`.`danhmucngoaingu` (`ten`) VALUES ('Tiếng Anh');
INSERT INTO `quanlynhansu`.`danhmucngoaingu` (`ten`) VALUES ('Tiếng Trung');
INSERT INTO `quanlynhansu`.`danhmucngoaingu` (`ten`) VALUES ('Tiếng Nhật');

  
create table danhmuctrinhdongoaingu (
	ma int auto_increment not null primary key,
	ten nvarchar(100) default "",
	chuthich nvarchar(100) default "",
    mangoaingu int not null,
    foreign key(mangoaingu)references danhmucngoaingu(ma)
); 
INSERT INTO `quanlynhansu`.`danhmuctrinhdongoaingu` (`ten`, `mangoaingu`) VALUES ('800+', '1');
INSERT INTO `quanlynhansu`.`danhmuctrinhdongoaingu` (`ten`, `mangoaingu`) VALUES ('600-800', '1');
INSERT INTO `quanlynhansu`.`danhmuctrinhdongoaingu` (`ten`, `mangoaingu`) VALUES ('dưới 600', '1');
INSERT INTO `quanlynhansu`.`danhmuctrinhdongoaingu` (`ten`, `mangoaingu`) VALUES ('N1', '2');
INSERT INTO `quanlynhansu`.`danhmuctrinhdongoaingu` (`ten`, `mangoaingu`) VALUES ('N2', '2');
INSERT INTO `quanlynhansu`.`danhmuctrinhdongoaingu` (`ten`, `mangoaingu`) VALUES ('N3', '2');
INSERT INTO `quanlynhansu`.`danhmuctrinhdongoaingu` (`ten`, `mangoaingu`) VALUES ('N1', '3');
INSERT INTO `quanlynhansu`.`danhmuctrinhdongoaingu` (`ten`, `mangoaingu`) VALUES ('N2', '3');
INSERT INTO `quanlynhansu`.`danhmuctrinhdongoaingu` (`ten`, `mangoaingu`) VALUES ('N3', '3');

    
create table danhmuccalamviec (
	ma int auto_increment not null primary key,
	ten nvarchar(100) default "",
    thoigianbatdau datetime,
    thoigianketthuc datetime,
	chuthich nvarchar(100) default ""
); 
INSERT INTO `quanlynhansu`.`danhmuccalamviec` (`ten`, `thoigianbatdau`, `thoigianketthuc`) VALUES ('Ca sáng', '2010-1-1 6:00:00', '2010-1-1 14:00:00');
INSERT INTO `quanlynhansu`.`danhmuccalamviec` (`ten`, `thoigianbatdau`, `thoigianketthuc`) VALUES ('Chiều', '2010-1-1 14:00:00', '2010-1-1  22:00:00');
INSERT INTO `quanlynhansu`.`danhmuccalamviec` (`ten`, `thoigianbatdau`, `thoigianketthuc`) VALUES ('Đêm', '2010-1-1 22:00:00', '2010-1-1 6:00:00');
INSERT INTO `quanlynhansu`.`danhmuccalamviec` (`ten`, `thoigianbatdau`, `thoigianketthuc`) VALUES ('Hành chính', '2010-1-1 8:00:00', '2010-1-1 17:00:00');


create table danhmuckhenthuong(
	ma int auto_increment not null primary key,
    ten nvarchar(100) default "",
    hinhthuc nvarchar(100) default "",
    chuthich nvarchar(100) default ""
);
INSERT INTO `quanlynhansu`.`danhmuckhenthuong` (`ten`, `hinhthuc`) VALUES ('Lao động giỏi', 'Thưởng 200.000');
INSERT INTO `quanlynhansu`.`danhmuckhenthuong` (`ten`, `hinhthuc`) VALUES ('Chấp hành tốt quy định', 'Thưởng 100.000');
INSERT INTO `quanlynhansu`.`danhmuckhenthuong` (`ten`, `hinhthuc`) VALUES ('Thưởng tết', '2.000.000');


create table danhmuckyluat(
	ma int auto_increment not null primary key,
    ten nvarchar(100) default "",
    hinhthuc nvarchar(100) default "",
    chuthich nvarchar(100) default ""
);
INSERT INTO `quanlynhansu`.`danhmuckyluat` (`ten`, `hinhthuc`) VALUES ('Đi muộn', 'Phạt tiền 200.000');
INSERT INTO `quanlynhansu`.`danhmuckyluat` (`ten`, `hinhthuc`) VALUES ('Mang đồ ăn vào công ty', 'Phê bình, nhắc nhở');
INSERT INTO `quanlynhansu`.`danhmuckyluat` (`ten`, `hinhthuc`) VALUES ('Trộm cắp tài sản ', 'Theo pháp luật, đuổi việc');

create table danhmucphucap (
	ma int auto_increment not null primary key,
	ten nvarchar(100) default "",
	chuthich nvarchar(100) default ""
); 
INSERT INTO `quanlynhansu`.`danhmucphucap` (`ten`) VALUES ('Đi lại');
INSERT INTO `quanlynhansu`.`danhmucphucap` (`ten`) VALUES ('Nhà ở');
INSERT INTO `quanlynhansu`.`danhmucphucap` (`ten`) VALUES ('Con nhỏ');
INSERT INTO `quanlynhansu`.`danhmucphucap` (`ten`) VALUES ('Độc hại');
INSERT INTO `quanlynhansu`.`danhmucphucap` (`ten`) VALUES ('Nóng');


create table danhmucloaihopdong (
	ma int auto_increment not null primary key,
	ten nvarchar(100) default "",
	chuthich nvarchar(100) default ""
); 
INSERT INTO `quanlynhansu`.`danhmucloaihopdong` (`ten`) VALUES ('Hợp đồng thời vụ');
INSERT INTO `quanlynhansu`.`danhmucloaihopdong` (`ten`) VALUES ('Hợp đồng chính thức');
INSERT INTO `quanlynhansu`.`danhmucloaihopdong` (`ten`) VALUES ('Hợp đồng vĩnh viễn');


create table danhmucloainghi (
	ma int auto_increment not null primary key,
	ten nvarchar(100) default "",
	chuthich nvarchar(100) default ""
); alter table danhmucloainghi add cohuongluong bit;
INSERT INTO `quanlynhansu`.`danhmucloainghi` (`ten`,`cohuongluong`) VALUES ('Nghỉ thai sản',TRUE);
INSERT INTO `quanlynhansu`.`danhmucloainghi` (`ten`,`cohuongluong`) VALUES ('Nghỉ hưu',TRUE);
INSERT INTO `quanlynhansu`.`danhmucloainghi` (`ten`,`cohuongluong`) VALUES ('Nghỉ ốm',TRUE);
INSERT INTO `quanlynhansu`.`danhmucloainghi` (`ten`,`cohuongluong`) VALUES ('Nghỉ chăm sóc con nhỏ',TRUE);



create table nhanvien(
	ma int not null primary key auto_increment,
    cmnd nvarchar(100) default "",
    hodem nvarchar(100) not null,
    ten nvarchar (100) not null,
    ngaysinh date,
    gioitinh bit default 1,
   sodienthoai nvarchar(100) default "",
    diachi nvarchar(100)default	"",
     tinhtrang nvarchar(100) default"",
    matongiao int not null,
    madantoc int not null,
    matrinhdongoaingu int not null,
    maphongban int,
    machucvu int,
    maphanxuong int ,
    foreign key (maphongban) references danhmucphongban(ma),
    foreign key (machucvu) references danhmucchucvu(ma),
    foreign key (maphanxuong) references danhmucphanxuong(ma),
    foreign key (matongiao) references danhmucchucvu (ma),
    foreign key (madantoc) references danhmucdantoc(ma),
    foreign key (matrinhdongoaingu) references danhmuctrinhdongoaingu(ma)
);
INSERT INTO `quanlynhansu`.`nhanvien` (`cmnd`, `hodem`, `ten`, `ngaysinh`, `gioitinh`, `sodienthoai`, `diachi`, `tinhtrang`, `matongiao`, `madantoc`, `matrinhdongoaingu`, `maphongban`, `machucvu`, `maphanxuong`) VALUES ('031985809', 'Phạm Quang', 'Cường', '1998-1-1', TRUE, N'0522108858', N'Hải Phòng', N'Đang đi làm', N'1', N'1', N'1', N'1', N'1', N'1');
INSERT INTO `quanlynhansu`.`nhanvien` ( `cmnd`, `hodem`, `ten`, `ngaysinh`, `gioitinh`, `sodienthoai`, `diachi`, `tinhtrang`, `matongiao`, `madantoc`, `matrinhdongoaingu`, `maphongban`, `machucvu`, `maphanxuong`) VALUES (N'043242342', N'Lưu Văn', N'Quyết', N'1998-1-1', TRUE, N'0424732842', N'Hải Phòng', N'Đang đi làm', N'1', N'2', N'3', N'3', N'2', N'1');
INSERT INTO `quanlynhansu`.`nhanvien` (`cmnd`, `hodem`, `ten`, `ngaysinh`, `gioitinh`, `sodienthoai`, `diachi`, `tinhtrang`, `matongiao`, `madantoc`, `matrinhdongoaingu`, `maphongban`, `machucvu`, `maphanxuong`) VALUES (N'034234242', N'Phạm Như', N'Quỳnh', N'1998-2-2', FALSE, N'0423432424', N'Hải Phòng', N'Đang nghỉ thai sản', N'3', N'2', N'2', N'1', N'2', N'3');
INSERT INTO `quanlynhansu`.`nhanvien` (`cmnd`, `hodem`, `ten`, `ngaysinh`, `gioitinh`, `sodienthoai`, `diachi`, `tinhtrang`, `matongiao`, `madantoc`, `matrinhdongoaingu`, `maphongban`, `machucvu`, `maphanxuong`) VALUES (N'043242374', N'Đoàn Văn', N'Nguyên', N'1998-3-12', TRUE, N'0432423844', N'Hải Phòng', N'Đã nghỉ việc', N'3', N'2', N'3', N'1', N'3', N'2');

create table hopdonglaodong(
	mahopdong int auto_increment not null primary key,
    maloaihopdong int not null,
    manhanvien int not null,
    ngayky date,
    ngayhethieuluc date,
    tinhtrang nvarchar(100) default "",
    chuthich nvarchar(100) default "",
    foreign key (maloaihopdong) references danhmucloaihopdong(ma),
    foreign key (manhanvien) references nhanvien(ma)
);
INSERT INTO `quanlynhansu`.`hopdonglaodong` (`maloaihopdong`, `manhanvien`, `ngayky`, `ngayhethieuluc`, `tinhtrang`) VALUES ('1', '3', '2010-1-1', '2011-1-1', 'Đã hết hạn');
INSERT INTO `quanlynhansu`.`hopdonglaodong` (`maloaihopdong`, `manhanvien`, `ngayky`, `ngayhethieuluc`, `tinhtrang`) VALUES ('2', '2', '2010-1-1', '2020-1-1', 'Còn hiệu lực');
INSERT INTO `quanlynhansu`.`hopdonglaodong` (`maloaihopdong`, `manhanvien`, `ngayky`, `ngayhethieuluc`, `tinhtrang`) VALUES ('3', '1', '2010-1-1', '2050-1-1', 'Vĩnh viễn');
alter table hopdonglaodong add luongcoban int default 0;
UPDATE `quanlynhansu`.`hopdonglaodong` SET `luongcoban` = '3600000' WHERE (`mahopdong` = '1');
UPDATE `quanlynhansu`.`hopdonglaodong` SET `luongcoban` = '4000000' WHERE (`mahopdong` = '2');
UPDATE `quanlynhansu`.`hopdonglaodong` SET `luongcoban` = '5000000' WHERE (`mahopdong` = '3');


create table phucapnhanvien(
	ma int not null primary key auto_increment,
   manhanvien int not null,
   maphucap int not null,
   ngaybatdau date,
   ngayketthuc date,
   cancu nvarchar(100) default"",
   mucphucap int default 0,
   foreign key (manhanvien) references nhanvien(ma),
   foreign key (maphucap) references danhmucphucap (ma)
   
);
INSERT INTO `quanlynhansu`.`phucapnhanvien` (`manhanvien`, `maphucap`, `ngaybatdau`, `ngayketthuc`, `cancu`) VALUES ('1', '4', '2010-1-1', '2020-1-1', 'Tình hình công việc');
INSERT INTO `quanlynhansu`.`phucapnhanvien` (`manhanvien`, `maphucap`, `ngaybatdau`, `ngayketthuc`, `cancu`) VALUES ('2', '3', '2010-1-1', '2020-1-1', 'Tình hình công việc');
INSERT INTO `quanlynhansu`.`phucapnhanvien` (`manhanvien`, `maphucap`, `ngaybatdau`, `ngayketthuc`, `cancu`) VALUES ('3', '2', '2010-1-1', '2020-1-1', 'Tình hình công việc');
INSERT INTO `quanlynhansu`.`phucapnhanvien` (`manhanvien`, `maphucap`, `ngaybatdau`, `ngayketthuc`, `cancu`) VALUES ('4', '1', '2010-1-1', '2020-1-1', 'Tình hình công việc');
INSERT INTO `quanlynhansu`.`phucapnhanvien` (`manhanvien`, `maphucap`, `ngaybatdau`, `ngayketthuc`, `cancu`) VALUES ('1', '5', '2010-1-1', '2020-1-1', 'Tình hình công việc');



create table khenthuong(
	ma int primary key auto_increment,
    manhanvien int not null,
    ngay date,
    makhenthuong int not null,
    chuthich nvarchar(100) default "",
    foreign key (manhanvien) references nhanvien(ma),
    foreign key (makhenthuong) references danhmuckhenthuong(ma)
    
);
INSERT INTO `quanlynhansu`.`khenthuong` (`manhanvien`, `ngay`, `makhenthuong`) VALUES ('1', '2010-1-1', '1');
INSERT INTO `quanlynhansu`.`khenthuong` (`manhanvien`, `ngay`, `makhenthuong`) VALUES ('2', '2015-1-11', '2');
INSERT INTO `quanlynhansu`.`khenthuong` (`manhanvien`, `ngay`, `makhenthuong`) VALUES ('3', '2016-8-3', '3');
INSERT INTO `quanlynhansu`.`khenthuong` (`manhanvien`, `ngay`, `makhenthuong`) VALUES ('3', '2019-1-1', '2');

create table kyluat(
	ma int primary key auto_increment,
    manhanvien int not null,
    ngay date,
    makyluat int not null,
    chuthich nvarchar(100) default "",
    foreign key (manhanvien) references nhanvien(ma),
    foreign key (makyluat) references danhmuckyluat(ma)
    
);
INSERT INTO `quanlynhansu`.`kyluat` (`manhanvien`, `ngay`, `makyluat`) VALUES ('1', '2010-1-1', '1');
INSERT INTO `quanlynhansu`.`kyluat` (`manhanvien`, `ngay`, `makyluat`) VALUES ('2', '2015-1-11', '2');
INSERT INTO `quanlynhansu`.`kyluat` (`manhanvien`, `ngay`, `makyluat`) VALUES ('3', '2016-8-3', '3');
INSERT INTO `quanlynhansu`.`kyluat` (`manhanvien`, `ngay`, `makyluat`) VALUES ('3', '2019-1-1', '2');


create table bangchamcong(
	ma int primary key auto_increment,
    manhanvien int not null,
    macalamviec int not null,
    ngay date,
    comat bit,
    sophutdenmuon int,
    sophutvesom int,
    foreign key(macalamviec) references danhmuccalamviec(ma),
    foreign key(manhanvien) references nhanvien(ma)
);
INSERT INTO `quanlynhansu`.`bangchamcong` (`manhanvien`, `macalamviec`, `ngay`, `comat`, `sophutdenmuon`, `sophutvesom`) VALUES ('1', '1', '2010-1-1', TRUE, '1', '1');
INSERT INTO `quanlynhansu`.`bangchamcong` (`manhanvien`, `macalamviec`, `ngay`, `comat`, `sophutdenmuon`, `sophutvesom`) VALUES ('2', '2', '2010-1-1', TRUE, '0', '2');
INSERT INTO `quanlynhansu`.`bangchamcong` (`manhanvien`, `macalamviec`, `ngay`, `comat`, `sophutdenmuon`, `sophutvesom`) VALUES ('3', '3', '2010-1-1', TRUE, '10', '3');
INSERT INTO `quanlynhansu`.`bangchamcong` (`manhanvien`, `macalamviec`, `ngay`, `comat`, `sophutdenmuon`, `sophutvesom`) VALUES ('4', '4', '2010-1-1', TRUE, '60', '4');


create table bangtangca(
	ma int primary key auto_increment,
    manhanvien int not null,
    ngay date,
    giobatdau datetime,
    gioketthuc datetime,
    phantramtangca int ,
    foreign key (manhanvien) references nhanvien(ma)
);
INSERT INTO `quanlynhansu`.`bangtangca` (`manhanvien`, `ngay`, `giobatdau`, `gioketthuc`, `phantramtangca`) VALUES ('1', '2010-1-1', '2010-1-1 6:00:00', '2010-1-1 6:30:00', '100');
INSERT INTO `quanlynhansu`.`bangtangca` (`manhanvien`, `ngay`, `giobatdau`, `gioketthuc`, `phantramtangca`) VALUES ('2', '2010-1-1', '2010-1-1 6:00:00', '2010-1-1 6:30:00', '50');
INSERT INTO `quanlynhansu`.`bangtangca` (`manhanvien`, `ngay`, `giobatdau`, `gioketthuc`, `phantramtangca`) VALUES ('3', '2010-1-1', '2010-1-1 6:00:00', '2010-1-1 6:30:00', '10');
INSERT INTO `quanlynhansu`.`bangtangca` (`manhanvien`, `ngay`, `giobatdau`, `gioketthuc`, `phantramtangca`) VALUES ('4', '2010-1-1', '2010-1-1 6:00:00', '2010-1-1 6:30:00', '20');

 
create table nghi(
	ma int primary key auto_increment,
    manhanvien int not null,
    maloainghi int not null,
    ngay date,
    chuthich nvarchar(100) default "",
    foreign key (manhanvien) references nhanvien(ma),
    foreign key (maloainghi) references danhmucloainghi(ma)
);
INSERT INTO `quanlynhansu`.`nghi` (`manhanvien`, `maloainghi`, `ngay`) VALUES ('1', '4', '2010-1-1');
INSERT INTO `quanlynhansu`.`nghi` (`manhanvien`, `maloainghi`, `ngay`) VALUES ('2', '3', '2010-1-1');
INSERT INTO `quanlynhansu`.`nghi` (`manhanvien`, `maloainghi`, `ngay`) VALUES ('3', '2', '2010-1-1');
INSERT INTO `quanlynhansu`.`nghi` (`manhanvien`, `maloainghi`, `ngay`) VALUES ('4', '1', '2010-1-1');
INSERT INTO `quanlynhansu`.`nghi` (`manhanvien`, `maloainghi`, `ngay`) VALUES ('1', '2', '2010-1-1');


create table quatrinhcongtac(
	ma int primary key auto_increment,
    manhanvien int not null,
    ngaybatdau date,
    ngayketthuc date,
    donvicongtac nvarchar(100) default "",
    foreign key (manhanvien) references nhanvien(ma)
);
INSERT INTO `quanlynhansu`.`quatrinhcongtac` (`manhanvien`, `ngaybatdau`, `ngayketthuc`, `donvicongtac`) VALUES ('1', '2010-1-1', '2020-1-1', 'Công ty Rengina');
INSERT INTO `quanlynhansu`.`quatrinhcongtac` (`manhanvien`, `ngaybatdau`, `ngayketthuc`, `donvicongtac`) VALUES ('2', '2010-1-1', '2020-1-1', 'Chi nhánh bên Nhật');
INSERT INTO `quanlynhansu`.`quatrinhcongtac` (`manhanvien`, `ngaybatdau`, `ngayketthuc`, `donvicongtac`) VALUES ('3', '2010-1-1', '2020-1-1', 'Chi nhánh số 4');
INSERT INTO `quanlynhansu`.`quatrinhcongtac` (`manhanvien`, `ngaybatdau`, `ngayketthuc`, `donvicongtac`) VALUES ('4', '2010-1-1', '2020-1-1', 'Công ty Nam Thuận');

create table cauhinhluong(
	cauhinh nvarchar (100)not null primary key,
    giatri int default 0
);
INSERT INTO `quanlynhansu`.`cauhinhluong` (`cauhinh`, `giatri`) VALUES ('Bảo hiểm y tế', '500000');
INSERT INTO `quanlynhansu`.`cauhinhluong` (`cauhinh`, `giatri`) VALUES ('Phần trăm BHXH', '5');
INSERT INTO `quanlynhansu`.`cauhinhluong` (`cauhinh`, `giatri`) VALUES ('Bảo hiểm thất nghiệp', '200000');
INSERT INTO `quanlynhansu`.`cauhinhluong` (`cauhinh`, `giatri`) VALUES ('Công đoàn', '50000');

create table luong(
	ma int primary key auto_increment,
    manhanvien int not null,
    thang int not null,
    socongthuong int default 0,
    thuongtangca int default 0,
    tongphucap int default 0,
    tongthuong int default 0,
    tongphat int default 0,
    khautru int default 0,
    thuclinh int default 0,
    datraluong bit default 0,
    foreign key (manhanvien) references nhanvien(ma)
);
INSERT INTO `quanlynhansu`.`luong` (`manhanvien`, `thang`) VALUES ('1', '1');
INSERT INTO `quanlynhansu`.`luong` (`manhanvien`, `thang`) VALUES ('1', '2');
INSERT INTO `quanlynhansu`.`luong` (`manhanvien`, `thang`) VALUES ('1', '3');








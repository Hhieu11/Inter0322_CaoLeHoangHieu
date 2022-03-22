-- cau 2 --
select * from nhan_vien 

where SUBSTRING(ho_va_ten,1,1) = 'H' or SUBSTRING(ho_va_ten,1,1) = 'T' or SUBSTRING(ho_va_ten,1,1) = 'K' and  length(ho_va_ten) <= 15;
-- cau3 --

select * from khach_hang
where (YEAR(CURDATE()) - YEAR(ngay_sinh)) >=18 and (YEAR(CURDATE()) - YEAR(ngay_sinh)) <=50 and dia_chi like "%Đà Nẵng%" or dia_chi like "%Quảng Trị%";

-- cau 4 --
SELECT kh.ma_khach_hang, kh.ho_ten, COUNT(kh.ho_ten) as  so_lan_dat_phong FROM khach_hang kh INNER JOIN loai_khach lk on kh.ma_loai_khach= lk.ma_loai_khach
INNER JOIN hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang WHERE lk.ten_loai_khach ='DIAMOND' 

group by kh.ho_ten 
order by so_lan_dat_phong asc;

-- cau 5 --
SELECT kh.ma_khach_hang, kh.ho_ten, hd.ma_hop_dong,
dv.ten_dich_vu, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc,
dv.chi_phi_thue + hdct.so_luong* dvdk.gia AS TONGTIEN
FROM khach_hang kh INNER JOIN hop_dong hd
on kh.ma_khach_hang = hd.ma_khach_hang INNER JOIN dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
INNER JOIN hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
INNER JOIN dich_vu_di_kem  dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
order by ma_khach_hang asc;


-- Cau 6 --
Select distinct dv.ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu 
from dich_vu dv  inner join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
where dv.ma_dich_vu not in (Select dv.ma_dich_vu 
from dich_vu dv inner join hop_dong hd on hd.ma_dich_vu = dv.ma_dich_vu

 where Year(ngay_lam_hop_dong) = 2021 and (month(ngay_lam_hop_dong) = 1 or month(ngay_lam_hop_dong) = 2 or month(ngay_lam_hop_dong) = 3))


-- where hd.ngay_lam_hop_dong between"2021-01-01"and "2021-03-03" --
;

-- cau 7 --

select  distinct dv.ma_dich_vu, ten_dich_vu, dien_tich ,so_nguoi_toi_da,  chi_phi_thue, ten_loai_dich_vu 
from dich_vu dv  inner join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
where dv.ma_dich_vu not in (Select dv.ma_dich_vu 
from dich_vu dv inner join hop_dong hd on hd.ma_dich_vu = dv.ma_dich_vu
where year(ngay_lam_hop_dong)=2021 
)
;

-- cau 8--
SELECT DISTINCT ho_ten FROM khach_hang;

-- cau 9 --
select month(ngay_lam_hop_dong)as thang, count(*)so_luong_khach_hang
from hop_dong
where year (ngay_lam_hop_dong)=2021
group by thang
;

-- cau 10 -- 
	 select DISTINCT hd.ma_hop_dong, ngay_lam_hop_dong,ngay_ket_thuc, tien_dat_coc  , dvdk.ten_dich_vu_di_kem ,ifnull(sum(so_luong), 0) as so_luong_dich_vu_di_kem
	 from hop_dong hd left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong=hd.ma_hop_dong
     
	 left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem=hdct.ma_dich_vu_di_kem
     group by hd.ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc
order by hd.ma_hop_dong asc;
	 
	 ;
     
     -- cau 11 --
     select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem
from dich_vu_di_kem dvdk
inner join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
inner join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
inner join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
inner join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
where kh.dia_chi like "%Vinh%" or kh.dia_chi like "%Quảng Ngãi%" and lk.ten_loai_khach = 'Diamond' ;
     
     
     -- cau 12 --
     Select hd.ma_hop_dong, nv.ho_ten as ho_ten_nhan_vien, kh.ho_ten as ho_ten_khach_hang, kh.so_dien_thoai, ten_dich_vu, ifnull(sum(so_luong), 0) as so_luong_dich_vu_di_kem, tien_dat_coc
from dich_vu dv right join hop_dong hd on dv.ma_dich_vu = hd.ma_dich_vu
				left join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
                left join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
				inner join khach_hang kh on hd.ma_khach_hang = kh.ma_khach_hang
                inner join nhan_vien nv on hd.ma_nhan_vien = nv.ma_nhan_vien
where dv.ma_dich_vu in (select dv.ma_dich_vu from dich_vu dv inner join hop_dong hd on dv.ma_dich_vu = hd.ma_dich_vu
					where (year(ngay_lam_hop_dong)=2020 and month(ngay_lam_hop_dong) in ("10", "11", "12")))
and dv.ma_dich_vu not in (select dv.ma_dich_vu from dich_vu dv inner join hop_dong hd on dv.ma_dich_vu = hd.ma_dich_vu
					where (year(ngay_lam_hop_dong)=2021 and month(ngay_lam_hop_dong) in (1, 2, 3, 4, 5, 6)))
group by hd.ma_hop_dong, nv.ho_ten, kh.ho_ten, kh.so_dien_thoai, ten_dich_vu;
     
     
     
-- 13 --

Select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, sum(hdct.so_luong) as so_luong_dich_vu_di_kem
from dich_vu_di_kem dvdk
inner join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by hdct.ma_dich_vu_di_kem
order by so_luong_dich_vu_di_kem desc
limit 2;

-- cau 15 --
select
from nhan_vien nv left join  trinh_do td on td.ma_trinh_do=nv.ma_trinh_do
                  left join bo_phan bp on bp.ma_bo_phan = nv.ma_bo_phan
                  
                  inner join hop_dong hd on hd.ma_hop_dong= 





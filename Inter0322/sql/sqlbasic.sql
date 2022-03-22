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
select dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue, ldv.ten_loai_dich_vu
from dich_vu dv inner join loai_dich_vu ldv
inner join hop_dong hd on hd.ma_dich_vu on dv.ma_dich_vu
where hd.ngay_lam_hop_dong between"2021-01-01"and "2021-03-03"

;

-- cau 8--
SELECT DISTINCT ho_ten FROM khach_hang
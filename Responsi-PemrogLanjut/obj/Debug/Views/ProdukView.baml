   M S B A M L   `   `   `  ????P  LResponsi-PemrogLanjut, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:Responsi_PemrogLanjut.ViewsResponsi_PemrogLanjut.Views  5      S.clr-namespace:Responsi_PemrogLanjut.ViewModels Responsi_PemrogLanjut.ViewModels  5      ,    &Responsi_PemrogLanjut.Views.ProdukView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:Responsi_PemrogLanjut.Views     5      E
viewmodels.clr-namespace:Responsi_PemrogLanjut.ViewModels     5      .??5      ? ???#808000  ? ColumnDefinitions  5   
   ?? 5      $
??auto ?6   ?? 5      $??* ?6    ? RowDefinitions 5   
   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   .+?5   
   ?? $??2??6   ???#556B2F$
??Left=?67   $??44??6R   
???   ?$	??Top=?5   #   $	??800??6;   ?? 5   
   $??Shapee Produk??6   $??0??5      $??0??5      $??2??5       $??20(?5!      $
??Bold"?5"      $??Center=?5#      $	??5,8q?61   ?? 5%   
   $??Masukkan Id??6   $??1??5&      $??0??5'      $??	10,15,0,1q?6$    ?? Padding$ 3q?5(      ?? 5*   
   -   5        $??TxtId??5*      $??5??5+      $??10,4,0,0q?6!   $??3q?5,      ??5-      ??  ?? Path$ CurrentProduk.Id? ?? Mode$ TwoWay=??? 5/   
   $??Masukkan Nama??6   $??1??50      $??1??51      $??135,15,467,1q?6$   $ 3q?52      ?? 53   
   -   5        $??TxtNama??53      $??2??54      $??1??55      $??119,0,454,1q?6$   $??3q?56      $??4??57   P   ??6   ?? $ CurrentProduk.Namebarang?$ TwoWay=?6P   ?? 59   
   $??Status Barang??6   $??1??5:      $??1??5;      $??383,15,223,1q?6$   $ 3q?5<      ?? 5>   
   -   5        $??	TxtStatus??5>      $??1??5?      $??1??5@      $??334,38,195,2q?6$   $??3q?5A      $??5??5B   R   ??6   ?? $  CurrentProduk.Statusbarang?$ TwoWay=?6R   ?? 5D   
    ?? Orientation$ Vertical=?6   $??5??5E      $??552,0,10,-93q?6"   $??1??68   $??2??6H   .+?5F      ?? -   5        $??btnAdd??5F      $	??Add??5G      $	??5,8q?5H      $??3q?5I      ??6!   ?? $ SaveCommand??? 5J      -   5        $??	btnSearch??5J      $??Search??5K      $	??5,8q?5L      $??3q?5M      ??6!   ?? $ SearchCommand??? 5N      -   5        $??	btnUpdate??5N      $??Update??5O      $	??5,8q?5P      $??3q?5Q      ??6!   ?? $ UpdateCommand??? 5R      -   5        $??	btnDelete??5R      $??Delete??5S      $	??5,8q?5T      $??3q?5U      ??6!   ?? $ DeleteCommand?5V      ?? 5X   
   $??
Notifikasi??6   $??6??5Y      $??1??5Z      $??46,36,596,-10q?6$   $ 3q?5[      ?? 5]   
   -   5        $??Notif??5]      $??6??5^      $??10,59,484,49q?6!   $??3q?5_      $??2??5`   2   ??6   ?? $ Message?62   &   System.Windows.Controls.DataGrid  5b   
   -	   5        $??dgProduk??5b         AutoGenerateColumns .  $??6??5d      $??23,157,454,-141q?6    $??3q?5e      $??2??6S   ??6   ?? $ 
ProdukList?$ TwoWay=?   Columns 5f      0  *System.Windows.Controls.DataGridTextColumn  5g      ,  &System.Windows.Controls.DataGridColumn   Header$ 	Produk Id??5h      	   Width5  /System.Windows.Controls.DataGridLengthConverter$
	 auto 6(   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 5i      ?? $ Id?  5j      $ Nama Barang??5k      $
	 auto 6*   
 5l      ?? $ 
Namebarang?  5m      $ Status Barang??5n      $
	 auto 6,   
 5o      ?? $ Statusbarang?5q      5s      5t      
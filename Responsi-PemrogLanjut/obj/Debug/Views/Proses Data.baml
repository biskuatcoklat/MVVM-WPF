   M S B A M L   `   `   `  ????P  LResponsi-PemrogLanjut, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:Responsi_PemrogLanjut.ViewsResponsi_PemrogLanjut.Views  5      S.clr-namespace:Responsi_PemrogLanjut.ViewModels Responsi_PemrogLanjut.ViewModels  5      -    'Responsi_PemrogLanjut.Views.Proses_Data   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:Responsi_PemrogLanjut.Views     5      E
viewmodels.clr-namespace:Responsi_PemrogLanjut.ViewModels     5        N? Title$  Proses_Data??5      .??5      ? ???#F2E7D5 ? ColumnDefinitions 5   
   ?? 5      $
??auto ?6   ?? 5      $??* ?6    ? RowDefinitions 5   
   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   ?? 5      $
??auto ?6   .+?5   
   ?? $??Data Produk??6   $??0??5      $??0??5      $??2??5      $??20(?5       $
??Bold"?5!      $??Center=?5"      $	??5,8q?61   &   System.Windows.Controls.DataGrid  5#   
   -   5        $??dgProduk??5#         AutoGenerateColumns .  $??6??5%      $??Center=?5&      $??3q?5'      $??2??6S   ??6   ??  ?? Path$ 
ProdukList? ?? Mode$ TwoWay=?   Columns 5(      0  *System.Windows.Controls.DataGridTextColumn  5)      ,  &System.Windows.Controls.DataGridColumn   Header$ 	Produk Id??5*         Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 6(   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 5+      ?? $ Id?  5,      $ Nama Barang??5-      $
 auto 6*   	 5.      ?? $ 
Namebarang?  5/      $ Status Barang??50      $
 auto 6,   	 51      ?? $ Statusbarang?53      54      55      
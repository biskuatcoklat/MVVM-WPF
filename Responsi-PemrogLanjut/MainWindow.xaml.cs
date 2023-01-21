using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Responsi_PemrogLanjut.ViewModels;
using Responsi_PemrogLanjut.Views;

namespace Responsi_PemrogLanjut
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        ProdukViewModel ViewModel;
        public MainWindow()
        {
            InitializeComponent();
            ViewModel = new ProdukViewModel();
            this.DataContext = ViewModel;
        }
        
        private void Button_Click_Home(object sender, RoutedEventArgs e)
        {
            Main.Content = new Views.First();

        }

        private void Button_Click_ProsesData(object sender, RoutedEventArgs e)
        {
            Main.Content = new Views.Home();
            ViewModel = new ProdukViewModel();
            this.DataContext = ViewModel;
        }

        private void Button_Click_DataBarang(object sender, RoutedEventArgs e)
        {
            Main.Content = new Views.Proses_Data();
            ViewModel = new ProdukViewModel();
            this.DataContext = ViewModel;
        }

        private void Button_Click_Konsumen(object sender, RoutedEventArgs e)
        {
            
        }

        private void Button_Click_Transaksi(object sender, RoutedEventArgs e)
        {

        }
    }
}

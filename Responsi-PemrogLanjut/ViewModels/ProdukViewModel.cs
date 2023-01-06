using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Responsi_PemrogLanjut.Models;
using Responsi_PemrogLanjut.Commands;
using System.Collections.ObjectModel;

namespace Responsi_PemrogLanjut.ViewModels
{
    public class ProdukViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }

        ProdukService ObjProdukService;
        public ProdukViewModel()
        {
            ObjProdukService = new ProdukService();
            LoadData();
            CurrentProduk = new Produk();
            saveCommand = new RelayCommand(Save);
            searchCommand = new RelayCommand(Search);
            updateCommand = new RelayCommand(Update);
            deleteCommand = new RelayCommand(Delete);

        }
        private ObservableCollection<Produk> produkList;

        public ObservableCollection<Produk> ProdukList
        {
            get { return produkList; }
            set { produkList = value; OnPropertyChanged("ProdukList"); }
        }

        private void LoadData()
        {
            ProdukList = new ObservableCollection<Produk>(ObjProdukService.GetAll());
        }

        private Produk currentProduk;
        public Produk CurrentProduk
        {
            get { return currentProduk; }
            set { currentProduk = value; OnPropertyChanged("CurrentProduk"); }
        }

        private string message;
        public string Message
        {
            get { return message; }
            set { message = value; OnPropertyChanged("Message"); }
        }

        private RelayCommand saveCommand;
        public RelayCommand SaveCommand
        {
            get { return saveCommand; }
        }

        public void Save()
        {
            try
            {
                var IsSaved = ObjProdukService.Tambah(currentProduk);
                LoadData();
                if ((bool)IsSaved)
                    Message = "Barang Tersimpan";
                else
                    Message = "Gagal tersimpan";
            }
            catch (Exception ex)
            {
                Message = ex.Message;
            }
        }

        private RelayCommand searchCommand;
        public RelayCommand SearchCommand
        {
            get { return searchCommand; }
        }

        public void Search()
        {
            try
            {
                var ObjProduk = ObjProdukService.Search(CurrentProduk.Id);

                if (ObjProduk != null)
                {
                    CurrentProduk.Namebarang = ObjProduk.Namebarang;
                    CurrentProduk.Statusbarang = ObjProduk.Statusbarang;
                }
                else
                    Message = "Not Found";
            }
            catch (Exception)
            {

            }
        }

        private RelayCommand updateCommand;
        public RelayCommand UpdateCommand
        {
            get { return updateCommand; }
        }

        public void Update()
        {
            try
            {
                var Isupdate = ObjProdukService.Update(CurrentProduk);
                if (Isupdate)
                {
                    Message = "Data sudah di ubah";
                    LoadData();
                }
                else
                {
                    Message = "Gagal di update";
                }
            }
            catch (Exception)
            {

            }

        }

        private RelayCommand deleteCommand;

        public RelayCommand DeleteCommand
        {
            get { return deleteCommand; }
        }

        public void Delete()
        {
            try
            {
                var IsDelete = ObjProdukService.Hapus(CurrentProduk.Id);
                if (IsDelete)
                {
                    Message = "Berhasil di Hapus";
                    LoadData();
                }
                else
                {
                    Message = "Gagal Hapus Data";
                }
            }
            catch
            {

            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Responsi_PemrogLanjut.Models
{
    public class Produk : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }

        private int id;
        public int Id
        {
            get { return id; }
            set { id = value; OnPropertyChanged("Id"); }
        }

        private string namebarang;
        public string Namebarang
        {
            get { return namebarang; }
            set { namebarang = value; OnPropertyChanged("Namebarang"); }
        }

        private string statusbarang;
        public string Statusbarang
        {
            get { return statusbarang; }
            set { statusbarang = value; OnPropertyChanged("Statusbarang"); }
        }
    }
}

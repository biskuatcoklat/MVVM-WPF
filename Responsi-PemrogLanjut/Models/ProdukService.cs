using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Responsi_PemrogLanjut.Models
{
    public class ProdukService
    {
        SqlConnection ObjSqlConnection;
        SqlCommand ObjSqlCommand;

        public ProdukService()
        {
            ObjSqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ProdukConnection"].ConnectionString);
            ObjSqlCommand = new SqlCommand();
            ObjSqlCommand.Connection = ObjSqlConnection;
            ObjSqlCommand.CommandType = CommandType.StoredProcedure;
        }

        public List<Produk> GetAll()
        {
            List<Produk> ObjProdukList = new List<Produk>();
            try
            {
                ObjSqlCommand.Parameters.Clear();
                ObjSqlCommand.CommandText = "udp_SelectAllProduk";
                ObjSqlConnection.Open();
                var ObjSqlDataReader = ObjSqlCommand.ExecuteReader();
                if (ObjSqlDataReader.HasRows)
                {
                    Produk ObjProduk = null;
                    while (ObjSqlDataReader.Read())
                    {
                        ObjProduk = new Produk();
                        ObjProduk.Id = ObjSqlDataReader.GetInt32(0);
                        ObjProduk.Namebarang = ObjSqlDataReader.GetString(1);
                        ObjProduk.Statusbarang = ObjSqlDataReader.GetString(2);

                        ObjProdukList.Add(ObjProduk);
                    }
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                ObjSqlConnection.Close();
            }
            return ObjProdukList;
        }

        public bool Tambah(Produk ObjNewProduk)
        {
            bool IsAdded = false;

            try
            {
                ObjSqlCommand.Parameters.Clear();
                ObjSqlCommand.CommandText = "udp_InsertProduk";
                ObjSqlCommand.Parameters.AddWithValue("@Id", ObjNewProduk.Id);
                ObjSqlCommand.Parameters.AddWithValue("@Namebarang", ObjNewProduk.Namebarang);
                ObjSqlCommand.Parameters.AddWithValue("@Statusbarang", ObjNewProduk.Statusbarang);

                ObjSqlConnection.Open();
                int NoOfRowsAffected = ObjSqlCommand.ExecuteNonQuery();
                IsAdded = NoOfRowsAffected > 0;
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                ObjSqlConnection.Close();
            }
            return IsAdded;
        }

        public bool Update(Produk ObjProdukUpdate)
        {
            bool IsUpdated = false;

            try
            {
                ObjSqlCommand.Parameters.Clear();
                ObjSqlCommand.CommandText = "udp_UpdateProduk";
                ObjSqlCommand.Parameters.AddWithValue("@Id", ObjProdukUpdate.Id);
                ObjSqlCommand.Parameters.AddWithValue("@Namebarang", ObjProdukUpdate.Namebarang);
                ObjSqlCommand.Parameters.AddWithValue("@Statusbarang", ObjProdukUpdate.Statusbarang);

                ObjSqlConnection.Open();
                int NoOfRowsAffected = ObjSqlCommand.ExecuteNonQuery();
                IsUpdated = NoOfRowsAffected > 0;
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                ObjSqlConnection.Close();
            }
            return IsUpdated;
        }

        public bool Hapus(int id)
        {
            bool IsDeleted = false;
            try
            {
                ObjSqlCommand.Parameters.Clear();
                ObjSqlCommand.CommandText = "udp_DeleteProduk";
                ObjSqlCommand.Parameters.AddWithValue("@Id", id);
                int NoOfRowsAffected = ObjSqlCommand.ExecuteNonQuery();
                IsDeleted = NoOfRowsAffected > 0;
            }

            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                ObjSqlConnection.Close();
            }
            return IsDeleted;
        }

        public Produk Search(int id)
        {
            Produk ObjProduk = null;

            try
            {
                ObjSqlCommand.Parameters.Clear();
                ObjSqlCommand.CommandText = "udp_SelectProdukById";
                ObjSqlCommand.Parameters.AddWithValue("@Id", id);

                ObjSqlConnection.Open();
                var ObjSqlDataReader = ObjSqlCommand.ExecuteReader();
                if (ObjSqlDataReader.HasRows)
                {
                    ObjSqlDataReader.Read();
                    ObjProduk = new Produk();
                    ObjProduk.Id = ObjSqlDataReader.GetInt32(0);
                    ObjProduk.Namebarang = ObjSqlDataReader.GetString(1);
                    ObjProduk.Statusbarang = ObjSqlDataReader.GetString(2);
                }
                ObjSqlDataReader.Close();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                ObjSqlConnection.Close();
            }
            return ObjProduk;
        }
        internal object Add(Produk currentProduk)
        {
            throw new NotImplementedException();
        }

    }
}

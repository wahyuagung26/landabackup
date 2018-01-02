-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: landa_pos_dpt
-- ------------------------------------------------------
-- Server version 	5.7.20-0ubuntu0.16.04.1
-- Date: Tue, 02 Jan 2018 07:54:15 +0000

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acc_det_jurnal`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_det_jurnal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_t_jurnal_id` int(11) NOT NULL,
  `m_akun_id` int(11) DEFAULT NULL,
  `m_cabang_id` int(11) DEFAULT NULL,
  `kredit` int(11) DEFAULT NULL,
  `debet` int(11) DEFAULT NULL,
  `keterangan` varchar(115) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_det_jurnal`
--

LOCK TABLES `acc_det_jurnal` WRITE;
/*!40000 ALTER TABLE `acc_det_jurnal` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `acc_det_jurnal` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `acc_det_pemasukan`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_det_pemasukan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_t_pemasukan_id` int(11) NOT NULL,
  `m_akun_id` int(11) DEFAULT NULL,
  `kredit` int(11) DEFAULT NULL,
  `keterangan` varchar(115) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_det_pemasukan`
--

LOCK TABLES `acc_det_pemasukan` WRITE;
/*!40000 ALTER TABLE `acc_det_pemasukan` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `acc_det_pemasukan` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `acc_det_pengeluaran`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_det_pengeluaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_akun_id` int(11) NOT NULL,
  `acc_t_pengeluaran_id` int(11) NOT NULL,
  `debet` int(11) DEFAULT NULL,
  `keterangan` varchar(115) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_det_pengeluaran`
--

LOCK TABLES `acc_det_pengeluaran` WRITE;
/*!40000 ALTER TABLE `acc_det_pengeluaran` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `acc_det_pengeluaran` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `acc_det_tutup_tahun`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_det_tutup_tahun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_tutup_tahun_id` int(15) DEFAULT NULL,
  `m_akun_id` int(15) DEFAULT NULL,
  `debet` int(15) DEFAULT NULL,
  `kredit` int(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_det_tutup_tahun`
--

LOCK TABLES `acc_det_tutup_tahun` WRITE;
/*!40000 ALTER TABLE `acc_det_tutup_tahun` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `acc_det_tutup_tahun` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `acc_t_jurnal`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_t_jurnal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` int(45) DEFAULT NULL,
  `no_transaksi` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  `m_cabang_id` int(11) DEFAULT NULL,
  `keterangan` varchar(145) CHARACTER SET utf8 DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `total_kredit` int(11) DEFAULT NULL,
  `total_debet` int(11) DEFAULT NULL,
  `m_supplier_id` int(11) DEFAULT NULL,
  `m_customer_id` int(11) DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `is_pos` int(11) DEFAULT NULL,
  `id_pos_pembelian` int(11) DEFAULT NULL,
  `id_pos_penjualan` int(11) DEFAULT NULL,
  `id_pos_notabayar_customer` int(11) DEFAULT NULL,
  `id_pos_notabayar_supplier` int(11) DEFAULT NULL,
  `id_pos_opname` int(11) DEFAULT NULL,
  `id_pos_retur_penjualan` int(11) DEFAULT NULL,
  `id_pos_retur_pembelian` int(11) DEFAULT NULL,
  `created_at` int(15) DEFAULT NULL,
  `created_by` int(15) DEFAULT NULL,
  `modified_at` int(15) DEFAULT NULL,
  `modified_by` int(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_t_jurnal`
--

LOCK TABLES `acc_t_jurnal` WRITE;
/*!40000 ALTER TABLE `acc_t_jurnal` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `acc_t_jurnal` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `acc_t_pemasukan`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_t_pemasukan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` int(45) DEFAULT NULL,
  `no_transaksi` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  `m_customer_id` int(11) DEFAULT NULL,
  `m_supplier_id` int(11) DEFAULT NULL,
  `m_jenis_pembayaran_id` int(11) DEFAULT NULL,
  `m_cabang_id` int(11) DEFAULT NULL,
  `m_akun_id` int(11) DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `diterima_dari` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` int(15) DEFAULT NULL,
  `created_by` int(15) DEFAULT NULL,
  `modified_at` int(15) DEFAULT NULL,
  `modified_by` int(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_t_pemasukan`
--

LOCK TABLES `acc_t_pemasukan` WRITE;
/*!40000 ALTER TABLE `acc_t_pemasukan` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `acc_t_pemasukan` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `acc_t_pengeluaran`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_t_pengeluaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` int(45) DEFAULT NULL,
  `no_transaksi` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  `m_supplier_id` int(11) DEFAULT NULL,
  `m_customer_id` int(11) DEFAULT NULL,
  `m_jenis_pembayaran_id` int(11) DEFAULT NULL,
  `m_cabang_id` int(11) DEFAULT NULL,
  `m_akun_id` int(11) DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `dibayar` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` int(15) DEFAULT NULL,
  `created_by` int(15) DEFAULT NULL,
  `modified_at` int(15) DEFAULT NULL,
  `modified_by` int(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_t_pengeluaran`
--

LOCK TABLES `acc_t_pengeluaran` WRITE;
/*!40000 ALTER TABLE `acc_t_pengeluaran` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `acc_t_pengeluaran` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `acc_t_transfer`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_t_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_urut` int(11) DEFAULT NULL,
  `no_transaksi` varchar(25) DEFAULT NULL,
  `m_akun_asal` int(11) DEFAULT NULL,
  `m_akun_tujuan` int(11) DEFAULT NULL,
  `m_cabang_id` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_t_transfer`
--

LOCK TABLES `acc_t_transfer` WRITE;
/*!40000 ALTER TABLE `acc_t_transfer` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `acc_t_transfer` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `acc_t_tutup_tahun`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_t_tutup_tahun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_cabang_id` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `hasil_lr` int(15) DEFAULT NULL,
  `akun_ikhtisar_id` int(11) DEFAULT NULL,
  `akun_pemindahan_modul_id` int(11) DEFAULT NULL,
  `created_at` int(15) DEFAULT NULL,
  `created_by` int(15) DEFAULT NULL,
  `modified_at` int(15) DEFAULT NULL,
  `modified_by` int(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_t_tutup_tahun`
--

LOCK TABLES `acc_t_tutup_tahun` WRITE;
/*!40000 ALTER TABLE `acc_t_tutup_tahun` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `acc_t_tutup_tahun` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `dokumen_foto`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dokumen_foto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text,
  `pengeluaran_id` int(11) DEFAULT NULL,
  `pemasukan_id` int(11) DEFAULT NULL,
  `jurnal_id` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokumen_foto`
--

LOCK TABLES `dokumen_foto` WRITE;
/*!40000 ALTER TABLE `dokumen_foto` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `dokumen_foto` VALUES (1,'1_screen-shot-2017-12-08-at-15.46.22.png',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dokumen_foto` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `m_akses_cabang`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_akses_cabang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_roles_id` int(11) NOT NULL,
  `m_cabang_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_m_akses_cabang_m_roles1_idx1` (`m_roles_id`),
  KEY `fk_m_akses_cabang_m_cabang1_idx` (`m_cabang_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_akses_cabang`
--

LOCK TABLES `m_akses_cabang` WRITE;
/*!40000 ALTER TABLE `m_akses_cabang` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `m_akses_cabang` VALUES (16,10,50),(23,1,45),(22,1,47),(21,1,49),(20,1,50),(19,1,51),(18,1,52),(17,1,53);
/*!40000 ALTER TABLE `m_akses_cabang` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `m_akun`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_akun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_cabang_id` int(11) DEFAULT NULL,
  `kode` varchar(15) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis` varchar(15) DEFAULT NULL,
  `tipe` varchar(15) DEFAULT NULL,
  `tipe_arus` varchar(50) DEFAULT NULL,
  `keterangan` varchar(225) DEFAULT NULL,
  `parent_id` int(5) DEFAULT NULL,
  `level` int(5) DEFAULT NULL,
  `is_tipe` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_akun`
--

LOCK TABLES `m_akun` WRITE;
/*!40000 ALTER TABLE `m_akun` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `m_akun` VALUES (1,NULL,'110','Kas',NULL,'Cash & Bank',NULL,NULL,0,1,1,0),(2,NULL,'120','Bank',NULL,'Cash & Bank',NULL,NULL,0,1,1,0),(3,NULL,'130','Piutang Dagang',NULL,'Receivable',NULL,NULL,0,1,1,0),(4,NULL,'140','Persediaan',NULL,'Persediaan',NULL,NULL,0,1,1,0),(5,NULL,'150','Biaya Untuk Dimuka',NULL,'No Type',NULL,NULL,0,1,1,0),(6,NULL,'160','Investasi Jangka Panjang',NULL,'No Type',NULL,NULL,0,1,1,0),(7,NULL,'170','Harga Tetap Berwujud',NULL,'No Type',NULL,NULL,0,1,1,0),(8,NULL,'180','Harga Tetap Tidak Berwujud',NULL,'No Type',NULL,NULL,0,1,1,0),(9,NULL,'190','Harta Lainnya',NULL,'No Type',NULL,NULL,0,1,1,0),(10,NULL,'210','Hutang Lancar',NULL,'Payable',NULL,NULL,0,1,1,0),(11,NULL,'220','Pendapatan Yang Diterima Dimuka',NULL,'Payable',NULL,NULL,0,1,1,0),(12,NULL,'230','Hutang Jangka Panjang',NULL,'Payable',NULL,NULL,0,1,1,0),(13,NULL,'240','Hutang Lainnya',NULL,'Payable',NULL,NULL,0,1,1,0),(14,NULL,'310','Modal',NULL,'Modal',NULL,NULL,0,1,1,0),(15,NULL,'320','Laba',NULL,'Modal',NULL,NULL,0,1,1,0),(16,NULL,'410','Pendapatan Usaha',NULL,'Pendapatan',NULL,NULL,0,1,1,0),(17,NULL,'411','Pendapatan Non Usaha',NULL,'Pendapatan',NULL,NULL,0,1,1,0),(18,NULL,'420','Pendapatan Lain',NULL,'Pendapatan',NULL,NULL,0,1,1,0),(19,NULL,'510','Biaya Produksi',NULL,'Hpp',NULL,NULL,0,1,1,0),(20,NULL,'520','Biaya Lain',NULL,'Biaya',NULL,NULL,0,1,1,0),(21,NULL,'610','Biaya Operasiaonal',NULL,'Biaya',NULL,NULL,0,1,1,0),(22,NULL,'660','Baiaya Non Operasiaonal',NULL,'Biaya',NULL,NULL,0,1,1,0),(23,NULL,'810','Pendapatan Luar Usaha',NULL,'Pendapatan',NULL,NULL,0,1,1,0),(24,NULL,'910','Pengeluaran Luar Usaha',NULL,'Biaya',NULL,NULL,0,1,1,0),(25,NULL,'110-02','Kas',NULL,'Cash & Bank',NULL,NULL,1,2,0,0),(26,NULL,'120-01','Bank',NULL,'Cash & Bank',NULL,NULL,2,2,0,0),(27,NULL,'130-01','Piutang Giro',NULL,'Receivable',NULL,NULL,3,2,0,0),(28,NULL,'130-02','Piutang Usaha',NULL,'Receivable',NULL,NULL,3,2,0,0),(29,NULL,'130-03','Cadangan Kerugian Piutang',NULL,'Receivable',NULL,NULL,3,2,0,0),(30,NULL,'130-04','Piutang Non Usaha',NULL,'Receivable',NULL,NULL,3,2,0,0),(31,NULL,'130-05','PIUTANG KARYAWAN (P. ARIP)',NULL,'Receivable',NULL,NULL,3,2,0,0),(32,NULL,'130-06','PIUTANG KARYAWAN (DICKY)',NULL,'Receivable',NULL,NULL,3,2,0,0),(33,NULL,'130-07','PIUTANG KARYAWAN (IWAN)',NULL,'Receivable',NULL,NULL,3,2,0,0),(34,NULL,'130-08','PIUTANG AGRO PS (P. SAMBAS WIDIYANTO)',NULL,'Receivable',NULL,NULL,3,2,0,0),(35,NULL,'130-09','PIUTANG KARYAWAN (EMA)',NULL,'Receivable',NULL,NULL,3,2,0,0),(36,NULL,'130-10','PIUTANG KARYAWAN (P. EFENDI)',NULL,'Receivable',NULL,NULL,3,2,0,0),(37,NULL,'130-11','PIUTANG KARYAWAN (EDDY)',NULL,'Receivable',NULL,NULL,3,2,0,0),(38,NULL,'140-01','PERSEDIAAN BOGASARI',NULL,'Persediaan',NULL,NULL,4,2,0,0),(39,NULL,'140-02','PERSEDIAAN CARGIL',NULL,'Persediaan',NULL,NULL,4,2,0,0),(40,NULL,'140-03','PERSEDIAAN COMFEED',NULL,'Persediaan',NULL,NULL,4,2,0,0),(41,NULL,'140-04','PERSEDIAAN INDOCHEM',NULL,'Persediaan',NULL,NULL,4,2,0,0),(42,NULL,'140-05','PERSEDIAAN MALINDO',NULL,'Persediaan',NULL,NULL,4,2,0,0),(43,NULL,'140-06','PERSEDIAAN NEW HOPE',NULL,'Persediaan',NULL,NULL,4,2,0,0),(44,NULL,'140-07','PERSEDIAAN POKPAND',NULL,'Persediaan',NULL,NULL,4,2,0,0),(45,NULL,'140-08','PERSEDIAAN SIERAD',NULL,'Persediaan',NULL,NULL,4,2,0,0),(46,NULL,'140-09','PERSEDIAAN WONOKOYO',NULL,'Persediaan',NULL,NULL,4,2,0,0),(47,NULL,'140-10','Persediaan 1',NULL,'Persediaan',NULL,NULL,4,2,0,0),(48,NULL,'140-11','PERSEDIAAN MEDION',NULL,'Persediaan',NULL,NULL,4,2,0,0),(49,NULL,'140-12','PERSEDIAAN MENSANA',NULL,'Persediaan',NULL,NULL,4,2,0,0),(50,NULL,'140-13','PERSEDIAAN SANBE',NULL,'Persediaan',NULL,NULL,4,2,0,0),(51,NULL,'140-14','PERSEDIAAN AGRINUSA JAYA SENTOSA',NULL,'Persediaan',NULL,NULL,4,2,0,0),(52,NULL,'140-15','PERSEDIAAN AGRO MAKMUR SENTOSA',NULL,'Persediaan',NULL,NULL,4,2,0,0),(53,NULL,'140-16','PERSEDIAAN MULYAFEED',NULL,'Persediaan',NULL,NULL,4,2,0,0),(54,NULL,'140-17','PERSEDIAAN MULIA PROFEED',NULL,'Persediaan',NULL,NULL,4,2,0,0),(55,NULL,'140-18','Persediaan 2',NULL,'Persediaan',NULL,NULL,4,2,0,0),(56,NULL,'140-19','PERSEDIAAN JAGUNG',NULL,'Persediaan',NULL,NULL,4,2,0,0),(57,NULL,'140-20','PERSEDIAAN KATUL',NULL,'Persediaan',NULL,NULL,4,2,0,0),(58,NULL,'140-21','PERSEDIAAN BAHAN BAKU',NULL,'Persediaan',NULL,NULL,4,2,0,0),(59,NULL,'140-22','PERSEDIAAN PREMIX',NULL,'Persediaan',NULL,NULL,4,2,0,0),(60,NULL,'140-23','PERSEDIAAN OTHERS',NULL,'Persediaan',NULL,NULL,4,2,0,0),(61,NULL,'140-24','PERSEDIAAN SGI',NULL,'Persediaan',NULL,NULL,4,2,0,0),(62,NULL,'140-25','PERSEDIAAN HCS',NULL,'Persediaan',NULL,NULL,4,2,0,0),(63,NULL,'140-26','PERSEDIAAN TONGKAT EMAS',NULL,'Persediaan',NULL,NULL,4,2,0,0),(64,NULL,'140-27','PERSEDIAAN SAVETA',NULL,'Persediaan',NULL,NULL,4,2,0,0),(65,NULL,'140-28','PERSEDIAAN EASH HOPE',NULL,'Persediaan',NULL,NULL,4,2,0,0),(66,NULL,'140-29','PERSEDIAAN COMFEED',NULL,'Persediaan',NULL,NULL,4,2,0,0),(67,NULL,'140-30','PERSEDIAAN MANTA',NULL,'Persediaan',NULL,NULL,4,2,0,0),(68,NULL,'140-31','Persediaan 4',NULL,'Persediaan',NULL,NULL,4,2,0,0),(69,NULL,'140-32','PERSEDIAAN NASINDO (SULAIMAN)',NULL,'Persediaan',NULL,NULL,4,2,0,0),(70,NULL,'150-01','Pajak Dibayar di Muka',NULL,'No Type',NULL,NULL,5,2,0,0),(71,NULL,'150-02','Asuransi Dibayar di Muka',NULL,'No Type',NULL,NULL,5,2,0,0),(72,NULL,'160-01','Investasi Saham',NULL,'No Type',NULL,NULL,6,2,0,0),(73,NULL,'160-02','Investasi Obligasi',NULL,'No Type',NULL,NULL,6,2,0,0),(74,NULL,'170-01','Tanah',NULL,'No Type',NULL,NULL,7,2,0,0),(75,NULL,'170-02','Bangunan',NULL,'No Type',NULL,NULL,7,2,0,0),(76,NULL,'170-03','Akumulasi Penyusutan Bangunan',NULL,'No Type',NULL,NULL,7,2,0,0),(77,NULL,'170-04','TOKO',NULL,'No Type',NULL,NULL,7,2,0,0),(78,NULL,'170-05','AKUMULASI PENYUSUTAN TOKO',NULL,'No Type',NULL,NULL,7,2,0,0),(79,NULL,'170-06','Mesin dan Peralatan',NULL,'No Type',NULL,NULL,7,2,0,0),(80,NULL,'170-07','Akumulasi Penyusutan Mesin dan Peralatan',NULL,'No Type',NULL,NULL,7,2,0,0),(81,NULL,'170-08','Mebel dan Alat Tulis Kantor',NULL,'No Type',NULL,NULL,7,2,0,0),(82,NULL,'170-09','Akumulasi Penyusutan Mebel dan ATK',NULL,'No Type',NULL,NULL,7,2,0,0),(83,NULL,'170-10','Kendaraan',NULL,'No Type',NULL,NULL,7,2,0,0),(84,NULL,'170-11','Akumulasi Penyusutan Kendaraan',NULL,'No Type',NULL,NULL,7,2,0,0),(85,NULL,'170-12','MOBIL PICK UP GRANDMAX',NULL,'No Type',NULL,NULL,7,2,0,0),(86,NULL,'170-13','AKUMULASI PENYUSUTAN MOBIL PICK UPGRANDMAX',NULL,'No Type',NULL,NULL,7,2,0,0),(87,NULL,'170-14','Harta Lainnya',NULL,'No Type',NULL,NULL,7,2,0,0),(88,NULL,'170-15','Akumulasi Penyusutan Harta Lainnya',NULL,'No Type',NULL,NULL,7,2,0,0),(89,NULL,'180-01','Hak Merek',NULL,'No Type',NULL,NULL,8,2,0,0),(90,NULL,'180-02','Hak Cipta',NULL,'No Type',NULL,NULL,8,2,0,0),(91,NULL,'180-03','Good Will',NULL,'No Type',NULL,NULL,8,2,0,0),(92,NULL,'190-01','Biaya Pra Operasi dan Operasi',NULL,'No Type',NULL,NULL,9,2,0,0),(93,NULL,'190-02','Akumulasi Amortisasi Pra Operasi dan Operasi',NULL,'No Type',NULL,NULL,9,2,0,0),(94,NULL,'210-01','Wesel Bayar',NULL,'Payable',NULL,NULL,10,2,0,0),(95,NULL,'210-02','Hutang Giro',NULL,'Payable',NULL,NULL,10,2,0,0),(96,NULL,'210-03','Hutang Usaha',NULL,'Payable',NULL,NULL,10,2,0,0),(97,NULL,'210-04','Hutang Konsinyasi',NULL,'Payable',NULL,NULL,10,2,0,0),(98,NULL,'210-05','Uang Muka Penjualan',NULL,'Payable',NULL,NULL,10,2,0,0),(99,NULL,'210-06','Hutang Deviden',NULL,'Payable',NULL,NULL,10,2,0,0),(100,NULL,'210-07','Hutang Bunga',NULL,'Payable',NULL,NULL,10,2,0,0),(101,NULL,'210-08','Biaya yang Masih Harus Dibayar',NULL,'Payable',NULL,NULL,10,2,0,0),(102,NULL,'210-09','Kartu Kredit',NULL,'Payable',NULL,NULL,10,2,0,0),(103,NULL,'210-10','Hutang Pajak Penjualan',NULL,'Payable',NULL,NULL,10,2,0,0),(104,NULL,'210-11','Hutang Komisi Penjualan',NULL,'Payable',NULL,NULL,10,2,0,0),(105,NULL,'210-12','Hutang Gaji',NULL,'Payable',NULL,NULL,10,2,0,0),(106,NULL,'210-13','Hutang Jangka Pendek',NULL,'Payable',NULL,NULL,10,2,0,0),(107,NULL,'220-01','Sewa Diterima di Muka',NULL,'Payable',NULL,NULL,11,2,0,0),(108,NULL,'230-01','Pinjaman Hipotik',NULL,'Payable',NULL,NULL,12,2,0,0),(109,NULL,'230-02','Hutang Bank',NULL,'Payable',NULL,NULL,12,2,0,0),(110,NULL,'240-01','nama akun turunan',NULL,'Payable',NULL,NULL,13,2,0,0),(111,NULL,'310-01','Saham Preferen',NULL,'Modal',NULL,NULL,14,2,0,0),(112,NULL,'310-02','Modal Awal Disetor (sewa toko+zahir+atk+mobil)',NULL,'Modal',NULL,NULL,14,2,0,0),(113,NULL,'310-03','SALDO AWAL PIUTANG KE LUMBUNG',NULL,'Modal',NULL,NULL,14,2,0,0),(114,NULL,'310-04','Saham Biasa',NULL,'Modal',NULL,NULL,14,2,0,0),(115,NULL,'320-01','Laba ditahan',NULL,'Modal',NULL,NULL,15,2,0,0),(116,NULL,'320-02','Laba Tahun Berjalan',NULL,'Modal',NULL,NULL,15,2,0,0),(117,NULL,'320-03','Historical Balancing',NULL,'Modal',NULL,NULL,15,2,0,0),(118,NULL,'410-01','PENJUALAN BOGASARI',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(119,NULL,'410-02','PENJUALAN CARGIL',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(120,NULL,'410-03','PENJUALAN COMFEED',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(121,NULL,'410-04','PENJUALAN INDOCHEM',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(122,NULL,'410-05','PENJUALAN MALINDO',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(123,NULL,'410-06','PENJUALAN NEW HOPE',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(124,NULL,'410-07','PENJUALAN POKPAND',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(125,NULL,'410-08','PENJUALAN SIERAD',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(126,NULL,'410-09','PENJUALAN WONOKOYO',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(127,NULL,'410-10','Penjualan Produk 1',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(128,NULL,'410-11','PENJUALAN MEDION',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(129,NULL,'410-12','PENJUALAN MENSANA',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(130,NULL,'410-13','PENJUALAN SANBE',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(131,NULL,'410-14','PENJUALAN AGRINUSA JAYA SENTOSA',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(132,NULL,'410-15','PENJUALAN AGRO MAKMUR SENTOSA',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(133,NULL,'410-16','PENJUALAN MULYAFEED',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(134,NULL,'410-17','PENJUALAN MULIA PROFEED',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(135,NULL,'410-18','Penjualan Produk 2',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(136,NULL,'410-19','PENJUALAN JAGUNG',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(137,NULL,'410-20','PENJUALAN KATUL',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(138,NULL,'410-21','PENJUALAN BAHAN BAKU',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(139,NULL,'410-22','PENJUALAN PREMIX',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(140,NULL,'410-23','PENJUALAN OTHERS',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(141,NULL,'410-24','PENJUALAN SGI',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(142,NULL,'410-25','PENJUALAN HCS',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(143,NULL,'410-26','PENJUALAN TONGKAT EMAS',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(144,NULL,'410-27','PENJUALAN SAVETA',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(145,NULL,'410-28','PENJUALAN EASH HOPE',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(146,NULL,'410-29','PENJUALAN COMFEED',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(147,NULL,'410-30','PENJUALAN MANTA',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(148,NULL,'410-31','Penjualan Lain',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(149,NULL,'410-32','PENJUALAN NASINDO (SULAIMAN)',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(150,NULL,'410-33','Potongan Penjualan',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(151,NULL,'410-34','Pendapatan Denda Keterlambatan',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(152,NULL,'410-35','Pendapatan atas Pengantaran',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(153,NULL,'410-36','PEMBELIAN POLAR TONGKAT EMAS',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(154,NULL,'411-01','nama akun turunan',NULL,'Pendapatan',NULL,NULL,17,2,0,0),(155,NULL,'420-01','nama akun turunan',NULL,'Pendapatan',NULL,NULL,18,2,0,0),(156,NULL,'510-01','BIAYA BOGASARI',NULL,'Hpp',NULL,NULL,19,2,0,0),(157,NULL,'510-02','BIAYA CARGIL',NULL,'Hpp',NULL,NULL,19,2,0,0),(158,NULL,'510-03','BIAYA COMFEED',NULL,'Hpp',NULL,NULL,19,2,0,0),(159,NULL,'510-04','BIAYA INDOCHEM',NULL,'Hpp',NULL,NULL,19,2,0,0),(160,NULL,'510-05','BIAYA MALINDO',NULL,'Hpp',NULL,NULL,19,2,0,0),(161,NULL,'510-06','BIAYA NEW HOPE',NULL,'Hpp',NULL,NULL,19,2,0,0),(162,NULL,'510-07','BIAYA POKPAND',NULL,'Hpp',NULL,NULL,19,2,0,0),(163,NULL,'510-08','BIAYA SIERAD',NULL,'Hpp',NULL,NULL,19,2,0,0),(164,NULL,'510-09','BIAYA WONOKOYO',NULL,'Hpp',NULL,NULL,19,2,0,0),(165,NULL,'510-10','Biaya 1',NULL,'Hpp',NULL,NULL,19,2,0,0),(166,NULL,'510-11','BIAYA MEDION',NULL,'Hpp',NULL,NULL,19,2,0,0),(167,NULL,'510-12','BIAYA MENSANA',NULL,'Hpp',NULL,NULL,19,2,0,0),(168,NULL,'510-13','BIAYA SANBE',NULL,'Hpp',NULL,NULL,19,2,0,0),(169,NULL,'510-14','BIAYA AGRINUSA JAYA SENTOSA',NULL,'Hpp',NULL,NULL,19,2,0,0),(170,NULL,'510-15','BIAYA AGRO MAKMUR SENTOSA',NULL,'Hpp',NULL,NULL,19,2,0,0),(171,NULL,'510-16','BIAYA MULYAFEED',NULL,'Hpp',NULL,NULL,19,2,0,0),(172,NULL,'510-17','BIAYA MULIA PROFEED',NULL,'Hpp',NULL,NULL,19,2,0,0),(173,NULL,'510-18','Biaya 2',NULL,'Hpp',NULL,NULL,19,2,0,0),(174,NULL,'510-19','BIAYA JAGUNG',NULL,'Hpp',NULL,NULL,19,2,0,0),(175,NULL,'510-20','BIAYA KATUL',NULL,'Hpp',NULL,NULL,19,2,0,0),(176,NULL,'510-21','BIAYA BAHAN BAKU',NULL,'Hpp',NULL,NULL,19,2,0,0),(177,NULL,'510-22','BIAYA PREMIX',NULL,'Hpp',NULL,NULL,19,2,0,0),(178,NULL,'510-23','BIAYA OTHERS',NULL,'Hpp',NULL,NULL,19,2,0,0),(179,NULL,'510-24','BIAYA SGI',NULL,'Hpp',NULL,NULL,19,2,0,0),(180,NULL,'510-25','BIAYA HCS',NULL,'Hpp',NULL,NULL,19,2,0,0),(181,NULL,'510-26','BIAYA TONGKAT EMAS',NULL,'Hpp',NULL,NULL,19,2,0,0),(182,NULL,'510-27','BIAYA SAVETA',NULL,'Hpp',NULL,NULL,19,2,0,0),(183,NULL,'510-28','BIAYA EASH HOPE',NULL,'Hpp',NULL,NULL,19,2,0,0),(184,NULL,'510-29','BIAYA COMFEED',NULL,'Hpp',NULL,NULL,19,2,0,0),(185,NULL,'510-30','BIAYA MANTA',NULL,'Hpp',NULL,NULL,19,2,0,0),(186,NULL,'510-31','Komisi Penjualan',NULL,'Hpp',NULL,NULL,19,2,0,0),(187,NULL,'510-32','BIAYA NASINDO (SULAIMAN)',NULL,'Hpp',NULL,NULL,19,2,0,0),(188,NULL,'510-33','Potongan Pembelian',NULL,'Hpp',NULL,NULL,19,2,0,0),(189,NULL,'510-34','Biaya atas Pengiriman Barang',NULL,'Hpp',NULL,NULL,19,2,0,0),(190,NULL,'510-35','BAYAR KEKURANGAN NEW HOPE (P.JUFRIADI)',NULL,'Hpp',NULL,NULL,19,2,0,0),(191,NULL,'520-01','Kerugian Piutang',NULL,'Biaya',NULL,NULL,20,2,0,0),(192,NULL,'520-02','Biaya Denda Keterlambatan',NULL,'Biaya',NULL,NULL,20,2,0,0),(193,NULL,'520-03','Kerusakan dan Kegagalan Material',NULL,'Biaya',NULL,NULL,20,2,0,0),(194,NULL,'610-01','AKOMODASI MESS',NULL,'Biaya',NULL,NULL,21,2,0,0),(195,NULL,'610-02','BBM GRANDMAX',NULL,'Biaya',NULL,NULL,21,2,0,0),(196,NULL,'610-03','MAINTENANCE SEPEDA MOTOR',NULL,'Biaya',NULL,NULL,21,2,0,0),(197,NULL,'610-04','BONGKAR/MUAT',NULL,'Biaya',NULL,NULL,21,2,0,0),(198,NULL,'610-05','KONSUMSI/ RAPAT',NULL,'Biaya',NULL,NULL,21,2,0,0),(199,NULL,'610-06','MAINTENANCE MOBIL GRANDMAX',NULL,'Biaya',NULL,NULL,21,2,0,0),(200,NULL,'610-07','AIR MINERAL GELAS',NULL,'Biaya',NULL,NULL,21,2,0,0),(201,NULL,'610-08','SEWA TRUK',NULL,'Biaya',NULL,NULL,21,2,0,0),(202,NULL,'610-09','DANA SOSIAL/ZAKAT',NULL,'Biaya',NULL,NULL,21,2,0,0),(203,NULL,'610-10','Gaji Direksi dan Karyawan',NULL,'Biaya',NULL,NULL,21,2,0,0),(204,NULL,'610-11','GANTI BAN DALAM GRANDMAX',NULL,'Biaya',NULL,NULL,21,2,0,0),(205,NULL,'610-12','OPERASIONAL LEBARAN/PARCEL BOUROQ',NULL,'Biaya',NULL,NULL,21,2,0,0),(206,NULL,'610-13','BBM SEPEDA MOTOR',NULL,'Biaya',NULL,NULL,21,2,0,0),(207,NULL,'610-14','PERLENGKAPAN PPL',NULL,'Biaya',NULL,NULL,21,2,0,0),(208,NULL,'610-15','Perbaikan Toko Bouroq PS',NULL,'Biaya',NULL,NULL,21,2,0,0),(209,NULL,'610-16','perabot ppl/karyawan',NULL,'Biaya',NULL,NULL,21,2,0,0),(210,NULL,'610-17','PASPOR P. EFENDI',NULL,'Biaya',NULL,NULL,21,2,0,0),(211,NULL,'610-18','AKOMODASI P. EFENDI SUDARMONO',NULL,'Biaya',NULL,NULL,21,2,0,0),(212,NULL,'610-19','ONGKOS INAP SOPIR/SEWA TRANSPORTASI',NULL,'Biaya',NULL,NULL,21,2,0,0),(213,NULL,'610-20','SET TEMPAT BUMBU',NULL,'Biaya',NULL,NULL,21,2,0,0),(214,NULL,'610-21','GAJI DAN EXPEND KARYAWAN NON BOUROQ PS',NULL,'Biaya',NULL,NULL,21,2,0,0),(215,NULL,'610-22','INVENTARIS MOTOR (P. EFENDI/BOUROQ PS)',NULL,'Biaya',NULL,NULL,21,2,0,0),(216,NULL,'610-23','ONGKOS TRANSPORTASI P. DARMANTO',NULL,'Biaya',NULL,NULL,21,2,0,0),(217,NULL,'610-24','ONGKOS TRANSPORTASI P. SAIHU',NULL,'Biaya',NULL,NULL,21,2,0,0),(218,NULL,'610-25','BOTOL MINUM',NULL,'Biaya',NULL,NULL,21,2,0,0),(219,NULL,'610-26','KAIN PEL',NULL,'Biaya',NULL,NULL,21,2,0,0),(220,NULL,'610-27','AKOMODASI PKL DAN PPL',NULL,'Biaya',NULL,NULL,21,2,0,0),(221,NULL,'610-28','ONGKOS TRANSPORTASI ZAM ZAM PS',NULL,'Biaya',NULL,NULL,21,2,0,0),(222,NULL,'610-29','Listrik, Air dan Telpon',NULL,'Biaya',NULL,NULL,21,2,0,0),(223,NULL,'610-30','MIE,SABUN',NULL,'Biaya',NULL,NULL,21,2,0,0),(224,NULL,'610-31','TRAINING ZAHIR',NULL,'Biaya',NULL,NULL,21,2,0,0),(225,NULL,'610-32','TAMBAH ANGIN',NULL,'Biaya',NULL,NULL,21,2,0,0),(226,NULL,'610-33','parkir/retribusi parkir/toilet umum',NULL,'Biaya',NULL,NULL,21,2,0,0),(227,NULL,'610-34','PIER GRANDMAX',NULL,'Biaya',NULL,NULL,21,2,0,0),(228,NULL,'610-35','GANTI OLI BAK+GANTI OLI GARDAN',NULL,'Biaya',NULL,NULL,21,2,0,0),(229,NULL,'610-36','OLIE CASTRO 140+OLI CASTROL SAE 90',NULL,'Biaya',NULL,NULL,21,2,0,0),(230,NULL,'610-37','Promosi dan Iklan',NULL,'Biaya',NULL,NULL,21,2,0,0),(231,NULL,'610-38','PARCEL KE PELANGGAN',NULL,'Biaya',NULL,NULL,21,2,0,0),(232,NULL,'610-39','Administrasi Kantor (ATK)',NULL,'Biaya',NULL,NULL,21,2,0,0),(233,NULL,'660-01','Penyusutan Bangunan',NULL,'Biaya',NULL,NULL,22,2,0,0),(234,NULL,'660-02','Penyusutan Mesin dan Peralatan',NULL,'Biaya',NULL,NULL,22,2,0,0),(235,NULL,'660-03','Penyusutan Mebel dan ATK',NULL,'Biaya',NULL,NULL,22,2,0,0),(236,NULL,'660-04','Penyusutan Kendaraan',NULL,'Biaya',NULL,NULL,22,2,0,0),(237,NULL,'660-05','Penyusutan Harta Lainnya',NULL,'Biaya',NULL,NULL,22,2,0,0),(238,NULL,'660-06','Amortisasi Pra Operasi dan Operasi',NULL,'Biaya',NULL,NULL,22,2,0,0),(239,NULL,'660-07','PENYUSUTAN PICK UP GRANDMAX',NULL,'Biaya',NULL,NULL,22,2,0,0),(240,NULL,'660-08','PENYUSUTAN TOKO',NULL,'Biaya',NULL,NULL,22,2,0,0),(241,NULL,'810-01','Bunga Bank',NULL,'Pendapatan',NULL,NULL,23,2,0,0),(242,NULL,'810-02','Laba Rugi Selisih Kurs',NULL,'Pendapatan',NULL,NULL,23,2,0,0),(243,NULL,'810-03','Hasil Sewa',NULL,'Pendapatan',NULL,NULL,23,2,0,0),(244,NULL,'810-04','Hasil Panen',NULL,'Pendapatan',NULL,NULL,23,2,0,0),(245,NULL,'910-01','Pajak Bank',NULL,'Biaya',NULL,NULL,24,2,0,0),(246,NULL,'910-02','Biaya Lain-lain',NULL,'Biaya',NULL,NULL,24,2,0,0),(247,NULL,'910-03','Jasa Bank (Admin Bank)',NULL,'Biaya',NULL,NULL,24,2,0,0),(248,NULL,'910-04','SPT TAHUNAN',NULL,'Biaya',NULL,NULL,24,2,0,0),(249,NULL,'110-01','PATTY CASH',NULL,'Cash & Bank',NULL,NULL,1,2,0,0),(251,NULL,'410-34','PENJUALAN MULYA AGRO SARANA',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(250,NULL,'140-33','PERSEDIAAN MULYA AGRO SARANA',NULL,'Persediaan',NULL,NULL,4,2,0,0),(252,NULL,'510-36','BIAYA MULYA AGRO SARANA',NULL,'Hpp',NULL,NULL,19,2,0,0),(253,NULL,'140-34','PERSEDIAAN WILLMAR',NULL,'Persediaan',NULL,NULL,4,2,0,0),(254,NULL,'410-35','PENJUALAN WILLMAR',NULL,'Pendapatan',NULL,NULL,16,2,0,0),(255,NULL,'510-37','BIAYA WILLMAR',NULL,'Hpp',NULL,NULL,19,2,0,0);
/*!40000 ALTER TABLE `m_akun` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `m_akun_peta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_akun_peta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `piutang_usaha` int(11) DEFAULT NULL,
  `hutang_usaha` int(11) DEFAULT NULL,
  `hpp` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_akun_peta`
--

LOCK TABLES `m_akun_peta` WRITE;
/*!40000 ALTER TABLE `m_akun_peta` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `m_akun_peta` VALUES (1,3,10,NULL,NULL,NULL,1514001336,1);
/*!40000 ALTER TABLE `m_akun_peta` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `m_cabang`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_cabang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(25) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `alamat` text,
  `no_tlp` varchar(25) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `akun_ongkir_id` int(11) DEFAULT NULL,
  `akun_hutang_id` int(11) DEFAULT NULL,
  `akun_piutang_id` int(11) DEFAULT NULL,
  `akun_brgrusak_id` int(11) DEFAULT NULL,
  `akun_sopname_id` int(11) DEFAULT NULL,
  `akun_hpp_id` int(11) DEFAULT NULL,
  `akun_diskon_id` int(11) DEFAULT NULL,
  `akun_ppn_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_cabang`
--

LOCK TABLES `m_cabang` WRITE;
/*!40000 ALTER TABLE `m_cabang` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `m_cabang` VALUES (45,'CB001','Cabang malang','malang','324234','malang@a.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(46,'CB002','cvbcvb','cbcvb','33','df@d.jj',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(47,'CB003','Cabang Tes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(48,'CB004','Blitar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(49,'CB005','AGRO PS','KEPANJEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(50,'CB006','BOUROQ PS','BATU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(51,'CB007','ZAM ZAM PS','WAJAK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(52,'CB008','MAGETAN PS','MAGETAN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(53,'CB009','LUMBUNG PS','TUMPANG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `m_cabang` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `m_customer`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_sales_id` int(11) DEFAULT NULL,
  `kode` varchar(25) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `no_tlp` varchar(25) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `alamat` text,
  `is_deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_m_customer_m_supplier1_idx` (`m_sales_id`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_customer`
--

LOCK TABLES `m_customer` WRITE;
/*!40000 ALTER TABLE `m_customer` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `m_customer` VALUES (1,1,'CU001','P. SUGIANTO M','082335577755',NULL,'MBORO GRAGAL KULON BATU  ',0),(2,1,'CU002','P. PARDI','',NULL,'TLEKUNG BATU  ',0),(3,1,'CU003','P. SUGENG','08152252125',NULL,'BABA`AN DESA NGENEP BATU  ',0),(4,1,'CU004','B. SITI ROMLAH','082227277002',NULL,'JLN. PANDERMAN  PENDEM BATU  ',0),(5,1,'CU005','P. ANDRI','',NULL,'BABAKAN PUCUK NGENEP BATU  ',0),(6,1,'CU006','P. HARTONO','',NULL,'GADINGKULON BATU  ',0),(7,1,'CU007','P. DUL HASYIM','',NULL,'MBABA`AN, KARANGPLOSO MALANG  ',0),(8,1,'CU008','P. NURKHAMID','',NULL,'MBABA`AN, KARANGPLOSO MALANG  ',0),(9,1,'CU009','P. SLAMET','',NULL,'MBOCEK BATU  ',0),(10,1,'CU010','MBAK LIA-PENDEM','',NULL,'PENDEM BATU  ',0),(11,1,'CU011','TK. MEGA POJOK','',NULL,'GADING KULON BATU  ',0),(12,1,'CU012','P. RUDI','',NULL,'GADING KULON BATU  ',0),(13,1,'CU013','HADI PURNOMO','',NULL,' BATU  ',0),(14,1,'CU014','P. TAUFIK','',NULL,'JEDING BATU  ',0),(15,1,'CU015','P. UMAR','',NULL,'BEJI SAWAAN BAWAH-DPN HOTEL SINGHASARI BATU  ',0),(16,1,'CU016','P. RAHMAT','',NULL,'JEDING BATU  ',0),(17,1,'CU017','B. MIS','',NULL,'KUCUR BATU  ',0),(18,1,'CU018','P. HARTOYO','',NULL,'DSN KRAJAN RT. 016/RW. 002 GADINGKULON MALANG  ',0),(19,1,'CU019','MAS ARIF 2','',NULL,'KARANGJUWET BATU  ',0),(20,1,'CU020','P. LUTFI','',NULL,'KARANGAN BATU  ',0),(21,1,'CU021','B. BAYU PS','',NULL,'MERGO BESUKI EMBONG ANYAR GG.V JETIS MALANG  ',0),(22,1,'CU022','P. HARSONO BUDI NUGROHO','',NULL,'TIRTO JOYO GENTING RT.02/RW.07 LOWOKWARU MALANG  ',0),(23,1,'CU023','P. ZAINUL','',NULL,'SUPITURANG RT.01/RW.010 BOCEK BATU  ',0),(24,1,'CU024','P. RUDIANTO','',NULL,'DSN.KRAJAN RT.016/RW.002 GADINGKULON MALANG  ',0),(25,1,'CU025','MAS ARIF','',NULL,'KARANGJUWET RT.029/RW.007 DONOWARIH KARANGPLOSO MALANG  ',0),(26,1,'CU026','P. ARON','',NULL,'MBOCEK BATU  ',0),(27,1,'CU027','P. DAVID 2','',NULL,'MBOCEK BATU  ',0),(28,1,'CU028','P. BUSRO','',NULL,'KUCUR   ',0),(29,1,'CU029','P. ROHMAN 2','',NULL,'LANG-LANG SINGOSARI MALANG  ',0),(30,1,'CU030','P. ANTON','',NULL,'LANG-LANG SINGOSARI MALANG  ',0),(31,1,'CU031','B. SITI','',NULL,'MBORO MALANG  ',0),(32,1,'CU032','B. NITA','',NULL,'PETUNGSEWU ',0),(33,1,'CU033','TK. KUMALA JAYA','',NULL,'LANDUNG KIDUL- KUCUR BATU  ',0),(34,1,'CU034','P. BUDI 2','',NULL,'GADINGKULON RT.011/RW.002 DAU-BATU  ',0),(35,1,'CU035','P. HADI SAMPORNO','',NULL,'LANG LANG RT.05 RW.04 SINGOSARI MALANG  ',0),(36,1,'CU036','P. TEGUH','081334986615',NULL,'GADINGKULON DSN.KRAJAN DAU - MALANG  ',0),(37,1,'CU037','P. ALI-BORO','',NULL,'BORO MALANG  ',0),(38,1,'CU038','P. BAMBANG 2','',NULL,'KUCUR MALANG  ',0),(39,1,'CU039','P. BUKHORI','',NULL,'KARANGWIDORO MALANG  ',0),(40,1,'CU040','B. NURWAHIDAH','',NULL,'NGIJO RT. 004/RW. 003 MALANG  ',0),(41,1,'CU041','B. MIMIN','',NULL,'CITRA GRAHA NO.6 KARANGLO MALANG  ',0),(42,1,'CU042','P. SUGENG IRAWAN 1','',NULL,'GERBO PURWODADI-PASURUAN  ',0),(43,1,'CU043','P. AZWAR A','',NULL,'JLN. ROGOBOYO RT.10/RW.03 DSN BUNDER  BATU  ',0),(44,1,'CU044','Dr. ARIF W','',NULL,'DSN SELOKANDANG DS. KERTOSARI  PURWOSARI  ',0),(45,1,'CU045','P. EKO WIJAYANTO','',NULL,'DSN. KRAJAN GADINGKULON MALANG  ',0),(46,1,'CU046','P. SENAN','',NULL,'JL. REJOSO JUNREJO RT.02 RW.10 BATU  ',0),(47,1,'CU047','P. HAMID','',NULL,'BAWAH FLYOVER LAWANG MALANG  ',0),(48,1,'CU048','P. KUSWARI','',NULL,'SLAMPARREJO JABUNG MALANG  ',0),(49,1,'CU049','P. UDIN','',NULL,' BATU  ',0),(50,1,'CU050','P. MAMAN','0',NULL,' 0',0),(51,1,'CU051','P. SUGIANTO','',NULL,'KUNCI KALISONGO DAU RT.4/RW.3 MALANG  ',0),(52,1,'CU052','P. FENDI','',NULL,'BUNDER BATU  ',0),(53,1,'CU053','B. NING','',NULL,'PERUM DUTA F-8 RT.001/RW.013 RANDUAGUNG-SINGOSARI MALANG  ',0),(54,1,'CU054','P. MASYHURI','',NULL,'DSN KRAJAN 004/002 PAKISJAJAR-PAKIS MALANG  ',0),(55,1,'CU055','P. SURONO','',NULL,'PONCOKUSUMO MALANG  ',0),(56,1,'CU056','P. EKO','',NULL,'GERBO PURWODADI  ',0),(57,1,'CU057','P. JEFRI MAULANA','',NULL,'   ',0),(58,1,'CU058','P. RIYANTO','',NULL,'ANJASMORO GG III B/18 TURIREJO LAWANG MALANG  ',0),(59,1,'CU059','P. WANDI','',NULL,'KUCUR MALANG  ',0),(60,1,'CU060','B. KUSMIATI','',NULL,'CURAH KEMBANG 001/010 NGENEP KARANGPLOSO MALANG  ',0),(61,1,'CU061','P. MISDI','',NULL,'BUNUT WETAN 03/07 PAKIS MALANG  ',0),(62,1,'CU062','P. BAYU SURYA','',NULL,'DSN. REJOSO 002/010 JUNREJO BATU  ',0),(63,1,'CU063','P. SUKIRMAN','',NULL,'PURWOSARI PASURUAN  ',0),(64,1,'CU064','P. FREDY','',NULL,'KUCUR MALANG  ',0),(65,1,'CU065','B. YUSNIA','',NULL,'TLOGOREJO 005/013 WONOREJO LAWANG  ',0),(66,1,'CU066','P. USMAN','',NULL,'JLN. WUKIR 003/004 TEMAS BATU  ',0),(67,1,'CU067','P. RUSNO','',NULL,'KUCUR MALANG  ',0),(68,1,'CU068','P. ADY ','',NULL,'JLN. HASANUDDIN 259 JEDING-JUNREJO BATU  ',0),(69,1,'CU069','P. USMAN WAJAK','',NULL,'WAJAK MALANG  ',0),(70,1,'CU070','P. HADI ','',NULL,'BEJI BATU  ',0),(71,1,'CU071','P. NANO','',NULL,'PURWOSARI PASURUAN  ',0),(72,1,'CU072','P. SAPRAWI','',NULL,'KUCUR MALANG  ',0),(73,1,'CU073','P. EKO CELL','',NULL,'JLN. HASANUDIN NO. 23 JEDING BATU  ',0),(74,1,'CU074','P. DIDIK','',NULL,'KARANGKUNCI 002/009 RANDUAGUNG MALANG  ',0),(75,1,'CU075','P. EKO ','',NULL,'JUNREJO BATU  ',0),(76,1,'CU076','P. TRIS','',NULL,'   ',0),(77,1,'CU077','P. ARIPIN 2','',NULL,'JOYO-JEDING BATU  ',0),(78,1,'CU078','P. SULIAN','',NULL,'   ',0),(79,1,'CU079','P. TOHU','',NULL,'JEDING BATU  ',0),(80,1,'CU080','P. EKO PUNTEN','',NULL,'PUNTEN BATU  ',0),(81,1,'CU081','P. SUMARDIONO','',NULL,'GEBUK-LAWANG MALANG  ',0),(82,1,'CU082','P. JIANTO','',NULL,'KUCUR MALANG  ',0),(83,1,'CU083','P. BAKIR','',NULL,'KUCUR MALANG  ',0),(84,1,'CU084','P. SENO','',NULL,'   ',0),(85,1,'CU085','P. ROPI\"I','',NULL,'DS. GEBUK ',0),(86,1,'CU086','B. DEWI','',NULL,'DS. SURO GALIH PURWOSARI PASURUAN  ',0),(87,1,'CU087','P. BAMBANG S.','',NULL,'KUCUR MALANG  ',0),(88,1,'CU088','P. PI\"I 2','',NULL,'   ',0),(89,2,'CU233','P. SLAMET 2','081','','DSN. PRINCI KEC. DAU MALANG',0),(90,2,'CU090','P. KHOLIL','',NULL,'DSN. TRIMO OO3/005 JATISARI PURWODADI PASURUAN  ',0),(91,2,'CU091','P. DARJI','',NULL,'TOYOMARTO BATU  ',0),(92,2,'CU092','P. SUGENG IRAWAN 2','',NULL,'GERBO PURWODADI-PASURUAN  ',0),(93,2,'CU093','P. MARDI','',NULL,'PURWODADI   ',0),(94,2,'CU094','P. ANDRE 2','',NULL,'JLN. DUKU NO.30 CARU BATU  ',0),(95,2,'CU095','P. PRAYOGA','',NULL,'JLN. SEMERU II NO. 02 BATU  ',0),(96,2,'CU096','TK. BAROKAH','',NULL,'SONG-SONG SINGOSARI MALANG  ',0),(97,2,'CU097','P. HADI','',NULL,'LASAH-TAWANGARGO BATU  ',0),(98,2,'CU098','P. WAWAN','',NULL,'DESA PRODO-SINGOSARI ',0),(99,2,'CU099','P. JOKO','',NULL,'BANJARTENGAH BATU  ',0),(100,2,'CU100','P. TAMAN','',NULL,'BON JATI MALANG  ',0),(101,2,'CU101','P. ANWAR','',NULL,'TAWANG ARGO MALANG  ',0),(102,2,'CU102','P. TIMBANG','',NULL,'TOJOWANGI PURWOSARI PASURUAN  ',0),(103,2,'CU103','P. ASNAN','',NULL,'DSN TRIMO PURWODADI PASURUAN  ',0),(104,2,'CU104','P. BENG','',NULL,'   ',0),(105,2,'CU105','B. BAMBANG','',NULL,'SEKARPUTIH BATU  ',0),(106,2,'CU106','P. SUWADI','',NULL,'PUJON MALANG  ',0),(107,2,'CU107','P. HERU','',NULL,'TEGAL WERU  MALANG  ',0),(108,2,'CU108','P. BASUNI','',NULL,'   ',0),(109,2,'CU109','P. ARIS 2','',NULL,'DSN. GUNDU PUNTEN BATU  ',0),(110,2,'CU110','H. MUSTOFA','',NULL,'SRIGADING LAWANG MALANG  ',0),(111,2,'CU111','P. ARIF 2','',NULL,'TLOGO-LAWANG MALANG  ',0),(112,2,'CU112','P. JERRY','',NULL,'TEGALGONDO MALANG  ',0),(113,2,'CU113','H. SUGENG','',NULL,'PRODO-SINGOSARI MALANG  ',0),(114,2,'CU114','P. AGUS (IRAWAN)','',NULL,'BANJAR TENGAH  BATU  ',0),(115,2,'CU115','P. ALI II','085100017737',NULL,'AMPELDENTO, KARANGPLOSO   ',0),(116,2,'CU116','B. ASLIKAH','058100582301',NULL,' 0',0),(117,2,'CU117','P. BADI','0858529324',NULL,'BOCEK   ',0),(118,2,'CU118','P. BAMBANG','081333212184',NULL,'PERUM ASOKA SUMBER SEKAR DAU BATU  ',0),(119,2,'CU119','BLK / P. YUDI','',NULL,'TLOGOMAS / SAWOJAJAR MALANG  ',0),(120,2,'CU120','P. DARMANTO','',NULL,'BUMIAJI BATU  ',0),(121,2,'CU121','P. DARMAWAN','',NULL,'   ',0),(122,2,'CU122','P. DWI / YONG','',NULL,'JEDING BATU  ',0),(123,2,'CU123','P. GOFUR','',NULL,'   ',0),(124,2,'CU124','P. JANADI','',NULL,'JETAK BATU  ',0),(125,2,'CU125','P. HALIFI','',NULL,'SEMPU-DAU MALANG  ',0),(126,2,'CU126','P. JANADI A','',NULL,'JETAK BATU  ',0),(127,2,'CU127','P. RIANTO','',NULL,'SEMPU MALANG  ',0),(128,2,'CU128','P. SUPANTIK','',NULL,'WUNUT SARI RT.12 RW.04 TEGALGONDO MALANG  ',0),(129,2,'CU129','P. IMAM','',NULL,'   ',0),(130,2,'CU130','P. JAINUL','',NULL,'BANJAR TENGAH BATU  ',0),(131,2,'CU131','P. SYAM','',NULL,'SEMPU BATU  ',0),(132,2,'CU132','GUS MUKLAS','',NULL,'KALIPARE MALANG  ',0),(133,2,'CU133','P. MUNIF/ NANO','',NULL,'REJOSO-JUNREJO BATU  ',0),(134,2,'CU134','P. SAIHU','',NULL,'BATU   P. MUL ',0),(135,2,'CU135','P. MUL ','',NULL,'JETAK BATU  ',0),(136,2,'CU136','P. NASIKIN','',NULL,'BUMIAJI-CEMBO BATU  ',0),(137,2,'CU137','B. NOVI','',NULL,'LASAH MALANG  ',0),(138,2,'CU138','P. HARIADI','',NULL,'   ',0),(139,2,'CU139','P. TAMBUR','',NULL,'LAWANG MALANG  ',0),(140,2,'CU140','P. FENDI WNKY','',NULL,'   ',0),(141,2,'CU141','P. AAN','',NULL,'JUMPUT (BMKG) MALANG  ',0),(142,2,'CU142','GUS SODIK','',NULL,'JEDING BATU  ',0),(143,6,'CU143','TOKO','',NULL,'   ',0),(144,2,'CU144','B. IRA PURWANTI','',NULL,'DURENAN KALIPARE MALANG  ',0),(145,2,'CU145','B. HABIBAH','03415485741',NULL,'DENGKOL, SINGOSARI MALANG  ',0),(146,2,'CU146','P. HARI','',NULL,'PATOK PICIS MALANG  ',0),(147,2,'CU147','P. HASIM / YONG','',NULL,'JEDING BATU  ',0),(148,2,'CU148','P. IKHSAN','082257578627',NULL,'GIRIPURNO BATU  ',0),(149,2,'CU149','P. IRAWAN','03418188522',NULL,'BANJARTENGAH DAU BATU  ',0),(150,2,'CU150','P. JUNAIDI II','0341594141',NULL,'TLEKUNG BATU  ',0),(151,2,'CU151','P. KARNADI','085749698621',NULL,'BUMIAJI, KLENGKENG  BATU  ',0),(152,2,'CU152','P. KOIRUL','',NULL,'BANJAR TENGAH ',0),(153,2,'CU153','Bank BCA','',NULL,'   ',0),(154,2,'CU154','BPK.','',NULL,'   ',0),(155,2,'CU155','P. KADIR','',NULL,' BATU  ',0),(156,2,'CU156','P. MARJI','081259138001',NULL,'JETAK   ',0),(157,2,'CU157','B. NASRIB','081231390035',NULL,'JLN. KALI LANANG BUMIAJI BATU  ',0),(158,2,'CU158','P. NASRUDIN','',NULL,'   ',0),(159,2,'CU159','B. NING','0818384602',NULL,'NGIJO KARANGPLOSO BATU  ',0),(160,2,'CU160','P. ARIPIN','',NULL,' BATU  ',0),(161,2,'CU161','B. RANI / YONG','03413188190',NULL,'TLEKUNG BATU  ',0),(162,2,'CU162','B. RISKI','03417760440',NULL,'WATUGEDE 28, SINGOSARI MALANG  ',0),(163,2,'CU163','P. ROHMAN','',NULL,'GANGSIRAN BATU  ',0),(164,2,'CU164','P. SUWARNO','081333288256',NULL,'JL JERUK BUMIAJI BATU  ',0),(165,2,'CU165','P. TEGOH','',NULL,'BUNDER  KARANGPLOSO  ',0),(166,2,'CU166','P. TEGUH','',NULL,'JUMPUT MALANG  ',0),(167,2,'CU167','P. TISENI','',NULL,'JL HASANUDIN RT 01 RW 06 JUNREJO BATU  ',0),(168,2,'CU168','MAJU JAYA','',NULL,'JL RAYA NO 46 DEPAN KORAMIL  SINGOSARI  ',0),(169,2,'CU169','P. MIKO','081235256125',NULL,'BUMIAJI BATU  ',0),(170,2,'CU170','P. WISNU','08985589508',NULL,'SEMANDING RT 1 RW 1 MALANG  ',0),(171,2,'CU171','P. YANTO','',NULL,' 0',0),(172,2,'CU172','P. YONG','03417782245',NULL,'JEDING BATU  ',0),(173,2,'CU173','P. ANDRE','',NULL,'   ',0),(174,2,'CU174','P. MUBAROK','',NULL,'   ',0),(175,2,'CU175','P. SUGIARTO (P. TO)','',NULL,'JEDING BATU  ',0),(176,2,'CU176','TK. MAJU JAYA','',NULL,'   ',0),(177,2,'CU177','P. ARENA','',NULL,'   ',0),(178,2,'CU178','GARUDA / SALIM','',NULL,'SINGOSARI MALANG  ',0),(179,2,'CU179','GARUDA / UMI','',NULL,'SINGOSARI MALANG  ',0),(180,2,'CU180','P. HENNY','',NULL,'KALPATARU MALANG  ',0),(181,2,'CU181','P. SHOLEH','',NULL,'MBOCEK BATU  ',0),(182,2,'CU182','P. SALIM','',NULL,'   ',0),(183,2,'CU183','P. GIANTO','',NULL,'JETAK BATU  ',0),(184,2,'CU184','P. ANDIK','',NULL,'NGENEP BATU  ',0),(185,2,'CU185','P. PI\"I','',NULL,'   ',0),(186,2,'CU186','P. KARTOMO','',NULL,'   ',0),(187,2,'CU187','P. SOLIKIN','',NULL,'MANGGIS SARI BATU  ',0),(188,2,'CU188','P. HASAN','',NULL,'   ',0),(189,2,'CU189','B. LIA','',NULL,'DADAP TULIS BATU  ',0),(190,2,'CU190','P. BUDI','',NULL,'   ',0),(191,2,'CU191','P. PARMAN','',NULL,'ORO-ORO OMBO BATU  ',0),(192,2,'CU192','P. SARINO','',NULL,'PRINCI BATU  ',0),(193,2,'CU193','P. DAVID 1','',NULL,'   ',0),(194,2,'CU194','P. YUDI MBOCEK','',NULL,'   ',0),(195,2,'CU195','P. WAHYU','',NULL,'PANDESARI BATU  ',0),(196,2,'CU196','B. RINI','',NULL,'SEKARPUTIH BATU  ',0),(197,2,'CU197','P. TARMUJI','',NULL,'ORO-ORO OMBO BATU  ',0),(198,2,'CU198','P. RULI','',NULL,'   ',0),(199,2,'CU199','P.JAMIL','',NULL,' BATU  ',0),(200,2,'CU200','P. ARIS','',NULL,'   ',0),(201,2,'CU201','HJ.MUJIB','',NULL,'DSN. KARANGAN DS. DONOWARIH MALANG  ',0),(202,2,'CU202','B. LILIK','',NULL,'SEKARPUTIH  BATU  ',0),(203,2,'CU203','P. SUKARI','',NULL,'KUCUR BATU  ',0),(204,2,'CU204','P. SYAIHU','',NULL,'KASEMBON   ',0),(205,2,'CU205','P. ANIS','',NULL,'   ',0),(206,2,'CU206','P. PAIDI SADDAM','',NULL,'JEDING ',0),(207,2,'CU207','P. ANDI','',NULL,'DUSUN GLAGAH KARANGPLOSO  ',0),(208,2,'CU208','P. YONO','',NULL,'BUMIAJI BATU  ',0),(209,2,'CU209','B. ANA','',NULL,'DAWUHAN   ',0),(210,2,'CU210','P. NARKO','',NULL,' BATU  ',0),(211,2,'CU211','P. KIS','',NULL,'ORO ORO OMBO BATU  ',0),(212,2,'CU212','P. KUSNU','',NULL,'SEMANDING BATU  ',0),(213,2,'CU213','P. SINGGIH','',NULL,'DERMO BATU  ',0),(214,2,'CU214','B. ANIS-TIDAR','',NULL,'TIDAR MALANG  ',0),(215,2,'CU215','P. DULADI','',NULL,'JLN.PURWANTORO DS.TLEKUNG RT.02 RW.02 JUNREJO BATU  ',0),(216,2,'CU216','B. MULYANI','',NULL,' BATU  ',0),(217,2,'CU217','P. BATUBARA','',NULL,'BUNUL MALANG  ',0),(218,2,'CU218','P. SYAHRUL','',NULL,' BATU  ',0),(219,2,'CU219','P. ANANG','',NULL,' BATU  ',0),(220,2,'CU220','P. PUR/NUR','',NULL,'KARANG AMPEL, DAU MALANG  ',0),(221,2,'CU221','P. RIPAL','085733307100',NULL,'KELUD - PENDEM DEKATNYA JEMBATAN BRANTAS BATU  ',0),(222,2,'CU222','P. MUS','',NULL,'TLEKUNG BATU  ',0),(223,2,'CU223','P. HASYIM','',NULL,'JEDING BATU  ',0),(224,2,'CU224','P. SUGIANTO (P.MUL)','0',NULL,' 0',0),(225,2,'CU225','P. JAYUS','',NULL,'   ',0),(226,2,'CU226','P. FAUZI','',NULL,'SUMBEREJO, KALISONGO MALANG  ',0),(227,2,'CU227','P. YONO KAJANG','',NULL,'KAJANG BATU  ',0),(228,2,'CU228','P. KUSAIRI','',NULL,'BANJAR TENGAH BATU  ',0),(229,2,'CU229','P. PRIHATIN','08155509144',NULL,'ASRIKATON NO.135 (DRG.ENDAH PRATIWI) PAKIS MALANG  ',0),(230,2,'CU230','P. EFENDI','',NULL,'   ',0),(231,2,'CU231','P. JITO','',NULL,'MBOCEK MALANG  ',0),(232,2,'CU232','P. SAEAN','',NULL,'BEJI BATU  ',0),(233,2,'CU234','B. IRA PURWANTI','',NULL,'KALIPARE',0),(234,1,'CU235','P. PI\'I',NULL,NULL,'GADINGKULON',0),(235,1,'CU236','P. HARUN',NULL,NULL,'SELOWONGKO WELANG KADEMUNGAN',0),(236,1,'CU237','H. USMAN',NULL,NULL,'PASURUAN',0),(237,5,'CU238','P. HARNO',NULL,NULL,NULL,0),(238,1,'CU239','P. PRAYITNO','',NULL,'TEGALWERU-BATU',0);
/*!40000 ALTER TABLE `m_customer` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `m_jabatan`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_jabatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(45) DEFAULT NULL,
  `is_deleted` tinyint(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_jabatan`
--

LOCK TABLES `m_jabatan` WRITE;
/*!40000 ALTER TABLE `m_jabatan` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `m_jabatan` VALUES (2,'juniors',0),(3,'senior',0),(5,'rrrr',0);
/*!40000 ALTER TABLE `m_jabatan` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `m_jenis_pembayaran`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_jenis_pembayaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `nama` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_jenis_pembayaran`
--

LOCK TABLES `m_jenis_pembayaran` WRITE;
/*!40000 ALTER TABLE `m_jenis_pembayaran` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `m_jenis_pembayaran` VALUES (4,'masuk','Tunai'),(5,'masuk','Pelunasan Piutang'),(6,'masuk','Piutang'),(7,'keluar','Tunai'),(8,'keluar','Pelunasan Hutang'),(9,'keluar','Hutang');
/*!40000 ALTER TABLE `m_jenis_pembayaran` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `m_karyawan`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_karyawan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  `no_telp` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `alamat` varchar(100) NOT NULL,
  `m_jabatan_id` int(11) NOT NULL,
  `is_deleted` tinyint(5) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_m_karyawan_m_jabatan1_idx` (`m_jabatan_id`),
  CONSTRAINT `fk_m_karyawan_m_jabatan1` FOREIGN KEY (`m_jabatan_id`) REFERENCES `m_jabatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_karyawan`
--

LOCK TABLES `m_karyawan` WRITE;
/*!40000 ALTER TABLE `m_karyawan` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `m_karyawan` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `m_kategori`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_kategori`
--

LOCK TABLES `m_kategori` WRITE;
/*!40000 ALTER TABLE `m_kategori` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `m_kategori` VALUES (1,'AGRINUSA JAYA SENTOSA',0),(2,'BOGASARI',0),(3,'CARGIL',0),(4,'COMFEED',0),(5,'EAST HOPE',0),(6,'JAGUNG',0),(7,'KATUL',0),(8,'MALINDO',0),(9,'MANTA',0),(10,'MEDION',0),(11,'MENSANA',0),(12,'MULIA PROFEED',0),(13,'MULYAFEED',0),(14,'NASINDO A.N (SULAIMAN)',0),(15,'NEW HOPE',0),(16,'OTHERS',0),(17,'POKPAND',0),(18,'PREMIX',0),(19,'SAVETA',0),(20,'WILLMAR',0),(21,'WONOKOYO',0),(22,'ALTERNAS',0),(23,'tes kategori',0),(24,'MULYA AGRO SARANA',0);
/*!40000 ALTER TABLE `m_kategori` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `m_produk`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_kategori_id` int(11) DEFAULT NULL,
  `m_satuan_id` int(11) DEFAULT NULL,
  `kode` varchar(25) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL COMMENT 'jasa | barang',
  `nama` varchar(255) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT '0',
  `harga_jual` varchar(45) DEFAULT NULL,
  `akun_penjualan_id` varchar(45) DEFAULT NULL,
  `akun_persediaan_brg_id` varchar(45) DEFAULT NULL,
  `akun_rpenjualan_id` varchar(45) DEFAULT NULL,
  `akun_rpembelian_id` varchar(45) DEFAULT NULL,
  `akun_hpp_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_m_produk_m_kategori1_idx` (`m_kategori_id`),
  KEY `fk_m_produk_m_satuan1_idx` (`m_satuan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_produk`
--

LOCK TABLES `m_produk` WRITE;
/*!40000 ALTER TABLE `m_produk` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `m_produk` VALUES (1,1,1,'BRG001','barang','CHLORINE TAB 20 GR',73500,0,'90000','131','51','','',169,NULL,NULL,1514347879,1),(2,1,2,'BRG002','barang','DURACOL - D (100 GR)',1700,0,'1800','131','51',NULL,NULL,169,NULL,NULL,1512728130,7),(3,1,1,'BRG003','barang','SORBITOL 1 L',29300,0,'35000','131','51',NULL,NULL,169,NULL,NULL,1511422336,7),(4,1,3,'BRG004','barang','SORBITOL 5 L',132700,0,'150000','131','51',NULL,NULL,169,NULL,NULL,1511422353,7),(5,2,6,'BRG005','barang','POLLAR ANGSA',180000,0,'185000','118','38','Array','Array',156,NULL,NULL,1514347958,1),(6,3,4,'BRG006','barang','AVIBRO-1',313750,0,'325000','119','39','','',157,NULL,NULL,1514347971,1),(7,3,4,'BRG007','barang','BFC',382500,0,'400000','119','39',NULL,NULL,157,NULL,NULL,1511422385,7),(8,3,4,'BRG008','barang','BIG BEEF',185000,0,'225000','119','39',NULL,NULL,157,NULL,NULL,1511422396,7),(9,3,4,'BRG009','barang','BR1XGA',273750,0,'300000','119','39',NULL,NULL,157,NULL,NULL,1511422408,7),(10,3,4,'BRG010','barang','CHSK',296250,0,'315000','119','39',NULL,NULL,157,NULL,NULL,1511422428,7),(11,3,4,'BRG011','barang','CLS-36',316850,0,'325000','119','39',NULL,NULL,157,NULL,NULL,1511422440,7),(12,3,4,'BRG012','barang','GE-138',366000,0,'375000','119','39',NULL,NULL,157,NULL,NULL,1511422454,7),(13,3,4,'BRG013','barang','KPU-36',297000,0,'325000','119','39',NULL,NULL,157,NULL,NULL,1511422466,7),(14,3,4,'BRG014','barang','L1S',238750,0,'260000','119','39',NULL,NULL,157,NULL,NULL,1511422476,7),(15,3,4,'BRG015','barang','LACTO PLUS',185000,0,'225000','119','39',NULL,NULL,157,NULL,NULL,1511422487,7),(16,3,4,'BRG016','barang','PAS',193250,0,'215000','119','39',NULL,NULL,157,NULL,NULL,1511422503,7),(17,3,4,'BRG017','barang','PBSK',321250,0,'350000','119','39',NULL,NULL,157,NULL,NULL,1511422516,7),(18,3,4,'BRG018','barang','PG1C',304750,0,'320000','119','39',NULL,NULL,157,NULL,NULL,1511422532,7),(19,3,4,'BRG019','barang','PLC',311500,0,'327000','119','39',NULL,NULL,157,NULL,NULL,1511422553,7),(20,3,4,'BRG020','barang','PROMIX SUPER',314250,0,'320000','119','39',NULL,NULL,157,NULL,NULL,1511422587,7),(21,3,4,'BRG021','barang','QL BLUE',260000,0,'275000','119','39',NULL,NULL,157,NULL,NULL,1511422602,7),(22,3,4,'BRG022','barang','SLC',328250,0,'340000','119','39',NULL,NULL,157,NULL,NULL,1511422611,7),(23,3,4,'BRG023','barang','STARMIX',325000,0,'335000','119','39',NULL,NULL,157,NULL,NULL,1511422626,7),(24,3,4,'BRG024','barang','TRULAY COMPLETE',235750,0,'245000','119','39',NULL,NULL,157,NULL,NULL,1511422634,7),(25,3,4,'BRG025','barang','MAX BRO ORANGE',303750,0,'320000','119','39',NULL,NULL,157,NULL,NULL,1511422646,7),(26,3,4,'BRG026','barang','OPTIMAX AL 622',273300,0,'285000','119','39',NULL,NULL,157,NULL,NULL,1511422714,7),(27,3,4,'BRG027','barang','OPTIMAX AL 633',265500,0,'280000','119','39',NULL,NULL,157,NULL,NULL,1511422798,7),(28,3,5,'BRG028','barang','CALF STRATER (PEDET)',220000,0,'245000','119','39',NULL,NULL,157,NULL,NULL,1511422810,7),(29,3,5,'BRG029','barang','QUAIL LAYER CR',283750,0,'295000','119','39',NULL,NULL,157,NULL,NULL,1511422822,7),(30,3,5,'BRG030','barang','BIG GOUT 25KG',93750,0,'110000','119','39',NULL,NULL,157,NULL,NULL,1511422831,7),(31,3,5,'BRG031','barang','GOLDEN PRIME CALF STARTER',235000,0,'245000','119','39',NULL,NULL,157,NULL,NULL,1511422841,7),(32,3,5,'BRG032','barang','CUSTOMIZE (BIG GOUT 50 KG)',182500,0,'200000','119','39',NULL,NULL,157,NULL,NULL,1511422853,7),(33,3,5,'BRG033','barang','PLC UL',297000,0,'320000','119','39',NULL,NULL,157,NULL,NULL,1511422869,7),(34,3,5,'BRG034','barang','ULTRA G',323250,0,'336500','119','39',NULL,NULL,157,NULL,NULL,1511422885,7),(35,3,5,'BRG035','barang','PBS POLOS',306250,0,'315000','119','39',NULL,NULL,157,NULL,NULL,1511423005,7),(36,3,5,'BRG036','barang','MAX BRO BLUE',308750,0,'330000','119','39',NULL,NULL,157,NULL,NULL,1511423023,7),(37,3,5,'BRG037','barang','BIG GOUT 50 KG',185000,0,'200000','119','39',NULL,NULL,157,NULL,NULL,1511423038,7),(38,3,5,'BRG038','barang','PLC CL',309000,0,'324000','119','39',NULL,NULL,157,NULL,NULL,1511423053,7),(39,4,4,'BRG039','barang','COMFEED PUYUH',270000,0,'285000','120','40','','',158,NULL,NULL,1514348058,1),(40,5,5,'BRG040','barang','510 EH',295000,0,'310000','145','65','','',183,NULL,NULL,1514348176,1),(41,5,4,'BRG041','barang','818 EH',225000,0,'235000','145','65','','',183,NULL,NULL,1514348189,1),(42,6,7,'BRG042','barang','JAGUNG OCE',4600,0,'4700','136','56','','',174,NULL,NULL,1514348204,1),(43,6,7,'BRG043','barang','JAGUNG PECAH',4350,0,'4450','136','56','','',174,NULL,NULL,1514348222,1),(44,7,7,'BRG044','barang','KATUL SPARATOR ',2250,0,'2350','137','57','','',175,NULL,NULL,1514348436,1),(45,7,7,'BRG045','barang','KATUL',2400,0,'2500','137','57','','',175,NULL,NULL,1514348457,1),(46,8,4,'BRG046','barang','KM2',327750,0,'335000','122','42','','',160,NULL,NULL,1514348549,1),(47,8,4,'BRG047','barang','8202 GIANT',301000,0,'320000','122','42',NULL,NULL,160,NULL,NULL,1511423207,7),(48,8,5,'BRG048','barang','A88 ALL LAYER MASH',226000,0,'237000','122','42',NULL,NULL,160,NULL,NULL,1511423225,7),(49,8,5,'BRG049','barang','BR1- A88',315000,0,'325000','122','42',NULL,NULL,160,NULL,NULL,1511423236,7),(50,9,5,'BRG050','barang','POLAR MANTA',155000,0,'160000','147','67','','',185,NULL,NULL,1514348685,1),(51,10,5,'BRG051','barang','AMINOVIT 250 GR',27000,0,'30000','128','48','','',166,NULL,NULL,1514348731,1),(52,10,5,'BRG052','barang','ANTIKOKSI 1 L',109300,0,'115000','128','48',NULL,NULL,166,NULL,NULL,1511423274,7),(53,10,1,'BRG053','barang','CALVITA 50 KPS',7700,0,'8000','128','48',NULL,NULL,166,NULL,NULL,1511423286,7),(54,10,2,'BRG054','barang','COXY 100 GR',9000,0,'12000','128','48',NULL,NULL,166,NULL,NULL,1511423303,7),(55,10,2,'BRG055','barang','THERAPY 250 GR',54250,0,'60000','128','48',NULL,NULL,166,NULL,NULL,1511423317,7),(56,10,4,'BRG056','barang','TOP MIX 25 KG (SAK)',263100,0,'275000','128','48',NULL,NULL,166,NULL,NULL,1511423326,7),(57,10,5,'BRG057','barang','TRIMEZYN - K 50 KPS',11000,0,'13000','128','48',NULL,NULL,166,NULL,NULL,1511423337,7),(58,10,5,'BRG058','barang','TRIMEZYN - S 100 GR',17000,0,'20000','128','48',NULL,NULL,166,NULL,NULL,1511423348,7),(59,10,5,'BRG059','barang','TRIMEZYN - S 250 GR',36000,0,'40000','128','48',NULL,NULL,166,NULL,NULL,1511423364,7),(60,10,5,'BRG060','barang','TURBO 100 GR',9700,0,'12500','128','48',NULL,NULL,166,NULL,NULL,1511423386,7),(61,10,5,'BRG061','barang','TURBO 250 GR',23500,0,'27500','128','48',NULL,NULL,166,NULL,NULL,1511423404,7),(62,10,5,'BRG062','barang','COXY 250GR',1867,0,'2300','128','48',NULL,NULL,166,NULL,NULL,1511423465,7),(63,10,1,'BRG063','barang','VERMIXON 20 ML',2500,0,'5000','128','48',NULL,NULL,166,NULL,NULL,1511423482,7),(64,10,5,'BRG064','barang','VITA CHICKS 100 GR',7700,0,'10000','128','48',NULL,NULL,166,NULL,NULL,1511423493,7),(65,10,2,'BRG065','barang','VITA CHICKS 250 GR',23900,0,'25500','128','48',NULL,NULL,166,NULL,NULL,1511423549,7),(66,10,5,'BRG066','barang','VITA CHICKS 5 GR',1000,0,'5000','128','48',NULL,NULL,166,NULL,NULL,1511423587,7),(67,10,5,'BRG067','barang','VITA STRESS 250 GR',14600,0,'18500','128','48',NULL,NULL,166,NULL,NULL,1511424017,7),(68,10,2,'BRG068','barang','WORMZOL - B ',4000,0,'6000','128','48',NULL,NULL,166,NULL,NULL,1511424026,7),(69,10,1,'BRG069','barang','ANTISEP 120 ML',18700,0,'25000','128','48',NULL,NULL,166,NULL,NULL,1511424036,7),(70,10,1,'BRG070','barang','KOLERIDIN KAPSUL',2300,0,'5000','128','48',NULL,NULL,166,NULL,NULL,1511424044,7),(71,10,5,'BRG071','barang','KUTUTOX ORAL 100 ML',67500,0,'70000','128','48',NULL,NULL,166,NULL,NULL,1511424051,7),(72,10,5,'BRG072','barang','VITA STRESS 100 GR',6000,0,'10000','128','48',NULL,NULL,166,NULL,NULL,1511424064,7),(73,10,2,'BRG073','barang','CALVITA 10 KPS',1900,0,'5000','128','48',NULL,NULL,166,NULL,NULL,1511424077,7),(74,10,2,'BRG074','barang','MINERAL AYAM 1 KG',3975,0,'6000','128','48',NULL,NULL,166,NULL,NULL,1511424096,7),(75,10,5,'BRG075','barang','DOCTRIL 100 GR',19500,0,'25000','128','48',NULL,NULL,166,NULL,NULL,1511424105,7),(76,10,5,'BRG076','barang','DOXYVET 250 GR',33450,0,'40000','128','48',NULL,NULL,166,NULL,NULL,1511424117,7),(77,10,5,'BRG077','barang','EGG STIMULANT 100 GR',10000,0,'12500','128','48',NULL,NULL,166,NULL,NULL,1511424132,7),(78,10,5,'BRG078','barang','EGG STIMULANT 250 GR',23800,0,'27500','128','48',NULL,NULL,166,NULL,NULL,1511424147,7),(79,10,5,'BRG079','barang','NEOBRO (250 GR)',21600,0,'23000','128','48',NULL,NULL,166,NULL,NULL,1512727897,7),(80,10,5,'BRG080','barang','FORTEVIT 100 GR',38500,0,'45000','128','48',NULL,NULL,166,NULL,NULL,1511424219,7),(81,10,5,'BRG081','barang','FORTEVIT 250 GR',87500,0,'95000','128','48',NULL,NULL,166,NULL,NULL,1511424266,7),(82,10,5,'BRG082','barang','FORTEVIT 50 GR',14000,0,'20000','128','48',NULL,NULL,166,NULL,NULL,1511424307,7),(83,10,2,'BRG083','barang','GUMBONAL 100 GR',11400,0,'15500','128','48',NULL,NULL,166,NULL,NULL,1511424319,7),(84,10,5,'BRG084','barang','INJ VITAMIN B KOMPLEKS 100 ML',11000,0,'15000','128','48',NULL,NULL,166,NULL,NULL,1511424331,7),(85,10,5,'BRG085','barang','MEDIMILK 100 GR',11250,0,'15500','128','48',NULL,NULL,166,NULL,NULL,1511424563,7),(86,10,1,'BRG086','barang','ANTISEP 1 L',152000,0,'160000','128','48',NULL,NULL,166,NULL,NULL,1511425344,7),(87,10,4,'BRG087','barang','MINERAL AYAM 20 KG',63825,0,'75000','128','48',NULL,NULL,166,NULL,NULL,1511425357,7),(88,10,1,'BRG088','barang','NEO MEDITRIL 100 ML',33100,0,'35500','128','48',NULL,NULL,166,NULL,NULL,1511425381,7),(89,11,5,'BRG089','barang','NEOBRO 250 GR',1700,0,'2000','129','49','','',167,NULL,NULL,1514348876,1),(90,10,6,'BRG090','barang','STRONG EGG 250 GR',29400,0,'32500','128','48','','',166,NULL,NULL,1514015138,1),(91,12,5,'BRG091','barang','MASAMIX SUPER 30 KG',372000,0,'385000','134','54','','',172,NULL,NULL,1514348917,1),(92,11,9,'BRG092','barang','MASAMIX BRO 25 KG',13800,0,'15000','129','49','','',167,NULL,NULL,1514348960,1),(93,13,5,'BRG093','barang','BURAS',201000,0,'220000','133','53','','',171,NULL,NULL,1514348998,1),(94,13,5,'BRG094','barang','PROBRO ORANGE',275500,0,NULL,'133','53','','',171,NULL,NULL,1514349029,1),(95,13,5,'BRG095','barang','PROBRO BIRU',295500,0,NULL,'133','53','','',171,NULL,NULL,1514349042,1),(96,13,5,'BRG096','barang','PRO BRO 99',285500,0,NULL,'133','53','','',171,NULL,NULL,1514349057,1),(97,14,5,'BRG097','barang','TPA 10 KG',30500,0,NULL,'149','69','','',187,NULL,NULL,1514349078,1),(98,14,5,'BRG098','barang','TPA 7 KG',24000,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(99,14,5,'BRG099','barang','TPA 6 KG',21000,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(100,14,5,'BRG100','barang','TPA 5 KG',20500,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(101,14,5,'BRG101','barang','SUPERFEDER',27000,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(102,14,5,'BRG102','barang','TMAO (NAS)',63500,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(103,14,5,'BRG103','barang','FEDERTRAY',13000,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(104,14,5,'BRG104','barang','BCF',13800,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(105,14,5,'BRG105','barang','TM 1 GALON',17000,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(106,14,5,'BRG106','barang','TM 2 GALON',22000,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(107,14,5,'BRG107','barang','PROTEKTOR TPA 5 KG',4500,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(108,14,5,'BRG108','barang','AN-001',7000,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(109,14,5,'BRG109','barang','AN-007',7800,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(110,14,5,'BRG110','barang','AN-009',7500,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(111,14,5,'BRG111','barang','AN-009 PUYUH',7500,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(112,14,5,'BRG112','barang','AN-002',6200,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(113,14,5,'BRG113','barang','AN-003',6200,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(114,14,5,'BRG114','barang','AN-004 + SODLE',5800,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(115,14,5,'BRG115','barang','AN-005 + SODLE',6000,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(116,14,5,'BRG116','barang','AN-010 STAINLES',7500,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(117,14,5,'BRG117','barang','AN-23',8000,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(118,14,5,'BRG118','barang','NIPPLE BEBET',7000,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(119,14,5,'BRG119','barang','TANG C RING',290000,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(120,14,5,'BRG120','barang','C. RING AYAM',60000,0,NULL,'149','69',NULL,NULL,187,NULL,NULL,1511151856,1),(121,15,4,'BRG121','barang','7501',309250,0,NULL,'123','43','','',161,NULL,NULL,1514349180,1),(122,15,5,'BRG122','barang','611B',305000,0,NULL,'123','43','','',161,NULL,NULL,1514349191,1),(123,15,5,'BRG123','barang','7183 (P.JADI LAYER)',239250,0,NULL,'123','43','','',161,NULL,NULL,1514349250,1),(124,16,8,'BRG124','barang','EGGTRAY AYAM KARTON',67000,0,NULL,'140','60','','',178,NULL,NULL,1514349262,1),(125,16,8,'BRG125','barang','EGGTRAY AYAM PLASTIK',400000,0,NULL,'140','60',NULL,NULL,178,NULL,NULL,1511151856,1),(126,16,8,'BRG126','barang','TMAO (ALT)',62000,0,NULL,'140','60',NULL,NULL,178,NULL,NULL,1511151856,1),(127,16,1,'BRG127','barang','GULA TETES BOTOL 1L',5500,0,NULL,'140','60',NULL,NULL,178,NULL,NULL,1511151856,1),(128,16,1,'BRG128','barang','GULA TETES JERIGEN ',20000,0,NULL,'140','60',NULL,NULL,178,NULL,NULL,1511151856,1),(129,16,1,'BRG129','barang','BIO 2-1LTR (TERNAK)',45000,0,NULL,'140','60',NULL,NULL,178,NULL,NULL,1511151856,1),(130,16,1,'BRG130','barang','BIO 2-1/2 LTR(TERNAK)',25000,0,NULL,'140','60',NULL,NULL,178,NULL,NULL,1511151856,1),(131,16,1,'BRG131','barang','BIO 3-1LTR(IKAN)',45000,0,NULL,'140','60',NULL,NULL,178,NULL,NULL,1511151856,1),(132,16,1,'BRG132','barang','BIO 3-1/2 LTR(IKAN)',25000,0,NULL,'140','60',NULL,NULL,178,NULL,NULL,1511151856,1),(133,16,2,'BRG133','barang','LEM TIKUS',4000,0,NULL,'140','60',NULL,NULL,178,NULL,NULL,1511151856,1),(134,16,2,'BRG134','barang','BECOMP',6000,0,NULL,'140','60',NULL,NULL,178,NULL,NULL,1511151856,1),(135,16,1,'BRG135','barang','SOC 500ML',60000,0,NULL,'140','60',NULL,NULL,178,NULL,NULL,1511151856,1),(136,16,1,'BRG136','barang','COVER 5L',675000,0,NULL,'140','60',NULL,NULL,178,NULL,NULL,1511151856,1),(137,16,1,'BRG137','barang','PARMECTINE D',54500,0,NULL,'140','60',NULL,NULL,178,NULL,NULL,1511151856,1),(138,16,1,'BRG138','barang','WORMACTINE 2 ML',4200,0,NULL,'140','60',NULL,NULL,178,NULL,NULL,1511151856,1),(139,16,5,'BRG139','barang','RACKUS',2000,0,NULL,'140','60',NULL,NULL,178,NULL,NULL,1511151856,1),(140,17,4,'BRG140','barang','124',324500,0,NULL,'124','44','','',162,NULL,NULL,1514444101,1),(141,17,4,'BRG141','barang','124 P',340750,0,NULL,'124','44','','',162,NULL,NULL,1514349430,1),(142,17,4,'BRG142','barang','144',375000,0,NULL,'124','44','','',162,NULL,NULL,1514349453,1),(143,17,4,'BRG143','barang','511 B',341250,0,NULL,'124','44','','',162,NULL,NULL,1514349468,1),(144,17,4,'BRG144','barang','SCK-324',252000,0,NULL,'124','44','','',162,NULL,NULL,1514349480,1),(145,18,5,'BRG145','barang','X-MAX 25 KG',202500,0,NULL,'139','59','','',177,NULL,NULL,1514349504,1),(146,18,5,'BRG146','barang','PREMIX LC 25 KG',550000,0,NULL,'139','59','','',177,NULL,NULL,1514349603,1),(147,18,5,'BRG147','barang','PREMIX ALTERMIX PETELUR 30 KG',360000,0,NULL,'139','59','','',177,NULL,NULL,1514349613,1),(148,18,5,'BRG148','barang','PREMIX ALTERMIX BROILER 30 KG',360000,0,NULL,'139','59','','',177,NULL,NULL,1514349625,1),(149,18,2,'BRG149','barang','PREMIX-KPU',4000,0,NULL,'139','59','','',177,NULL,NULL,1514349635,1),(150,19,2,'BRG150','barang','VITA CIPROTIL 100 GR',43225,0,NULL,'144','64','','',182,NULL,NULL,1514349647,1),(151,19,2,'BRG151','barang','VITA ENTROADINE 100 GR',29494,0,NULL,'144','64','','',182,NULL,NULL,1514349659,1),(152,19,2,'BRG152','barang','VETAMIT DS 1 KG',20735,0,NULL,'144','64','','',182,NULL,NULL,1514349671,1),(153,19,2,'BRG153','barang','SV. VITA STRESS 100 GR',6825,0,NULL,'144','64','','',182,NULL,NULL,1514349682,1),(154,19,2,'BRG154','barang','VITA HEAT STRESS',13845,0,NULL,'144','64','','',182,NULL,NULL,1514349694,1),(155,19,1,'BRG155','barang','VITA QUAT 1 LTR',39000,0,NULL,'144','64','','',182,NULL,NULL,1514349706,1),(156,19,1,'BRG156','barang','VITA DINE 1 LTR',64350,0,NULL,'144','64','','',182,NULL,NULL,1514349722,1),(157,20,5,'BRG157','barang','POLAR TONGKAT EMAS',152000,0,NULL,'254','253','','',255,NULL,NULL,1514472222,1),(158,21,4,'BRG158','barang','KIP',364500,0,NULL,'126','46','','',164,NULL,NULL,1514352301,1),(159,21,4,'BRG159','barang','KLS PLATINUM',343750,0,NULL,'126','46','','',164,NULL,NULL,1514352312,1),(160,21,4,'BRG160','barang','BW1',328750,0,NULL,'126','46','','',164,NULL,NULL,1514352323,1),(161,21,4,'BRG161','barang','BR1',332000,0,NULL,'126','46','','',164,NULL,NULL,1514352337,1),(163,23,1,'BRG163','barang','tes barang aaaa',10000,0,'100000','118','38','Array','Array',156,1511504868,1,1514472814,1),(164,3,6,'BRG164','barang','big beef 25 kg',92500,0,'125000','119','39','78','76',157,1511859327,7,1511859327,7),(165,1,2,'BRG165','barang','DURACOL @100 GR',1708,0,'2000','131','51','108','108',169,1512808781,7,1512811342,7),(166,10,2,'BRG167','barang','NEOBRO @250GR',1713,0,'2000','128','48','106','106',166,1512808997,7,1512809287,7),(167,10,2,'BRG168','barang','COXY @250 GR',1867,0,'2000','128','48','106','106',166,1512809239,7,1512809239,7),(172,18,2,'BRG169','barang','PREMIX LC bks(25kg)',22000,0,'25000','139','59','Array','Array',177,1512813223,8,1514472767,1),(173,16,2,'BRG170','barang','AVIMIX',9500,0,'12500','140','60',NULL,NULL,178,1514010472,1,1514010472,1),(174,16,2,'BRG171','barang','AVIMIX-EGG',12750,0,'16000','140','60',NULL,NULL,178,1514010556,1,1514010556,1),(175,16,2,'BRG172','barang','AVIMIX-MINERAL',4000,0,'6500','140','60',NULL,NULL,178,1514010585,1,1514010585,1),(176,16,2,'BRG173','barang','AVIMIX-DRY',18000,0,'21000','140','60',NULL,NULL,178,1514010702,1,1514010702,1),(177,16,2,'BRG174','barang','PLASTIK SILACE UK.500KG',110000,0,'130000','140','60',NULL,NULL,178,1514011344,1,1514011344,1),(178,10,6,'BRG175','barang','TOP MIX 10 KG',106470,0,'113000','128','48',NULL,NULL,166,1514015312,1,1514015312,1),(179,24,3,'BRG176','barang','BIOFARM 1 LTR',540000,0,'550000','251','250','','',252,1514427775,1,1514427831,1);
/*!40000 ALTER TABLE `m_produk` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `m_roles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  `akses` text NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nama` (`nama`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_roles`
--

LOCK TABLES `m_roles` WRITE;
/*!40000 ALTER TABLE `m_roles` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `m_roles` VALUES (1,'Super Admin','{\"master_roles\":true,\"master_user\":true,\"master_akses\":true,\"master_gudang\":true,\"supplier\":true,\"master_supplier\":true,\"master_customer\":true,\"master_sales\":true,\"master_satuan\":true,\"master_tipe_akun\":true,\"master_akun\":true,\"master_kategori\":true,\"master_barang_jasa\":true,\"master_persediaan\":true,\"t_penjualan\":true,\"t_retur_penjualan\":true,\"t_pembelian\":true,\"t_retur_pembelian\":true,\"t_pengeluaran\":true,\"t_pemasukan\":true,\"t_jurnal_umum\":true,\"master_penyesuaian_persedian\":true,\"laporan_jurnal\":true,\"laporan_pembelian\":true,\"laporan_pejualan\":true,\"laporan_penjualansales\":true,\"laporan_kasbank\":true,\"laporan_bukubesar\":true,\"laporan_matrix\":true,\"laporan_neracasaldo\":true,\"laporan_labarugi\":true,\"laporan_rekaphutang\":true,\"laporan_umurhutang\":true,\"laporan_hutang\":true,\"laporan_piutang\":true,\"laporan_rekappiutang\":true,\"laporan_umurpiutang\":true,\"laporan_grafikterlaris\":true,\"laporan_penjualanantarcabang\":true,\"transaksi_penjualan\":true,\"transaksi_retur_penjualan\":true,\"transaksi_pembelian\":true,\"transaksi_retur_pembelian\":true,\"transaksi_pengeluaran\":true,\"transaksi_pemasukan\":true,\"transaksi_jurnal_umum\":true,\"transaksi_nota_bayar\":true,\"laporan_penjualan\":true,\"master_pemetaan_akun\":true,\"persediaan_kategori\":true,\"persediaan_barang_jasa\":true,\"persediaan_penyesuaian_persedian\":true,\"master_jabatan\":true,\"master_karyawan\":true,\"transaksi_saldo_awal\":true,\"transaksi_transfer_kas\":true,\"laporan_neraca\":true,\"master_setting\":true,\"transaksi_saldo_awal_persediaan\":true,\"laporan_labaditahan\":true,\"transaksi_tutup_tahun\":true,\"laporan_perubahanmodal\":true}',0),(6,'ADMIN','{\"master_akses\":false,\"master_user\":false,\"master_gudang\":false,\"master_customer\":false,\"master_supplier\":false,\"master_sales\":false,\"master_satuan\":false,\"master_tipe_akun\":false,\"master_akun\":false,\"master_kategori\":false,\"master_barang_jasa\":true,\"master_penyesuaian_persedian\":true,\"transaksi_penjualan\":true,\"transaksi_retur_penjualan\":true,\"transaksi_pembelian\":true,\"transaksi_retur_pembelian\":true,\"transaksi_pengeluaran\":true,\"transaksi_pemasukan\":true,\"transaksi_jurnal_umum\":true,\"laporan_jurnal\":true,\"laporan_pembelian\":true,\"laporan_penjualan\":true,\"laporan_penjualansales\":true,\"laporan_kasbank\":true,\"laporan_bukubesar\":true,\"laporan_matrix\":true,\"laporan_neracasaldo\":true,\"laporan_labarugi\":true,\"laporan_rekaphutang\":true,\"laporan_umurhutang\":true,\"laporan_hutang\":true,\"laporan_piutang\":true,\"laporan_rekappiutang\":true,\"laporan_umurpiutang\":true,\"laporan_grafikterlaris\":true,\"laporan_penjualanantarcabang\":true}',0),(7,'aaa','[]',1),(8,'Akses Tes','{\"master_akses\":true,\"master_user\":true,\"master_gudang\":true,\"master_customer\":true,\"master_supplier\":true,\"master_sales\":true,\"master_satuan\":true,\"master_tipe_akun\":true,\"master_akun\":true,\"master_kategori\":true,\"master_barang_jasa\":true,\"master_penyesuaian_persedian\":true,\"transaksi_penjualan\":true,\"transaksi_retur_penjualan\":true,\"transaksi_pembelian\":true,\"transaksi_retur_pembelian\":true,\"transaksi_pengeluaran\":true,\"transaksi_pemasukan\":true,\"transaksi_jurnal_umum\":true,\"transaksi_nota_bayar\":true,\"laporan_jurnal\":true,\"laporan_pembelian\":true,\"laporan_penjualan\":true,\"laporan_penjualansales\":true,\"laporan_kasbank\":true,\"laporan_bukubesar\":true,\"laporan_matrix\":true,\"laporan_neracasaldo\":true,\"laporan_labarugi\":true,\"laporan_rekaphutang\":true,\"laporan_umurhutang\":true,\"laporan_hutang\":true,\"laporan_piutang\":true,\"laporan_rekappiutang\":true,\"laporan_umurpiutang\":true,\"laporan_grafikterlaris\":true,\"laporan_penjualanantarcabang\":true}',0),(9,'KASIRBATU','{\"transaksi_penjualan\":true,\"transaksi_retur_penjualan\":true,\"transaksi_pembelian\":true,\"transaksi_retur_pembelian\":true,\"transaksi_pengeluaran\":true,\"transaksi_pemasukan\":true,\"transaksi_jurnal_umum\":true,\"transaksi_nota_bayar\":true,\"master_penyesuaian_persedian\":true,\"master_satuan\":true,\"master_sales\":true,\"master_supplier\":true,\"master_customer\":true,\"master_akun\":true,\"master_kategori\":true,\"laporan_pembelian\":true,\"laporan_penjualan\":true,\"laporan_penjualansales\":true,\"master_barang_jasa\":true,\"master_tipe_akun\":true,\"persediaan_kategori\":true,\"persediaan_barang_jasa\":true,\"persediaan_penyesuaian_persedian\":true,\"laporan_jurnal\":true,\"laporan_kasbank\":true,\"laporan_bukubesar\":true,\"laporan_matrix\":true,\"laporan_neracasaldo\":true,\"laporan_labarugi\":true,\"laporan_rekaphutang\":true,\"laporan_umurhutang\":true,\"laporan_hutang\":true,\"laporan_piutang\":true,\"laporan_rekappiutang\":true,\"laporan_umurpiutang\":true,\"laporan_grafikterlaris\":true,\"laporan_penjualanantarcabang\":true,\"master_pemetaan_akun\":true,\"master_gudang\":true}',0),(10,'adminzamzam','{\"master_akses\":true,\"master_user\":true,\"master_gudang\":true,\"master_customer\":true,\"master_supplier\":true,\"master_sales\":true,\"master_satuan\":true,\"master_tipe_akun\":true,\"master_akun\":true,\"master_pemetaan_akun\":true,\"transaksi_penjualan\":true,\"transaksi_retur_penjualan\":true,\"transaksi_pembelian\":true,\"transaksi_retur_pembelian\":true,\"transaksi_pengeluaran\":true,\"transaksi_pemasukan\":true,\"transaksi_jurnal_umum\":true,\"transaksi_nota_bayar\":true,\"laporan_jurnal\":true,\"laporan_pembelian\":true,\"laporan_penjualan\":true,\"laporan_penjualansales\":true,\"laporan_kasbank\":true,\"laporan_bukubesar\":true,\"laporan_matrix\":true,\"laporan_neracasaldo\":true,\"laporan_labarugi\":true,\"laporan_rekaphutang\":true,\"laporan_umurhutang\":true,\"laporan_hutang\":true,\"laporan_piutang\":true,\"laporan_rekappiutang\":true,\"laporan_umurpiutang\":true,\"laporan_grafikterlaris\":true,\"laporan_penjualanantarcabang\":true,\"master_kategori\":true,\"master_barang_jasa\":true,\"master_penyesuaian_persedian\":true,\"master_jabatan\":true,\"master_karyawan\":true,\"transaksi_saldo_awal\":true,\"transaksi_transfer_kas\":true,\"transaksi_tutup_tahun\":true,\"laporan_neraca\":true,\"laporan_labaditahan\":true,\"laporan_perubahanmodal\":true,\"transaksi_saldo_awal_persediaan\":true,\"master_setting\":true}',0);
/*!40000 ALTER TABLE `m_roles` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `m_sales`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(45) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text,
  `no_tlp` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_sales`
--

LOCK TABLES `m_sales` WRITE;
/*!40000 ALTER TABLE `m_sales` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `m_sales` VALUES (1,'SL003','Arif','malang','08125252525','arif@gmail.com',0,1509415158,7,1509697960,1),(2,'SL004','Efendi','perum vbs ap 07 malang','08125262532','efendi@gmail.com',0,1509426963,7,1509697966,1),(3,'SL005','CAB. AGRO PS','KEPANJEN',NULL,NULL,0,1511406875,7,1511406875,7),(4,'SL006','CAB. ZAM ZAM PS','WAJAK',NULL,NULL,0,1511406891,7,1511406891,7),(5,'SL007','CAB. BOUROQ PS','CARU-PENDEM BATU',NULL,NULL,0,1511406910,7,1511406910,7),(6,'SL008','TOKO BRQ','BATU',NULL,NULL,0,1514443283,7,1514443333,7);
/*!40000 ALTER TABLE `m_sales` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `m_satuan`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_satuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_satuan`
--

LOCK TABLES `m_satuan` WRITE;
/*!40000 ALTER TABLE `m_satuan` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `m_satuan` VALUES (1,'BTL',0),(2,'BKS',0),(3,'LTR',0),(4,'ZAK',1),(5,'SAK',1),(6,'SAK',0),(7,'KG',0),(8,'SET',0),(9,'PCS',0);
/*!40000 ALTER TABLE `m_satuan` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `m_setting`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `tanggal` int(11) NOT NULL,
  `tanggal_akhir` int(2) NOT NULL,
  `bulan_akhir` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_setting`
--

LOCK TABLES `m_setting` WRITE;
/*!40000 ALTER TABLE `m_setting` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `m_setting` VALUES (1,'Zam Zam','images.png',1513900800,1,1);
/*!40000 ALTER TABLE `m_setting` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `m_supplier`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(25) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `alamat` text,
  `no_tlp` varchar(25) DEFAULT NULL,
  `no_hp` varchar(25) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_supplier`
--

LOCK TABLES `m_supplier` WRITE;
/*!40000 ALTER TABLE `m_supplier` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `m_supplier` VALUES (1,'SU001','PT. CARGIL ',NULL,'KRATON PASURUAN',NULL,'',NULL,0),(2,'SU002','PT. BOGASARI',NULL,'Malang',NULL,'',NULL,0),(3,'SU003','PT. NEW HOPE',NULL,' ',NULL,'',NULL,0),(4,'SU004','PT. SIERAD',NULL,' ',NULL,NULL,NULL,0),(5,'SU005','ZAM ZAM PS',NULL,' ',NULL,'',NULL,0),(6,'SU006','MITRA BAKTI ',NULL,' ',NULL,NULL,NULL,0),(7,'SU007','PT.WONOKOYO',NULL,' ',NULL,NULL,NULL,0),(8,'SU008','NASINDO ',NULL,' ',NULL,NULL,NULL,0),(9,'SU009','AGRO PS',NULL,' ',NULL,'',NULL,0),(10,'SU010','HJ.MUJIB',NULL,' ',NULL,'',NULL,0),(11,'SU011','P. TOPAN',NULL,' ',NULL,NULL,NULL,0),(12,'SU012','P.TO',NULL,' ',NULL,NULL,NULL,0),(13,'SU013','MKA BIO',NULL,'PACET MOJOKERTO  ',NULL,NULL,NULL,0),(14,'SU014','P. EDI SANTOSO',NULL,' ',NULL,NULL,NULL,0),(15,'SU015','P.SHOLEH',NULL,' ',NULL,NULL,NULL,0),(16,'SU016','ALTERNAS',NULL,' ',NULL,NULL,NULL,0),(17,'SU017','RETUR TOKO BOUROQ PS',NULL,' ',NULL,NULL,NULL,0),(18,'SU018','P. FAIQ (MAS SYAIKU)',NULL,' ',NULL,'',NULL,0),(19,'SU019','BU IDA',NULL,'KARANGPLOSO MALANG  ',NULL,'',NULL,0),(20,'SU020','P. JUNAIDI',NULL,'TLEKUNG BATU  ',NULL,NULL,NULL,0),(21,'SU021','P. IRUL',NULL,'SINGOSARI MALANG  ',NULL,'',NULL,0),(22,'SU022','PT. SAVETA',NULL,'JLN. SURIAT NO. 127 SANANWETAN  BLITAR  ',NULL,NULL,NULL,0),(23,'SU023','P. MUNIF',NULL,' ',NULL,NULL,NULL,0),(24,'SU024','CARGILL SAPI',NULL,' ',NULL,'',NULL,0),(25,'SU025','P. JUFFRIADI',NULL,'MAGETAN ',NULL,NULL,NULL,0),(26,'SU026','B. GRACE',NULL,'PRING KUNING ',NULL,NULL,NULL,0),(27,'SU027','P. NARDI',NULL,'BUNDER BATU  ',NULL,NULL,NULL,0),(28,'SU028','CV. ZAMZAM LUMBUNG POULTRY SOLUTION',NULL,'JLN. COKROAMINOTO WAJAK-MALANG',NULL,'',NULL,0);
/*!40000 ALTER TABLE `m_supplier` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `m_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_roles_id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `settings` text,
  `is_deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_m_user_m_roles1_idx1` (`m_roles_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_user`
--

LOCK TABLES `m_user` WRITE;
/*!40000 ALTER TABLE `m_user` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `m_user` VALUES (1,1,'Super Administrator','admin','63c8f0854166152eaacc876088a8e6b1729ca2d7',NULL,0),(2,1,'aa','aa','e0c9035898dd52fc65c41454cec9c4d2611bfb37',NULL,1),(3,2,'Finance','farid','6a214fde6c1f8c84902a5576bbe98834623913cc',NULL,0),(4,6,'f','f','4a0a19218e082a343a1b17e5333409af9d98f0f5',NULL,0),(5,8,'User Tes','tesa','d1c056a983786a38ca76a05cda240c7b86d77136',NULL,0),(6,9,'Mbak Testing','test','a94a8fe5ccb19ba61c4c0873d391e987982fbbd3',NULL,0),(7,10,'ema','ema','0a4ef2d5951b0b1b01fbf93901825ee4e5a36781',NULL,0),(8,10,'RendraAdmin1','rendra1','db25f2fc14cd2d2b1e7af307241f548fb03c312a',NULL,0),(9,0,'DPT',NULL,NULL,NULL,0),(10,0,'DPT',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `m_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `pos_bayar_customer`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_bayar_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_transaksi` varchar(45) DEFAULT NULL,
  `pos_penjualan_id` int(11) DEFAULT NULL,
  `tanggal` int(11) DEFAULT NULL,
  `m_akun_id` int(11) DEFAULT NULL,
  `bayar` int(11) DEFAULT NULL,
  `catatan` text,
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_bayar_customer`
--

LOCK TABLES `pos_bayar_customer` WRITE;
/*!40000 ALTER TABLE `pos_bayar_customer` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `pos_bayar_customer` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `pos_bayar_supplier`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_bayar_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_transaksi` varchar(45) DEFAULT NULL,
  `tanggal` int(11) DEFAULT NULL,
  `pos_pembelian_id` int(11) DEFAULT NULL,
  `m_akun_id` int(11) DEFAULT NULL,
  `bayar` int(11) DEFAULT NULL,
  `catatan` text,
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_bayar_supplier`
--

LOCK TABLES `pos_bayar_supplier` WRITE;
/*!40000 ALTER TABLE `pos_bayar_supplier` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `pos_bayar_supplier` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `pos_kartu_stok`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_kartu_stok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) DEFAULT NULL,
  `m_produk_id` int(11) DEFAULT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `jumlah_masuk` double DEFAULT NULL,
  `harga_masuk` int(11) DEFAULT '0',
  `jumlah_keluar` double DEFAULT NULL,
  `harga_keluar` int(11) DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `pos_penjualan_id` int(11) DEFAULT NULL,
  `pos_pembelian_id` int(11) DEFAULT NULL,
  `r_penjualan_id` int(11) DEFAULT NULL,
  `r_pembelian_id` int(11) unsigned DEFAULT NULL,
  `jenis_kas` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `hpp` int(11) DEFAULT NULL,
  `m_cabang_id` int(11) DEFAULT NULL,
  `tanggal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=916 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_kartu_stok`
--

LOCK TABLES `pos_kartu_stok` WRITE;
/*!40000 ALTER TABLE `pos_kartu_stok` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `pos_kartu_stok` VALUES (1,'B17/00001',127,'pembelian',1,5500,NULL,0,1514001363,1,NULL,1,NULL,NULL,'masuk',1,NULL,45,NULL),(2,'B17/00002',128,'pembelian',1,20000,NULL,0,1514001502,1,NULL,2,NULL,NULL,'masuk',1,NULL,45,1514001490),(3,'B17/00003',127,'pembelian',5,5500,NULL,0,1514001583,1,NULL,3,NULL,NULL,'masuk',5,NULL,45,NULL),(4,'B17/00004',127,'pembelian',5,5500,NULL,0,1514001634,1,NULL,3,NULL,NULL,'masuk',5,NULL,45,NULL),(483,'Saldo Awal',27,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(214,'J17/00001',22,'Penjualan',NULL,0,5,335000,1514012706,1,1,NULL,NULL,NULL,'keluar',NULL,323250,50,1514012660),(482,'Saldo Awal',26,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(481,'Saldo Awal',25,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(480,'Saldo Awal',24,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(479,'Saldo Awal',23,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(478,'Saldo Awal',22,'Saldo Awal',42,323250,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',10,NULL,50,1513728000),(477,'Saldo Awal',21,'Saldo Awal',20,255000,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',0,NULL,50,1513728000),(476,'Saldo Awal',20,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(475,'Saldo Awal',19,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(474,'Saldo Awal',18,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(473,'Saldo Awal',17,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(470,'Saldo Awal',14,'Saldo Awal',87,243750,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',0,NULL,50,1513728000),(471,'Saldo Awal',15,'Saldo Awal',230,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',210,NULL,50,1513728000),(472,'Saldo Awal',16,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(469,'Saldo Awal',13,'Saldo Awal',80,292000,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',0,NULL,50,1513728000),(468,'Saldo Awal',12,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(466,'Saldo Awal',10,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(467,'Saldo Awal',11,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(465,'Saldo Awal',9,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(464,'Saldo Awal',8,'Saldo Awal',9,185000,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',9,NULL,50,1513728000),(463,'Saldo Awal',7,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(462,'Saldo Awal',6,'Saldo Awal',25,313750,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',15,NULL,50,1513728000),(461,'Saldo Awal',172,'Saldo Awal',NULL,0,NULL,0,1514423690,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(460,'Saldo Awal',149,'Saldo Awal',120,4000,NULL,0,1514423690,1,NULL,NULL,NULL,NULL,'masuk',0,NULL,50,1513728000),(459,'Saldo Awal',148,'Saldo Awal',NULL,0,NULL,0,1514423690,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(458,'Saldo Awal',147,'Saldo Awal',NULL,0,NULL,0,1514423690,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(457,'Saldo Awal',146,'Saldo Awal',NULL,0,NULL,0,1514423690,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(456,'Saldo Awal',145,'Saldo Awal',1,202500,NULL,0,1514423690,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(455,'Saldo Awal',144,'Saldo Awal',NULL,0,NULL,0,1514423607,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(454,'Saldo Awal',143,'Saldo Awal',NULL,0,NULL,0,1514423607,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(453,'Saldo Awal',142,'Saldo Awal',NULL,0,NULL,0,1514423607,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(452,'Saldo Awal',141,'Saldo Awal',NULL,0,NULL,0,1514423607,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(599,'J17/00008',34,'Penjualan',NULL,0,7,329000,1514442954,7,10,NULL,NULL,NULL,'keluar',NULL,318250,50,1514183638),(450,'Saldo Awal',156,'Saldo Awal',4,64350,NULL,0,1514387087,1,NULL,NULL,NULL,NULL,'masuk',4,NULL,50,1513728000),(216,'J17/00002',22,'Penjualan',NULL,0,5,335000,1514013683,1,2,NULL,NULL,NULL,'keluar',NULL,323250,50,1514013426),(219,'J17/00002',34,'Penjualan',NULL,0,5,329000,1514013950,1,3,NULL,NULL,NULL,'keluar',NULL,318250,50,1514013806),(220,'J17/00002',14,'Penjualan',NULL,0,5,255000,1514013950,1,3,NULL,NULL,NULL,'keluar',NULL,243750,50,1514013806),(451,'Saldo Awal',140,'Saldo Awal',4,314500,NULL,0,1514423607,1,NULL,NULL,NULL,NULL,'masuk',0,NULL,50,1513728000),(449,'Saldo Awal',155,'Saldo Awal',5,39000,NULL,0,1514387087,1,NULL,NULL,NULL,NULL,'masuk',5,NULL,50,1513728000),(448,'Saldo Awal',154,'Saldo Awal',50,13845,NULL,0,1514387087,1,NULL,NULL,NULL,NULL,'masuk',50,NULL,50,1513728000),(447,'Saldo Awal',153,'Saldo Awal',47,6825,NULL,0,1514387087,1,NULL,NULL,NULL,NULL,'masuk',47,NULL,50,1513728000),(446,'Saldo Awal',152,'Saldo Awal',25,20735,NULL,0,1514387087,1,NULL,NULL,NULL,NULL,'masuk',25,NULL,50,1513728000),(307,'J17/00004',22,'Penjualan',NULL,0,2,340000,1514340663,1,4,NULL,NULL,NULL,'keluar',NULL,323250,50,1514513424),(445,'Saldo Awal',151,'Saldo Awal',50,29494,NULL,0,1514387087,1,NULL,NULL,NULL,NULL,'masuk',50,NULL,50,1513728000),(444,'Saldo Awal',150,'Saldo Awal',49,43225,NULL,0,1514387087,1,NULL,NULL,NULL,NULL,'masuk',49,NULL,50,1513728000),(484,'Saldo Awal',28,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(485,'Saldo Awal',29,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(486,'Saldo Awal',30,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(487,'Saldo Awal',31,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(488,'Saldo Awal',32,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(489,'Saldo Awal',33,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(490,'Saldo Awal',34,'Saldo Awal',141,318250,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',0,NULL,50,1513728000),(491,'Saldo Awal',35,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(492,'Saldo Awal',36,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(493,'Saldo Awal',37,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(494,'Saldo Awal',38,'Saldo Awal',30,304000,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',30,NULL,50,1513728000),(495,'Saldo Awal',164,'Saldo Awal',NULL,0,NULL,0,1514425518,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(496,'Saldo Awal',51,'Saldo Awal',2,27000,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',2,NULL,50,1513728000),(497,'Saldo Awal',52,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(498,'Saldo Awal',53,'Saldo Awal',1,7700,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(499,'Saldo Awal',54,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(500,'Saldo Awal',55,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(501,'Saldo Awal',56,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(502,'Saldo Awal',57,'Saldo Awal',3,11000,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',3,NULL,50,1513728000),(503,'Saldo Awal',58,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(504,'Saldo Awal',59,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(505,'Saldo Awal',60,'Saldo Awal',2,9700,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',2,NULL,50,1513728000),(506,'Saldo Awal',61,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(507,'Saldo Awal',62,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(508,'Saldo Awal',63,'Saldo Awal',1,2500,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(509,'Saldo Awal',64,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(510,'Saldo Awal',65,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(511,'Saldo Awal',66,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(512,'Saldo Awal',67,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(513,'Saldo Awal',68,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(514,'Saldo Awal',69,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(515,'Saldo Awal',70,'Saldo Awal',5,2300,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',5,NULL,50,1513728000),(516,'Saldo Awal',71,'Saldo Awal',1,67500,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(517,'Saldo Awal',72,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(518,'Saldo Awal',73,'Saldo Awal',1,1900,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(519,'Saldo Awal',74,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(520,'Saldo Awal',75,'Saldo Awal',2,19500,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',2,NULL,50,1513728000),(521,'Saldo Awal',76,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(522,'Saldo Awal',77,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(523,'Saldo Awal',78,'Saldo Awal',40,23800,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',40,NULL,50,1513728000),(524,'Saldo Awal',79,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(525,'Saldo Awal',80,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(526,'Saldo Awal',81,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(527,'Saldo Awal',82,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(528,'Saldo Awal',83,'Saldo Awal',6,11400,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',6,NULL,50,1513728000),(529,'Saldo Awal',84,'Saldo Awal',3,11000,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',3,NULL,50,1513728000),(530,'Saldo Awal',85,'Saldo Awal',4,11250,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',4,NULL,50,1513728000),(531,'Saldo Awal',86,'Saldo Awal',2,146000,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',2,NULL,50,1513728000),(532,'Saldo Awal',87,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(533,'Saldo Awal',88,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(534,'Saldo Awal',90,'Saldo Awal',2,29400,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',2,NULL,50,1513728000),(535,'Saldo Awal',166,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(536,'Saldo Awal',167,'Saldo Awal',NULL,0,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(537,'Saldo Awal',178,'Saldo Awal',5,106470,NULL,0,1514425790,1,NULL,NULL,NULL,NULL,'masuk',5,NULL,50,1513728000),(538,'Saldo Awal',179,'Saldo Awal',12,45000,NULL,0,1514427815,1,NULL,NULL,NULL,NULL,'masuk',12,NULL,50,1513728000),(539,'Saldo Awal',97,'Saldo Awal',1,30500,NULL,0,1514428024,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(540,'Saldo Awal',98,'Saldo Awal',1,24000,NULL,0,1514428024,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(541,'Saldo Awal',99,'Saldo Awal',1,21000,NULL,0,1514428024,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(542,'Saldo Awal',100,'Saldo Awal',NULL,0,NULL,0,1514428024,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(543,'Saldo Awal',101,'Saldo Awal',NULL,0,NULL,0,1514428024,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(544,'Saldo Awal',102,'Saldo Awal',NULL,0,NULL,0,1514428024,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(545,'Saldo Awal',103,'Saldo Awal',NULL,0,NULL,0,1514428024,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(546,'Saldo Awal',104,'Saldo Awal',1,13800,NULL,0,1514428024,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(547,'Saldo Awal',105,'Saldo Awal',NULL,0,NULL,0,1514428024,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(548,'Saldo Awal',106,'Saldo Awal',NULL,0,NULL,0,1514428024,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(549,'Saldo Awal',107,'Saldo Awal',NULL,0,NULL,0,1514428024,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(550,'Saldo Awal',108,'Saldo Awal',1,7000,NULL,0,1514428024,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(551,'Saldo Awal',109,'Saldo Awal',1,7800,NULL,0,1514428024,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(552,'Saldo Awal',110,'Saldo Awal',NULL,0,NULL,0,1514428024,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(553,'Saldo Awal',111,'Saldo Awal',1,7500,NULL,0,1514428024,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(554,'Saldo Awal',112,'Saldo Awal',NULL,0,NULL,0,1514428025,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(555,'Saldo Awal',113,'Saldo Awal',1,6200,NULL,0,1514428025,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(556,'Saldo Awal',114,'Saldo Awal',1,5800,NULL,0,1514428025,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(557,'Saldo Awal',115,'Saldo Awal',1,6000,NULL,0,1514428025,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(558,'Saldo Awal',116,'Saldo Awal',1,7500,NULL,0,1514428025,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(559,'Saldo Awal',117,'Saldo Awal',1,8000,NULL,0,1514428025,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(560,'Saldo Awal',118,'Saldo Awal',1,7000,NULL,0,1514428025,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(561,'Saldo Awal',119,'Saldo Awal',1,290000,NULL,0,1514428025,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(562,'Saldo Awal',120,'Saldo Awal',1,60000,NULL,0,1514428025,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(563,'Saldo Awal',121,'Saldo Awal',55,309500,NULL,0,1514428056,1,NULL,NULL,NULL,NULL,'masuk',0,NULL,50,1513728000),(564,'Saldo Awal',122,'Saldo Awal',NULL,0,NULL,0,1514428056,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(565,'Saldo Awal',123,'Saldo Awal',NULL,0,NULL,0,1514428056,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(566,'Saldo Awal',124,'Saldo Awal',NULL,0,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(567,'Saldo Awal',125,'Saldo Awal',NULL,0,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(568,'Saldo Awal',126,'Saldo Awal',NULL,0,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(569,'Saldo Awal',127,'Saldo Awal',NULL,0,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(570,'Saldo Awal',128,'Saldo Awal',NULL,0,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(571,'Saldo Awal',129,'Saldo Awal',4,45000,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',4,NULL,50,1513728000),(572,'Saldo Awal',130,'Saldo Awal',3,25000,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',3,NULL,50,1513728000),(573,'Saldo Awal',131,'Saldo Awal',3,45000,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',3,NULL,50,1513728000),(574,'Saldo Awal',132,'Saldo Awal',2,25000,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',2,NULL,50,1513728000),(575,'Saldo Awal',133,'Saldo Awal',2,4000,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',2,NULL,50,1513728000),(576,'Saldo Awal',134,'Saldo Awal',NULL,0,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(577,'Saldo Awal',135,'Saldo Awal',NULL,0,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(578,'Saldo Awal',136,'Saldo Awal',1,675000,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(579,'Saldo Awal',137,'Saldo Awal',1,54500,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(580,'Saldo Awal',138,'Saldo Awal',2,4200,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',2,NULL,50,1513728000),(581,'Saldo Awal',139,'Saldo Awal',2,2000,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',2,NULL,50,1513728000),(582,'Saldo Awal',173,'Saldo Awal',1,9500,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(583,'Saldo Awal',174,'Saldo Awal',1,12750,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(584,'Saldo Awal',175,'Saldo Awal',1,4000,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(585,'Saldo Awal',176,'Saldo Awal',1,18000,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',1,NULL,50,1513728000),(586,'Saldo Awal',177,'Saldo Awal',NULL,0,NULL,0,1514428279,1,NULL,NULL,NULL,NULL,'masuk',NULL,NULL,50,1513728000),(587,'J17/00004',34,'Penjualan',NULL,0,15,329000,1514440436,7,5,NULL,NULL,NULL,'keluar',NULL,307351,50,1514221200),(588,'J17/00004',14,'Penjualan',NULL,0,15,255000,1514440436,7,5,NULL,NULL,NULL,'keluar',NULL,230503,50,1514221200),(589,'J17/00004',121,'Penjualan',NULL,0,10,320000,1514440436,7,5,NULL,NULL,NULL,'keluar',NULL,309500,50,1514221200),(590,'J17/00005',34,'Penjualan',NULL,0,15,329000,1514441526,7,5,NULL,NULL,NULL,'keluar',NULL,318250,50,1514221200),(591,'J17/00005',14,'Penjualan',NULL,0,15,255000,1514441526,7,5,NULL,NULL,NULL,'keluar',NULL,243750,50,1514221200),(592,'J17/00005',121,'Penjualan',NULL,0,10,320000,1514441526,7,5,NULL,NULL,NULL,'keluar',NULL,309500,50,1514221200),(593,'J17/00004',34,'Penjualan',NULL,0,10,329000,1514442599,7,6,NULL,NULL,NULL,'keluar',NULL,318250,50,1514183329),(594,'J17/00005',13,'Penjualan',NULL,0,17,327500,1514442704,7,7,NULL,NULL,NULL,'keluar',NULL,292000,50,1514183412),(595,'J17/00005',149,'Penjualan',NULL,0,17,0,1514442704,7,7,NULL,NULL,NULL,'keluar',NULL,4000,50,1514183412),(596,'J17/00006',13,'Penjualan',NULL,0,5,327500,1514442776,7,8,NULL,NULL,NULL,'keluar',NULL,292000,50,1514183519),(597,'J17/00006',149,'Penjualan',NULL,0,5,0,1514442776,7,8,NULL,NULL,NULL,'keluar',NULL,4000,50,1514183519),(598,'J17/00007',140,'Penjualan',NULL,0,4,337500,1514442831,7,9,NULL,NULL,NULL,'keluar',NULL,314500,50,1514183585),(600,'J17/00009',21,'Penjualan',NULL,0,10,272000,1514443033,7,11,NULL,NULL,NULL,'keluar',NULL,255000,50,1514183772),(601,'J17/00010',13,'Penjualan',NULL,0,1,325000,1514443145,7,12,NULL,NULL,NULL,'keluar',NULL,292000,50,1514183850),(602,'J17/00010',149,'Penjualan',NULL,0,1,0,1514443145,7,12,NULL,NULL,NULL,'keluar',NULL,4000,50,1514183850),(603,'J17/00010',121,'Penjualan',NULL,0,1,317500,1514443145,7,12,NULL,NULL,NULL,'keluar',NULL,309500,50,1514183850),(604,'J17/00011',121,'Penjualan',NULL,0,20,320000,1514443470,7,13,NULL,NULL,NULL,'keluar',NULL,309500,50,1514270579),(605,'J17/00012',121,'Penjualan',NULL,0,10,320000,1514443504,1,5,NULL,NULL,NULL,'keluar',NULL,309500,50,1514221200),(606,'J17/00012',14,'Penjualan',NULL,0,15,255000,1514443504,1,5,NULL,NULL,NULL,'keluar',NULL,243750,50,1514221200),(607,'J17/00012',34,'Penjualan',NULL,0,15,329000,1514443504,1,5,NULL,NULL,NULL,'keluar',NULL,318250,50,1514221200),(608,'J17/00012',34,'Penjualan',NULL,0,15,329000,1514443562,1,5,NULL,NULL,NULL,'keluar',NULL,318250,50,1514221200),(609,'J17/00012',14,'Penjualan',NULL,0,15,255000,1514443562,1,5,NULL,NULL,NULL,'keluar',NULL,243750,50,1514221200),(610,'J17/00012',121,'Penjualan',NULL,0,10,320000,1514443562,1,5,NULL,NULL,NULL,'keluar',NULL,309500,50,1514221200),(611,'J17/00012',34,'Penjualan',NULL,0,15,329000,1514443590,1,5,NULL,NULL,NULL,'keluar',NULL,318250,50,1514221200),(612,'J17/00012',14,'Penjualan',NULL,0,15,255000,1514443590,1,5,NULL,NULL,NULL,'keluar',NULL,243750,50,1514221200),(613,'J17/00012',121,'Penjualan',NULL,0,10,320000,1514443590,1,5,NULL,NULL,NULL,'keluar',NULL,0,50,1514221200),(614,'J17/00012',121,'Penjualan',NULL,0,10,320000,1514443779,1,5,NULL,NULL,NULL,'keluar',NULL,0,50,1514221200),(615,'J17/00007',140,'Unpost Penjualan J17/00007',4,337500,NULL,0,1514444167,1,9,NULL,NULL,NULL,'masuk',4,NULL,NULL,1514183585),(616,'J17/00012',140,'Penjualan',NULL,0,4,337500,1514444172,1,9,NULL,NULL,NULL,'keluar',NULL,0,50,1514183585),(617,'B17/00008',121,'pembelian',40,309500,NULL,0,1514444185,7,NULL,4,NULL,NULL,'masuk',40,NULL,50,1514357453),(618,'J17/00007',140,'Unpost Penjualan J17/00007',4,337500,NULL,0,1514444220,1,9,NULL,NULL,NULL,'masuk',0,NULL,50,1514183585),(619,'J17/00012',140,'Penjualan',NULL,0,4,337500,1514444225,1,9,NULL,NULL,NULL,'keluar',NULL,337500,50,1514183585),(620,'J17/00002',121,'Unpost Penjualan J17/00002',10,320000,NULL,0,1514444267,1,5,NULL,NULL,NULL,'masuk',0,NULL,50,1514221200),(621,'J17/00012',121,'Penjualan',NULL,0,10,320000,1514444272,1,5,NULL,NULL,NULL,'keluar',NULL,311600,50,1514221200),(622,'B17/00009',38,'pembelian',20,304000,NULL,0,1514444467,7,NULL,5,NULL,NULL,'masuk',20,NULL,50,1514444232),(623,'B17/00009',13,'pembelian',30,292000,NULL,0,1514444467,7,NULL,5,NULL,NULL,'masuk',30,NULL,50,1514444232),(624,'B17/00009',34,'pembelian',100,318250,NULL,0,1514444467,7,NULL,5,NULL,NULL,'masuk',100,NULL,50,1514444232),(625,'B17/00009',6,'pembelian',30,313750,NULL,0,1514444467,7,NULL,5,NULL,NULL,'masuk',30,NULL,50,1514444232),(626,'B17/00009',14,'pembelian',20,243750,NULL,0,1514444467,7,NULL,5,NULL,NULL,'masuk',20,NULL,50,1514444232),(627,'J17/00002',121,'Unpost Penjualan J17/00002',10,320000,NULL,0,1514445061,7,5,NULL,NULL,NULL,'masuk',10,NULL,NULL,1514221200),(628,'J17/00012',34,'Penjualan',NULL,0,15,329000,1514445245,7,5,NULL,NULL,NULL,'keluar',NULL,318250,50,1514221200),(629,'J17/00012',14,'Penjualan',NULL,0,15,255000,1514445245,7,5,NULL,NULL,NULL,'keluar',NULL,243750,50,1514221200),(630,'J17/00012',121,'Penjualan',NULL,0,10,320000,1514445245,7,5,NULL,NULL,NULL,'keluar',NULL,312125,50,1514221200),(631,'J17/00012',121,'Penjualan',NULL,0,11,317500,1514445587,7,14,NULL,NULL,NULL,'keluar',NULL,313000,50,1514272704),(632,'J17/00001',22,'Unpost Penjualan J17/00001',5,335000,NULL,0,1514469094,1,2,NULL,NULL,NULL,'masuk',5,NULL,50,1514013426),(633,'J17/00013',22,'Penjualan',NULL,0,5,335000,1514469130,1,2,NULL,NULL,NULL,'keluar',NULL,324425,50,1514013426),(634,'J17/00001',22,'Unpost Penjualan J17/00001',5,335000,NULL,0,1514469471,1,2,NULL,NULL,NULL,'masuk',5,NULL,50,1514013426),(635,'J17/00013',22,'Penjualan',NULL,0,5,335000,1514469479,1,2,NULL,NULL,NULL,'keluar',NULL,325600,50,1514013426),(636,'J17/00001',22,'Unpost Penjualan J17/00001',5,335000,NULL,0,1514469517,1,2,NULL,NULL,NULL,'masuk',5,NULL,50,1514013426),(637,'J17/00013',22,'Penjualan',NULL,0,5,335000,1514469534,1,2,NULL,NULL,NULL,'keluar',NULL,326775,50,1514013426),(638,'J17/00009',21,'Unpost Penjualan J17/00009',10,272000,NULL,0,1514471991,1,11,NULL,NULL,NULL,'masuk',10,NULL,50,1514183772),(639,'B17/00010',127,'pembelian',1,5500,NULL,0,1514474300,1,NULL,1,NULL,NULL,'masuk',1,NULL,45,NULL),(640,'J17/00001',22,'Unpost Penjualan J17/00001',5,335000,NULL,0,1514475043,1,2,NULL,NULL,NULL,'masuk',5,NULL,50,1514013426),(641,'J17/00013',21,'Penjualan',NULL,0,10,272000,1514475112,1,11,NULL,NULL,NULL,'keluar',NULL,263500,50,1514183772),(642,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514476934,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(643,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514476934,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(644,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514476934,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(645,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514476964,1,12,NULL,NULL,NULL,'keluar',NULL,292375,50,1514183850),(646,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514476964,1,12,NULL,NULL,NULL,'keluar',NULL,3959,50,1514183850),(647,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514476964,1,12,NULL,NULL,NULL,'keluar',NULL,315150,50,1514183850),(648,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514477241,1,12,NULL,NULL,NULL,'masuk',1,NULL,NULL,1514183850),(649,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514477241,1,12,NULL,NULL,NULL,'masuk',1,NULL,NULL,1514183850),(650,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514477241,1,12,NULL,NULL,NULL,'masuk',1,NULL,NULL,1514183850),(651,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514477247,1,12,NULL,NULL,NULL,'keluar',NULL,315447,50,1514183850),(652,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514477247,1,12,NULL,NULL,NULL,'keluar',NULL,3959,50,1514183850),(653,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514477247,1,12,NULL,NULL,NULL,'keluar',NULL,292379,50,1514183850),(654,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514477275,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(655,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514477275,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(656,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514477275,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(657,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514477280,1,12,NULL,NULL,NULL,'keluar',NULL,292759,50,1514183850),(658,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514477280,1,12,NULL,NULL,NULL,'keluar',NULL,3918,50,1514183850),(659,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514477280,1,12,NULL,NULL,NULL,'keluar',NULL,315868,50,1514183850),(660,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514477442,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(661,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514477442,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(662,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514477442,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(663,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514477456,1,12,NULL,NULL,NULL,'keluar',NULL,316289,50,1514183850),(664,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514477456,1,12,NULL,NULL,NULL,'keluar',NULL,3876,50,1514183850),(665,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514477456,1,12,NULL,NULL,NULL,'keluar',NULL,293138,50,1514183850),(666,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514477715,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(667,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514477715,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(668,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514477715,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(669,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514477904,1,12,NULL,NULL,NULL,'keluar',NULL,293517,50,1514183850),(670,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514477904,1,12,NULL,NULL,NULL,'keluar',NULL,3835,50,1514183850),(671,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514477904,1,12,NULL,NULL,NULL,'keluar',NULL,316711,50,1514183850),(672,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514477936,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(673,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514477936,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(674,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514477936,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(675,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514477961,1,12,NULL,NULL,NULL,'keluar',NULL,317132,50,1514183850),(676,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514477961,1,12,NULL,NULL,NULL,'keluar',NULL,3794,50,1514183850),(677,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514477961,1,12,NULL,NULL,NULL,'keluar',NULL,293897,50,1514183850),(678,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514478025,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(679,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514478025,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(680,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514478025,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(681,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514478030,1,12,NULL,NULL,NULL,'keluar',NULL,294276,50,1514183850),(682,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514478030,1,12,NULL,NULL,NULL,'keluar',NULL,3753,50,1514183850),(683,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514478030,1,12,NULL,NULL,NULL,'keluar',NULL,317553,50,1514183850),(684,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514478048,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(685,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514478048,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(686,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514478048,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(687,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514478059,1,12,NULL,NULL,NULL,'keluar',NULL,317974,50,1514183850),(688,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514478059,1,12,NULL,NULL,NULL,'keluar',NULL,3711,50,1514183850),(689,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514478059,1,12,NULL,NULL,NULL,'keluar',NULL,294655,50,1514183850),(690,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514478173,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(691,'J17/00010',149,'Unpost Penjualan J17/00010',1,1250,NULL,0,1514478173,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(692,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514478173,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(693,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514478176,1,12,NULL,NULL,NULL,'keluar',NULL,295034,50,1514183850),(694,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514478176,1,12,NULL,NULL,NULL,'keluar',NULL,3683,50,1514183850),(695,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514478176,1,12,NULL,NULL,NULL,'keluar',NULL,318395,50,1514183850),(696,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514478188,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(697,'J17/00010',149,'Unpost Penjualan J17/00010',1,1250,NULL,0,1514478188,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(698,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514478188,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(699,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514478196,1,12,NULL,NULL,NULL,'keluar',NULL,318816,50,1514183850),(700,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514478196,1,12,NULL,NULL,NULL,'keluar',NULL,3655,50,1514183850),(701,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514478196,1,12,NULL,NULL,NULL,'keluar',NULL,295414,50,1514183850),(702,'J17/00006',13,'Unpost Penjualan J17/00006',5,327500,NULL,0,1514478539,1,8,NULL,NULL,NULL,'masuk',0,NULL,50,1514183519),(703,'J17/00006',149,'Unpost Penjualan J17/00006',5,0,NULL,0,1514478539,1,8,NULL,NULL,NULL,'masuk',2,NULL,50,1514183519),(704,'J17/00013',13,'Penjualan',NULL,0,5,327500,1514478552,1,8,NULL,NULL,NULL,'keluar',NULL,297214,50,1514183519),(705,'J17/00013',149,'Penjualan',NULL,0,5,12500,1514478552,1,8,NULL,NULL,NULL,'keluar',NULL,3470,50,1514183519),(706,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514478556,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(707,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514478556,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(708,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514478556,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(709,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514478560,1,12,NULL,NULL,NULL,'keluar',NULL,297833,50,1514183850),(710,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514478560,1,12,NULL,NULL,NULL,'keluar',NULL,3407,50,1514183850),(711,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514478560,1,12,NULL,NULL,NULL,'keluar',NULL,318684,50,1514183850),(712,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514478800,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(713,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514478800,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(714,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514478800,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(715,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514478804,1,12,NULL,NULL,NULL,'keluar',NULL,318553,50,1514183850),(716,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514478804,1,12,NULL,NULL,NULL,'keluar',NULL,3366,50,1514183850),(717,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514478804,1,12,NULL,NULL,NULL,'keluar',NULL,298213,50,1514183850),(718,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514478824,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(719,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514478824,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(720,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514478824,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(721,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514478827,1,12,NULL,NULL,NULL,'keluar',NULL,298592,50,1514183850),(722,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514478827,1,12,NULL,NULL,NULL,'keluar',NULL,3325,50,1514183850),(723,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514478827,1,12,NULL,NULL,NULL,'keluar',NULL,318421,50,1514183850),(724,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514478958,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(725,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514478958,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(726,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514478958,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(727,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514478963,1,12,NULL,NULL,NULL,'keluar',NULL,318289,50,1514183850),(728,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514478963,1,12,NULL,NULL,NULL,'keluar',NULL,3284,50,1514183850),(729,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514478963,1,12,NULL,NULL,NULL,'keluar',NULL,298971,50,1514183850),(730,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514478986,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(731,'J17/00010',149,'Unpost Penjualan J17/00010',1,125,NULL,0,1514478986,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(732,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514478986,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(733,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514479051,1,12,NULL,NULL,NULL,'keluar',NULL,299351,50,1514183850),(734,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514479051,1,12,NULL,NULL,NULL,'keluar',NULL,3244,50,1514183850),(735,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514479051,1,12,NULL,NULL,NULL,'keluar',NULL,318158,50,1514183850),(736,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514479102,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(737,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514479102,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(738,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514479102,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(739,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514479105,1,12,NULL,NULL,NULL,'keluar',NULL,318026,50,1514183850),(740,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514479105,1,12,NULL,NULL,NULL,'keluar',NULL,3202,50,1514183850),(741,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514479105,1,12,NULL,NULL,NULL,'keluar',NULL,299730,50,1514183850),(742,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514479146,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(743,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514479146,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(744,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514479146,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(745,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514479149,1,12,NULL,NULL,NULL,'keluar',NULL,300109,50,1514183850),(746,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514479149,1,12,NULL,NULL,NULL,'keluar',NULL,3161,50,1514183850),(747,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514479149,1,12,NULL,NULL,NULL,'keluar',NULL,317895,50,1514183850),(748,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514479187,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(749,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514479187,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(750,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514479188,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(751,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514479192,1,12,NULL,NULL,NULL,'keluar',NULL,317763,50,1514183850),(752,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514479192,1,12,NULL,NULL,NULL,'keluar',NULL,3120,50,1514183850),(753,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514479192,1,12,NULL,NULL,NULL,'keluar',NULL,300489,50,1514183850),(754,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514479242,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(755,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514479242,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(756,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514479242,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(757,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514479246,1,12,NULL,NULL,NULL,'keluar',NULL,300868,50,1514183850),(758,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514479246,1,12,NULL,NULL,NULL,'keluar',NULL,3079,50,1514183850),(759,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514479246,1,12,NULL,NULL,NULL,'keluar',NULL,317632,50,1514183850),(760,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514479322,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(761,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514479322,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(762,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514479322,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(763,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514479326,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(764,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514479326,1,12,NULL,NULL,NULL,'keluar',NULL,3037,50,1514183850),(765,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514479326,1,12,NULL,NULL,NULL,'keluar',NULL,301247,50,1514183850),(766,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514479411,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(767,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514479411,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(768,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514479411,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(769,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514479414,1,12,NULL,NULL,NULL,'keluar',NULL,301626,50,1514183850),(770,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514479414,1,12,NULL,NULL,NULL,'keluar',NULL,2996,50,1514183850),(771,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514479414,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(772,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514479455,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(773,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514479455,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(774,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514479455,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(775,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514479458,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(776,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514479458,1,12,NULL,NULL,NULL,'keluar',NULL,2955,50,1514183850),(777,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514479458,1,12,NULL,NULL,NULL,'keluar',NULL,302006,50,1514183850),(778,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514479479,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(779,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514479479,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(780,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514479479,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(781,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514479482,1,12,NULL,NULL,NULL,'keluar',NULL,302385,50,1514183850),(782,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514479482,1,12,NULL,NULL,NULL,'keluar',NULL,2914,50,1514183850),(783,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514479482,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(784,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514479549,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(785,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514479549,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(786,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514479549,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(787,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514479552,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(788,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514479552,1,12,NULL,NULL,NULL,'keluar',NULL,2872,50,1514183850),(789,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514479553,1,12,NULL,NULL,NULL,'keluar',NULL,302764,50,1514183850),(790,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514479662,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(791,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514479662,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(792,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514479662,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(793,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514479666,1,12,NULL,NULL,NULL,'keluar',NULL,303144,50,1514183850),(794,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514479666,1,12,NULL,NULL,NULL,'keluar',NULL,2831,50,1514183850),(795,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514479666,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(796,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514479716,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(797,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514479716,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(798,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514479716,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(799,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514479721,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(800,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514479721,1,12,NULL,NULL,NULL,'keluar',NULL,2790,50,1514183850),(801,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514479721,1,12,NULL,NULL,NULL,'keluar',NULL,303523,50,1514183850),(802,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514479875,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(803,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514479875,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(804,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514479875,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(805,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514479878,1,12,NULL,NULL,NULL,'keluar',NULL,303902,50,1514183850),(806,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514479878,1,12,NULL,NULL,NULL,'keluar',NULL,2749,50,1514183850),(807,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514479878,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(808,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514479935,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(809,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514479935,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(810,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514479935,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(811,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514479940,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(812,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514479940,1,12,NULL,NULL,NULL,'keluar',NULL,2707,50,1514183850),(813,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514479940,1,12,NULL,NULL,NULL,'keluar',NULL,304282,50,1514183850),(814,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514480308,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(815,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514480308,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(816,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514480308,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(817,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514480312,1,12,NULL,NULL,NULL,'keluar',NULL,304661,50,1514183850),(818,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514480312,1,12,NULL,NULL,NULL,'keluar',NULL,2666,50,1514183850),(819,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514480312,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(820,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514480500,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(821,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514480500,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(822,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514480500,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(823,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514480505,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(824,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514480505,1,12,NULL,NULL,NULL,'keluar',NULL,2625,50,1514183850),(825,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514480505,1,12,NULL,NULL,NULL,'keluar',NULL,305040,50,1514183850),(826,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514480575,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(827,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514480575,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(828,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514480575,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(829,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514480578,1,12,NULL,NULL,NULL,'keluar',NULL,305420,50,1514183850),(830,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514480578,1,12,NULL,NULL,NULL,'keluar',NULL,2584,50,1514183850),(831,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514480578,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(832,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514480779,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(833,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514480779,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(834,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514480779,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(835,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514480782,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(836,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514480782,1,12,NULL,NULL,NULL,'keluar',NULL,2543,50,1514183850),(837,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514480782,1,12,NULL,NULL,NULL,'keluar',NULL,305799,50,1514183850),(838,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514480888,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(839,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514480888,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(840,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514480888,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(841,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514480892,1,12,NULL,NULL,NULL,'keluar',NULL,306178,50,1514183850),(842,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514480892,1,12,NULL,NULL,NULL,'keluar',NULL,2501,50,1514183850),(843,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514480892,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(844,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514481054,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(845,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514481054,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(846,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514481054,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(847,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514481059,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(848,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514481059,1,12,NULL,NULL,NULL,'keluar',NULL,2460,50,1514183850),(849,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514481059,1,12,NULL,NULL,NULL,'keluar',NULL,306557,50,1514183850),(850,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514481106,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(851,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514481106,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(852,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514481106,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(853,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514481112,1,12,NULL,NULL,NULL,'keluar',NULL,306937,50,1514183850),(854,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514481112,1,12,NULL,NULL,NULL,'keluar',NULL,2419,50,1514183850),(855,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514481112,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(856,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514481146,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(857,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514481146,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(858,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514481146,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(859,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514481152,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(860,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514481152,1,12,NULL,NULL,NULL,'keluar',NULL,2378,50,1514183850),(861,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514481152,1,12,NULL,NULL,NULL,'keluar',NULL,307316,50,1514183850),(862,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514481452,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(863,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514481452,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(864,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514481452,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(865,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514481456,1,12,NULL,NULL,NULL,'keluar',NULL,307695,50,1514183850),(866,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514481456,1,12,NULL,NULL,NULL,'keluar',NULL,2336,50,1514183850),(867,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514481456,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(868,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514481799,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(869,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514481799,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(870,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514481799,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(871,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514481804,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(872,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514481804,1,12,NULL,NULL,NULL,'keluar',NULL,2295,50,1514183850),(873,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514481804,1,12,NULL,NULL,NULL,'keluar',NULL,308075,50,1514183850),(874,'J17/00010',13,'Unpost Penjualan J17/00010',1,325000,NULL,0,1514482001,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(875,'J17/00010',149,'Unpost Penjualan J17/00010',1,0,NULL,0,1514482001,1,12,NULL,NULL,NULL,'masuk',1,NULL,50,1514183850),(876,'J17/00010',121,'Unpost Penjualan J17/00010',1,317500,NULL,0,1514482001,1,12,NULL,NULL,NULL,'masuk',0,NULL,50,1514183850),(877,'J17/00013',13,'Penjualan',NULL,0,1,325000,1514482004,1,12,NULL,NULL,NULL,'keluar',NULL,308454,50,1514183850),(878,'J17/00013',149,'Penjualan',NULL,0,1,12500,1514482004,1,12,NULL,NULL,NULL,'keluar',NULL,2254,50,1514183850),(879,'J17/00013',121,'Penjualan',NULL,0,1,317500,1514482004,1,12,NULL,NULL,NULL,'keluar',NULL,317500,50,1514183850),(880,'J17/00005',13,'Unpost Penjualan J17/00005',17,327500,NULL,0,1514482089,1,7,NULL,NULL,NULL,'masuk',0,NULL,50,1514183412),(881,'J17/00005',149,'Unpost Penjualan J17/00005',17,0,NULL,0,1514482089,1,7,NULL,NULL,NULL,'masuk',17,NULL,50,1514183412),(882,'J17/00013',13,'Penjualan',NULL,0,17,327500,1514482095,1,7,NULL,NULL,NULL,'keluar',NULL,311757,50,1514183412),(883,'J17/00013',149,'Penjualan',NULL,0,17,12500,1514482095,1,7,NULL,NULL,NULL,'keluar',NULL,1899,50,1514183412),(884,'J17/00005',149,'Unpost Penjualan J17/00005',17,0,NULL,0,1514482191,1,7,NULL,NULL,NULL,'masuk',17,NULL,50,1514183412),(885,'J17/00005',13,'Unpost Penjualan J17/00005',17,327500,NULL,0,1514482191,1,7,NULL,NULL,NULL,'masuk',0,NULL,50,1514183412),(886,'J17/00013',149,'Penjualan',NULL,0,17,12500,1514482295,1,7,NULL,NULL,NULL,'keluar',NULL,1298,50,1514183412),(887,'J17/00013',13,'Penjualan',NULL,0,17,327500,1514482295,1,7,NULL,NULL,NULL,'keluar',NULL,317617,50,1514183412),(888,'J17/00005',13,'Unpost Penjualan J17/00005',17,327500,NULL,0,1514482309,1,7,NULL,NULL,NULL,'masuk',13,NULL,50,1514183412),(889,'J17/00005',149,'Unpost Penjualan J17/00005',17,0,NULL,0,1514482309,1,7,NULL,NULL,NULL,'masuk',17,NULL,50,1514183412),(890,'J17/00013',13,'Penjualan',NULL,0,17,327500,1514482625,1,7,NULL,NULL,NULL,'keluar',NULL,323476,50,1514183412),(891,'J17/00013',149,'Penjualan',NULL,0,17,12500,1514482625,1,7,NULL,NULL,NULL,'keluar',NULL,696,50,1514183412),(892,'J17/00006',149,'Unpost Penjualan J17/00006',5,0,NULL,0,1514482668,1,8,NULL,NULL,NULL,'masuk',5,NULL,50,1514183519),(893,'J17/00006',13,'Unpost Penjualan J17/00006',5,327500,NULL,0,1514482668,1,8,NULL,NULL,NULL,'masuk',5,NULL,50,1514183519),(894,'J17/00013',149,'Penjualan',NULL,0,5,12500,1514482682,1,8,NULL,NULL,NULL,'keluar',NULL,105,50,1514183519),(895,'J17/00013',13,'Penjualan',NULL,0,5,327500,1514482682,1,8,NULL,NULL,NULL,'keluar',NULL,326676,50,1514183519),(908,'J17/00018',14,'Penjualan',NULL,0,10,255000,1514532885,7,20,NULL,NULL,NULL,'keluar',NULL,243750,50,1514307600),(907,'J17/00018',34,'Penjualan',NULL,0,10,329000,1514532885,7,20,NULL,NULL,NULL,'keluar',NULL,318250,50,1514307600),(910,'J17/00018',43,'Penjualan',NULL,0,1300,4000,1514533916,7,21,NULL,NULL,NULL,'keluar',NULL,3800,50,1514361074),(906,'J17/00018',22,'Penjualan',NULL,0,5,335000,1514532320,1,2,NULL,NULL,NULL,'keluar',NULL,327950,50,1514013426),(904,'J17/00016',149,'Penjualan',NULL,0,3,12500,1514529699,7,18,NULL,NULL,NULL,'keluar',NULL,28,50,1514356801),(905,'J17/00017',34,'Penjualan',NULL,0,20,328000,1514529763,7,19,NULL,NULL,NULL,'keluar',NULL,318250,50,1514356907),(903,'J17/00016',149,'Penjualan',NULL,0,3,0,1514529699,7,18,NULL,NULL,NULL,'keluar',NULL,27,50,1514356801),(909,'B17/00010',43,'pembelian',1300,3800,NULL,0,1514533587,7,NULL,7,NULL,NULL,'masuk',0,NULL,50,1514360743),(901,'J17/00016',34,'Penjualan',NULL,0,3,329000,1514529699,7,18,NULL,NULL,NULL,'keluar',NULL,318250,50,1514356801),(896,'B17/00010',5,'pembelian',40,165000,NULL,0,1514528119,7,NULL,6,NULL,NULL,'masuk',0,NULL,50,0),(897,'B17/00010',157,'pembelian',10,157000,NULL,0,1514528119,7,NULL,6,NULL,NULL,'masuk',10,NULL,50,0),(898,'J17/00013',6,'Penjualan',NULL,0,10,325000,1514529108,7,15,NULL,NULL,NULL,'keluar',NULL,313750,50,1514269680),(899,'J17/00014',15,'Penjualan',NULL,0,20,215000,1514529517,7,16,NULL,NULL,NULL,'keluar',NULL,0,50,1514270250),(900,'J17/00015',34,'Penjualan',NULL,0,40,331500,1514529589,7,17,NULL,NULL,NULL,'keluar',NULL,318250,50,1514270329),(902,'J17/00016',13,'Penjualan',NULL,0,3,320000,1514529699,7,18,NULL,NULL,NULL,'keluar',NULL,326657,50,1514356801),(911,'J17/00019',5,'Penjualan',NULL,0,20,185000,1514602695,1,22,NULL,NULL,NULL,'keluar',NULL,165000,50,1514602651),(912,'B17/00011',5,'pembelian',10,190000,NULL,0,1514602771,1,NULL,8,NULL,NULL,'masuk',5,NULL,50,1514602746),(913,'J17/00020',5,'Penjualan',NULL,0,25,185000,1514602969,1,23,NULL,NULL,NULL,'keluar',NULL,173333,50,1514602901),(914,'J17/00020',5,'Unpost Penjualan J17/00020',25,185000,NULL,0,1514605687,1,23,NULL,NULL,NULL,'masuk',25,NULL,50,1514605687),(915,'B17/00012',22,'pembelian',5,328250,NULL,0,1514618234,1,NULL,9,NULL,NULL,'masuk',5,NULL,50,1514618220);
/*!40000 ALTER TABLE `pos_kartu_stok` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `pos_pembelian`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_pembelian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(25) DEFAULT NULL,
  `no_invoice` varchar(222) DEFAULT NULL,
  `m_cabang_id` int(11) DEFAULT NULL,
  `m_supplier_id` tinyint(4) DEFAULT NULL,
  `m_akun_id` int(11) DEFAULT NULL,
  `tanggal` int(11) DEFAULT NULL,
  `catatan` text,
  `total` bigint(20) DEFAULT NULL,
  `cash` int(11) DEFAULT NULL,
  `hutang` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `jatuh_tempo` int(11) DEFAULT NULL,
  `tanggal_batal` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`m_cabang_id`,`m_supplier_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_pembelian`
--

LOCK TABLES `pos_pembelian` WRITE;
/*!40000 ALTER TABLE `pos_pembelian` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `pos_pembelian` VALUES (6,'',NULL,50,10,2,0,NULL,8170000,0,8170000,'belum lunas',0,NULL,1514528063,7,1514528119,7),(2,'B17/00002',NULL,45,1,1,1514001490,NULL,20000,20000,0,'lunas',1514001490,NULL,1514001502,1,1514001502,1),(7,'B17/00010',NULL,50,21,NULL,1514360743,NULL,4940000,0,4940000,'belum lunas',1514965543,NULL,1514533587,7,1514533587,7),(4,'B17/00008',NULL,50,9,NULL,1514357453,NULL,12380000,0,12380000,'belum lunas',1514962253,NULL,1514444185,7,1514444185,7),(5,'B17/00009','3424/DO-FND',50,5,NULL,1514444232,NULL,60952500,0,60952500,'belum lunas',1514530632,NULL,1514444467,7,1514444467,7),(8,'B17/00011',NULL,50,1,1,1514602746,NULL,1900000,1900000,0,'lunas',1514602746,NULL,1514602771,1,1514602771,1),(9,'B17/00012',NULL,50,3,2,1514618220,NULL,1641250,1641250,0,'lunas',1514618220,NULL,1514618234,1,1514618234,1);
/*!40000 ALTER TABLE `pos_pembelian` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `pos_pembelian_det`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_pembelian_det` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_pembelian_id` int(11) NOT NULL,
  `m_produk_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pos_pembelian_det_pos_pembelian1_idx` (`pos_pembelian_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_pembelian_det`
--

LOCK TABLES `pos_pembelian_det` WRITE;
/*!40000 ALTER TABLE `pos_pembelian_det` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `pos_pembelian_det` VALUES (15,6,157,10,157000,0),(2,2,128,1,20000,0),(14,6,5,40,165000,0),(5,4,121,40,309500,0),(6,5,38,20,304000,0),(7,5,13,30,292000,0),(8,5,34,100,318250,0),(9,5,6,30,313750,0),(10,5,14,20,243750,0),(16,7,43,1300,3800,0),(17,8,5,10,190000,0),(18,9,22,5,328250,0);
/*!40000 ALTER TABLE `pos_pembelian_det` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `pos_penjualan`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_penjualan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(25) DEFAULT NULL,
  `m_cabang_id` int(11) DEFAULT NULL,
  `m_customer_id` int(11) DEFAULT NULL,
  `m_akun_id` int(11) DEFAULT NULL,
  `tanggal` int(11) DEFAULT NULL,
  `catatan` text,
  `alamat_pengiriman` text,
  `total` int(11) DEFAULT NULL,
  `cash` int(11) DEFAULT NULL,
  `piutang` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `catatan_batal` text,
  `tanggal_batal` int(11) DEFAULT NULL,
  `jatuh_tempo` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`m_cabang_id`,`m_customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_penjualan`
--

LOCK TABLES `pos_penjualan` WRITE;
/*!40000 ALTER TABLE `pos_penjualan` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `pos_penjualan` VALUES (2,'J17/00001',50,60,NULL,1514013426,NULL,NULL,1675000,0,1675000,'belum lunas',NULL,NULL,1514618226,1514013683,1,1514532320,1),(21,'J17/00018',50,98,NULL,1514361074,NULL,NULL,5200000,0,5200000,'belum lunas',NULL,NULL,1514965874,1514533916,7,1514533916,7),(5,'J17/00002',50,150,NULL,1514221200,NULL,NULL,11960000,0,11960000,'belum lunas',NULL,NULL,1515344400,1514440436,7,1514445245,7),(6,'J17/00004',50,68,1,1514183329,NULL,NULL,3290000,0,3290000,'belum lunas',NULL,NULL,1514183329,1514442599,7,1514442599,7),(7,'J17/00005',50,90,NULL,1514183412,NULL,NULL,5567500,0,5567500,'belum lunas',NULL,NULL,1514788212,1514442704,7,1514482625,1),(8,'J17/00006',50,103,NULL,1514183519,NULL,NULL,1637500,0,1637500,'belum lunas',NULL,NULL,1514788319,1514442776,7,1514482682,1),(9,'J17/00007',50,110,1,1514183585,NULL,NULL,1350000,0,1350000,'belum lunas',NULL,NULL,1514788385,1514442831,7,1514444225,1),(10,'J17/00008',50,85,1,1514183638,NULL,NULL,2303000,0,2303000,'belum lunas',NULL,NULL,1514788438,1514442954,7,1514442954,7),(11,'J17/00009',50,111,NULL,1514183772,NULL,NULL,2720000,0,2720000,'belum lunas',NULL,NULL,1514788572,1514443033,7,1514475111,1),(12,'J17/00010',50,143,1,1514183850,NULL,NULL,642500,642500,0,'lunas',NULL,NULL,1514183850,1514443145,7,1514482004,1),(13,'J17/00011',50,151,1,1514270579,NULL,NULL,6400000,0,6400000,'belum lunas',NULL,NULL,1515220979,1514443470,7,1514443470,7),(14,'J17/00012',50,238,1,1514272704,NULL,NULL,3492500,0,3492500,'belum lunas',NULL,NULL,1514272704,1514445587,7,1514445587,7),(15,'J17/00013',50,191,NULL,1514269680,NULL,NULL,3250000,0,3250000,'belum lunas',NULL,NULL,1515479280,1514529108,7,1514529108,7),(16,'J17/00014',50,91,NULL,1514270250,NULL,NULL,4300000,0,4300000,'belum lunas',NULL,NULL,1515047850,1514529517,7,1514529517,7),(17,'J17/00015',50,148,NULL,1514270329,NULL,NULL,13260000,0,13260000,'belum lunas',NULL,NULL,1514529529,1514529589,7,1514529589,7),(18,'J17/00016',50,79,NULL,1514356801,NULL,NULL,1984500,0,1984500,'belum lunas',NULL,NULL,1514529601,1514529699,7,1514529699,7),(19,'J17/00017',50,172,NULL,1514356907,NULL,NULL,6560000,0,6560000,'belum lunas',NULL,NULL,1515480107,1514529763,7,1514529763,7),(20,'',50,150,1,1514307600,NULL,NULL,5840000,0,5840000,'belum lunas',NULL,NULL,1515430800,1514529857,7,1514532885,7),(22,'J17/00019',50,1,1,1514602651,NULL,NULL,3700000,3700000,0,'lunas',NULL,NULL,1514602651,1514602695,1,1514602695,1),(23,'J17/00020',50,2,2,1514602901,NULL,NULL,4625000,4625000,0,'draft',NULL,NULL,1514602901,1514602969,1,1514605687,1);
/*!40000 ALTER TABLE `pos_penjualan` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `pos_penjualan_det`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_penjualan_det` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_penjualan_id` int(11) NOT NULL,
  `m_produk_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pos_penjualan_det_pos_penjualan1_idx` (`pos_penjualan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_penjualan_det`
--

LOCK TABLES `pos_penjualan_det` WRITE;
/*!40000 ALTER TABLE `pos_penjualan_det` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `pos_penjualan_det` VALUES (1,1,22,5,335000,0),(185,2,22,5,335000,0),(5,3,34,5,329000,0),(6,3,14,5,255000,0),(8,4,22,2,340000,0),(42,5,121,10,320000,0),(41,5,14,15,255000,0),(40,5,34,15,329000,0),(15,6,34,10,329000,0),(172,7,149,17,12500,12500),(171,7,13,17,327500,0),(174,8,13,5,327500,0),(173,8,149,5,12500,12500),(38,9,140,4,337500,0),(21,10,34,7,329000,0),(47,11,21,10,272000,0),(166,12,121,1,317500,0),(165,12,149,1,12500,12500),(164,12,13,1,325000,0),(26,13,121,20,320000,0),(43,14,121,11,317500,0),(175,15,6,10,325000,0),(176,16,15,20,215000,0),(177,17,34,40,331500,0),(178,18,34,3,329000,0),(179,18,13,3,320000,0),(180,18,149,3,12500,12500),(181,18,149,3,12500,0),(182,19,34,20,328000,0),(187,20,14,10,255000,0),(186,20,34,10,329000,0),(188,21,43,1300,4000,0),(189,22,5,20,185000,0),(190,23,5,25,185000,0);
/*!40000 ALTER TABLE `pos_penjualan_det` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `pos_r_pembelian`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_r_pembelian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(25) DEFAULT NULL,
  `pos_pembelian_id` int(11) DEFAULT NULL,
  `m_cabang_id` varchar(45) DEFAULT NULL,
  `m_akun_id` varchar(45) DEFAULT NULL,
  `tanggal` int(11) DEFAULT NULL,
  `catatan` text,
  `total` bigint(20) DEFAULT NULL,
  `biaya_lain` bigint(20) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'berhasil',
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`pos_pembelian_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_r_pembelian`
--

LOCK TABLES `pos_r_pembelian` WRITE;
/*!40000 ALTER TABLE `pos_r_pembelian` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `pos_r_pembelian` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `pos_r_pembelian_det`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_r_pembelian_det` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_r_pembelian_id` int(11) NOT NULL,
  `pos_pembelian_det_id` int(11) DEFAULT NULL,
  `m_produk_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `jumlah_retur` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `harga_retur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pos_r_pembelian_det_pos_r_pembelian1_idx` (`pos_r_pembelian_id`),
  KEY `index2` (`m_produk_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_r_pembelian_det`
--

LOCK TABLES `pos_r_pembelian_det` WRITE;
/*!40000 ALTER TABLE `pos_r_pembelian_det` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `pos_r_pembelian_det` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `pos_r_penjualan`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_r_penjualan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(25) DEFAULT NULL,
  `pos_penjualan_id` int(11) DEFAULT NULL,
  `m_cabang_id` varchar(45) DEFAULT NULL,
  `m_akun_id` int(11) DEFAULT NULL,
  `tanggal` int(11) DEFAULT NULL,
  `catatan` text,
  `total` bigint(20) DEFAULT NULL,
  `biaya_lain` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'berhasil',
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`pos_penjualan_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_r_penjualan`
--

LOCK TABLES `pos_r_penjualan` WRITE;
/*!40000 ALTER TABLE `pos_r_penjualan` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `pos_r_penjualan` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `pos_r_penjualan_det`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_r_penjualan_det` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_r_penjualan_id` int(11) NOT NULL,
  `pos_penjualan_det_id` int(11) NOT NULL,
  `m_produk_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `jumlah_retur` int(11) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `harga_retur` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pos_r_penjualan_det_pos_r_penjualan1_idx` (`pos_r_penjualan_id`),
  KEY `index2` (`m_produk_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_r_penjualan_det`
--

LOCK TABLES `pos_r_penjualan_det` WRITE;
/*!40000 ALTER TABLE `pos_r_penjualan_det` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `pos_r_penjualan_det` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `pos_stok_opname`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_stok_opname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(25) DEFAULT NULL,
  `cabang_id` int(11) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `is_tmp` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_stok_opname`
--

LOCK TABLES `pos_stok_opname` WRITE;
/*!40000 ALTER TABLE `pos_stok_opname` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `pos_stok_opname` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `pos_stok_opname_det`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_stok_opname_det` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) DEFAULT NULL,
  `satuan_id` int(11) DEFAULT NULL,
  `stock_app` varchar(111) DEFAULT NULL,
  `stock_real` varchar(111) DEFAULT NULL,
  `selisih` int(11) DEFAULT NULL,
  `alasan` text,
  `pos_stok_opname_id` int(11) DEFAULT NULL,
  `nilai_penyesuaian` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_stok_opname_det`
--

LOCK TABLES `pos_stok_opname_det` WRITE;
/*!40000 ALTER TABLE `pos_stok_opname_det` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `pos_stok_opname_det` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `trans_detail`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_akun_id` int(11) DEFAULT NULL,
  `penjualan_id` int(11) DEFAULT NULL,
  `pembelian_id` int(11) DEFAULT NULL,
  `kode` varchar(225) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `debit` bigint(20) DEFAULT NULL,
  `kredit` bigint(20) DEFAULT NULL,
  `keterangan` text,
  `kas_keluar_id` int(11) DEFAULT NULL,
  `kas_masuk_id` int(11) DEFAULT NULL,
  `jurnal_id` int(11) DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `cabang_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_at` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_trans_detail_m_akun1_idx` (`m_akun_id`)
) ENGINE=MyISAM AUTO_INCREMENT=844 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_detail`
--

LOCK TABLES `trans_detail` WRITE;
/*!40000 ALTER TABLE `trans_detail` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `trans_detail` VALUES (808,119,18,NULL,'J17/00016','2017-12-27',0,1947000,'Penjualan (J17/00016)',NULL,NULL,NULL,NULL,0,0,50,1514529699,7,1514529699,7),(806,39,17,NULL,'J17/00015','2017-12-26',0,12730000,'Penjualan (J17/00015)',NULL,NULL,NULL,NULL,0,0,50,1514529589,7,1514529589,7),(807,3,18,NULL,'J17/00016','2017-12-27',1984500,0,'Penjualan (J17/00016)',NULL,NULL,NULL,NULL,0,0,50,1514529699,7,1514529699,7),(299,123,14,NULL,'J17/00012','2017-12-28',0,3492500,'Penjualan (J17/00012)',NULL,NULL,NULL,NULL,0,0,50,1514445587,7,1514445587,7),(805,157,17,NULL,'J17/00015','2017-12-26',12730000,0,'Penjualan (J17/00015)',NULL,NULL,NULL,NULL,0,0,50,1514529589,7,1514529589,7),(804,119,17,NULL,'J17/00015','2017-12-26',0,13260000,'Penjualan (J17/00015)',NULL,NULL,NULL,NULL,0,0,50,1514529589,7,1514529589,7),(795,3,15,NULL,'J17/00013','2017-12-26',3250000,0,'Penjualan (J17/00013)',NULL,NULL,NULL,NULL,0,0,50,1514529108,7,1514529108,7),(794,10,NULL,6,'','1970-01-01',0,8170000,'Pembelian ()',NULL,NULL,NULL,NULL,0,0,50,1514528119,7,1514528119,7),(793,253,NULL,6,'','1970-01-01',1570000,0,'Pembelian ()',NULL,NULL,NULL,NULL,0,0,50,1514528119,7,1514528119,7),(792,38,NULL,6,'','1970-01-01',6600000,0,'Pembelian ()',NULL,NULL,NULL,NULL,0,0,50,1514528119,7,1514528119,7),(791,247,NULL,NULL,'Saldo Awal','2017-12-24',20000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(790,232,NULL,NULL,'Saldo Awal','2017-12-24',49600,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(789,226,NULL,NULL,'Saldo Awal','2017-12-24',10000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(788,222,NULL,NULL,'Saldo Awal','2017-12-24',788000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(787,221,NULL,NULL,'Saldo Awal','2017-12-24',340000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(786,217,NULL,NULL,'Saldo Awal','2017-12-24',12300000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(785,209,NULL,NULL,'Saldo Awal','2017-12-24',2450000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(784,203,NULL,NULL,'Saldo Awal','2017-12-24',14916000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(783,198,NULL,NULL,'Saldo Awal','2017-12-24',40000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(782,197,NULL,NULL,'Saldo Awal','2017-12-24',1085000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(781,196,NULL,NULL,'Saldo Awal','2017-12-24',150000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(780,195,NULL,NULL,'Saldo Awal','2017-12-24',1800000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(779,194,NULL,NULL,'Saldo Awal','2017-12-24',714500,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(778,181,NULL,NULL,'Saldo Awal','2017-12-24',7915000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(777,178,NULL,NULL,'Saldo Awal','2017-12-24',331500,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(776,177,NULL,NULL,'Saldo Awal','2017-12-24',896000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(775,175,NULL,NULL,'Saldo Awal','2017-12-24',1076400,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(774,174,NULL,NULL,'Saldo Awal','2017-12-24',24480000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(773,169,NULL,NULL,'Saldo Awal','2017-12-24',58083,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(772,167,NULL,NULL,'Saldo Awal','2017-12-24',276000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(771,166,NULL,NULL,'Saldo Awal','2017-12-24',2134479,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(770,162,NULL,NULL,'Saldo Awal','2017-12-24',1960500,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(769,161,NULL,NULL,'Saldo Awal','2017-12-24',93775000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(768,157,NULL,NULL,'Saldo Awal','2017-12-24',577063500,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(767,156,NULL,NULL,'Saldo Awal','2017-12-24',2980000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518118,1,1514518118,1),(766,150,NULL,NULL,'Saldo Awal','2017-12-24',305000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(765,143,NULL,NULL,'Saldo Awal','2017-12-24',0,8240000,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(764,140,NULL,NULL,'Saldo Awal','2017-12-24',0,416500,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(763,139,NULL,NULL,'Saldo Awal','2017-12-24',0,275000,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(762,137,NULL,NULL,'Saldo Awal','2017-12-24',0,1117800,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(761,136,NULL,NULL,'Saldo Awal','2017-12-24',0,25680000,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(760,131,NULL,NULL,'Saldo Awal','2017-12-24',0,61200,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(759,129,NULL,NULL,'Saldo Awal','2017-12-24',0,300000,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(758,128,NULL,NULL,'Saldo Awal','2017-12-24',0,2270000,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(757,124,NULL,NULL,'Saldo Awal','2017-12-24',0,2025000,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(756,123,NULL,NULL,'Saldo Awal','2017-12-24',0,96510000,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(755,119,NULL,NULL,'Saldo Awal','2017-12-24',0,614169000,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(754,118,NULL,NULL,'Saldo Awal','2017-12-24',0,3040000,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(753,117,NULL,NULL,'Saldo Awal','2017-12-24',0,99204500,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(752,116,NULL,NULL,'Saldo Awal','2017-12-24',0,300130428,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(751,112,NULL,NULL,'Saldo Awal','2017-12-24',0,55000000,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(750,96,NULL,NULL,'Saldo Awal','2017-12-24',0,951339563,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(749,86,NULL,NULL,'Saldo Awal','2017-12-24',0,24700000,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(748,85,NULL,NULL,'Saldo Awal','2017-12-24',80014000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(747,78,NULL,NULL,'Saldo Awal','2017-12-24',0,28500000,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(746,77,NULL,NULL,'Saldo Awal','2017-12-24',36000000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(745,250,NULL,NULL,'Saldo Awal','2017-12-24',540000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(744,69,NULL,NULL,'Saldo Awal','2017-12-24',502100,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(743,64,NULL,NULL,'Saldo Awal','2017-12-24',5576513,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(742,60,NULL,NULL,'Saldo Awal','2017-12-24',1234150,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(741,59,NULL,NULL,'Saldo Awal','2017-12-24',1074500,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(740,48,NULL,NULL,'Saldo Awal','2017-12-24',2297850,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(739,44,NULL,NULL,'Saldo Awal','2017-12-24',1273000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(738,43,NULL,NULL,'Saldo Awal','2017-12-24',17022500,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(737,42,NULL,NULL,'Saldo Awal','2017-12-24',0,18000,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(736,39,NULL,NULL,'Saldo Awal','2017-12-24',167386500,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(735,37,NULL,NULL,'Saldo Awal','2017-12-24',500000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(734,36,NULL,NULL,'Saldo Awal','2017-12-24',15000000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518117,1,1514518117,1),(733,33,NULL,NULL,'Saldo Awal','2017-12-24',1500000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518116,1,1514518116,1),(732,31,NULL,NULL,'Saldo Awal','2017-12-24',500000,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518116,1,1514518116,1),(731,29,NULL,NULL,'Saldo Awal','2017-12-24',852967700,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518116,1,1514518116,1),(730,26,NULL,NULL,'Saldo Awal','2017-12-24',253594315,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518116,1,1514518116,1),(729,25,NULL,NULL,'Saldo Awal','2017-12-24',27551500,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518116,1,1514518116,1),(728,249,NULL,NULL,'Saldo Awal','2017-12-24',547800,0,'Saldo Awal',NULL,NULL,NULL,NULL,NULL,NULL,50,1514518116,1,1514518116,1),(318,157,11,NULL,'J17/00009','2017-12-25',2635000,0,'Penjualan (J17/00009)',NULL,NULL,NULL,NULL,0,0,50,1514475112,1,1514475112,1),(317,119,11,NULL,'J17/00009','2017-12-25',0,2720000,'Penjualan (J17/00009)',NULL,NULL,NULL,NULL,0,0,50,1514475112,1,1514475112,1),(316,3,11,NULL,'J17/00009','2017-12-25',2720000,0,'Penjualan (J17/00009)',NULL,NULL,NULL,NULL,0,0,50,1514475112,1,1514475112,1),(803,3,17,NULL,'J17/00015','2017-12-26',13260000,0,'Penjualan (J17/00015)',NULL,NULL,NULL,NULL,0,0,50,1514529589,7,1514529589,7),(802,39,16,NULL,'J17/00014','2017-12-26',0,0,'Penjualan (J17/00014)',NULL,NULL,NULL,NULL,0,0,50,1514529517,7,1514529517,7),(799,3,16,NULL,'J17/00014','2017-12-26',4300000,0,'Penjualan (J17/00014)',NULL,NULL,NULL,NULL,0,0,50,1514529517,7,1514529517,7),(800,119,16,NULL,'J17/00014','2017-12-26',0,4300000,'Penjualan (J17/00014)',NULL,NULL,NULL,NULL,0,0,50,1514529517,7,1514529517,7),(801,157,16,NULL,'J17/00014','2017-12-26',0,0,'Penjualan (J17/00014)',NULL,NULL,NULL,NULL,0,0,50,1514529517,7,1514529517,7),(319,39,11,NULL,'J17/00009','2017-12-25',0,2635000,'Penjualan (J17/00009)',NULL,NULL,NULL,NULL,0,0,50,1514475112,1,1514475112,1),(798,39,15,NULL,'J17/00013','2017-12-26',0,3137500,'Penjualan (J17/00013)',NULL,NULL,NULL,NULL,0,0,50,1514529108,7,1514529108,7),(797,157,15,NULL,'J17/00013','2017-12-26',3137500,0,'Penjualan (J17/00013)',NULL,NULL,NULL,NULL,0,0,50,1514529108,7,1514529108,7),(796,119,15,NULL,'J17/00013','2017-12-26',0,3250000,'Penjualan (J17/00013)',NULL,NULL,NULL,NULL,0,0,50,1514529108,7,1514529108,7),(298,3,14,NULL,'J17/00012','2017-12-28',3492500,0,'Penjualan (J17/00012)',NULL,NULL,NULL,NULL,0,0,50,1514445587,7,1514445587,7),(297,43,5,NULL,'J17/00002','2017-12-28',0,3121250,'Penjualan (J17/00002)',NULL,NULL,NULL,NULL,0,0,50,1514445245,7,1514445245,7),(246,43,13,NULL,'J17/00011','2017-12-28',0,6190000,'Penjualan (J17/00011)',NULL,NULL,NULL,NULL,0,0,50,1514443470,7,1514443470,7),(245,161,13,NULL,'J17/00011','2017-12-28',6190000,0,'Penjualan (J17/00011)',NULL,NULL,NULL,NULL,0,0,50,1514443470,7,1514443470,7),(244,123,13,NULL,'J17/00011','2017-12-28',0,6400000,'Penjualan (J17/00011)',NULL,NULL,NULL,NULL,0,0,50,1514443470,7,1514443470,7),(243,3,13,NULL,'J17/00011','2017-12-28',6400000,0,'Penjualan (J17/00011)',NULL,NULL,NULL,NULL,0,0,50,1514443470,7,1514443470,7),(203,3,6,NULL,'J17/00004','2017-12-28',3290000,0,'Penjualan (J17/00004)',NULL,NULL,NULL,NULL,0,0,50,1514442599,7,1514442599,7),(204,119,6,NULL,'J17/00004','2017-12-28',0,3290000,'Penjualan (J17/00004)',NULL,NULL,NULL,NULL,0,0,50,1514442599,7,1514442599,7),(205,157,6,NULL,'J17/00004','2017-12-28',3182500,0,'Penjualan (J17/00004)',NULL,NULL,NULL,NULL,0,0,50,1514442599,7,1514442599,7),(206,39,6,NULL,'J17/00004','2017-12-28',0,3182500,'Penjualan (J17/00004)',NULL,NULL,NULL,NULL,0,0,50,1514442599,7,1514442599,7),(720,59,7,NULL,'J17/00005','2017-12-25',0,11832,'Penjualan (J17/00005)',NULL,NULL,NULL,NULL,0,0,50,1514482625,1,1514482625,1),(719,177,7,NULL,'J17/00005','2017-12-25',11832,0,'Penjualan (J17/00005)',NULL,NULL,NULL,NULL,0,0,50,1514482625,1,1514482625,1),(718,39,7,NULL,'J17/00005','2017-12-25',0,5499092,'Penjualan (J17/00005)',NULL,NULL,NULL,NULL,0,0,50,1514482625,1,1514482625,1),(717,157,7,NULL,'J17/00005','2017-12-25',5499092,0,'Penjualan (J17/00005)',NULL,NULL,NULL,NULL,0,0,50,1514482625,1,1514482625,1),(716,139,7,NULL,'J17/00005','2017-12-25',0,0,'Penjualan (J17/00005)',NULL,NULL,NULL,NULL,0,0,50,1514482625,1,1514482625,1),(715,119,7,NULL,'J17/00005','2017-12-25',0,5567500,'Penjualan (J17/00005)',NULL,NULL,NULL,NULL,0,0,50,1514482625,1,1514482625,1),(714,3,7,NULL,'J17/00005','2017-12-25',5567500,0,'Penjualan (J17/00005)',NULL,NULL,NULL,NULL,0,0,50,1514482625,1,1514482625,1),(727,39,8,NULL,'J17/00006','2017-12-25',0,1633380,'Penjualan (J17/00006)',NULL,NULL,NULL,NULL,0,0,50,1514482682,1,1514482682,1),(726,157,8,NULL,'J17/00006','2017-12-25',1633380,0,'Penjualan (J17/00006)',NULL,NULL,NULL,NULL,0,0,50,1514482682,1,1514482682,1),(725,59,8,NULL,'J17/00006','2017-12-25',0,525,'Penjualan (J17/00006)',NULL,NULL,NULL,NULL,0,0,50,1514482682,1,1514482682,1),(724,177,8,NULL,'J17/00006','2017-12-25',525,0,'Penjualan (J17/00006)',NULL,NULL,NULL,NULL,0,0,50,1514482682,1,1514482682,1),(723,119,8,NULL,'J17/00006','2017-12-25',0,1637500,'Penjualan (J17/00006)',NULL,NULL,NULL,NULL,0,0,50,1514482682,1,1514482682,1),(722,139,8,NULL,'J17/00006','2017-12-25',0,0,'Penjualan (J17/00006)',NULL,NULL,NULL,NULL,0,0,50,1514482682,1,1514482682,1),(721,3,8,NULL,'J17/00006','2017-12-25',1637500,0,'Penjualan (J17/00006)',NULL,NULL,NULL,NULL,0,0,50,1514482682,1,1514482682,1),(284,44,9,NULL,'J17/00007','2017-12-28',0,1350000,'Penjualan (J17/00007)',NULL,NULL,NULL,NULL,0,0,50,1514444225,1,1514444225,1),(282,124,9,NULL,'J17/00007','2017-12-28',0,1350000,'Penjualan (J17/00007)',NULL,NULL,NULL,NULL,0,0,50,1514444225,1,1514444225,1),(283,162,9,NULL,'J17/00007','2017-12-28',1350000,0,'Penjualan (J17/00007)',NULL,NULL,NULL,NULL,0,0,50,1514444225,1,1514444225,1),(225,3,10,NULL,'J17/00008','2017-12-28',2303000,0,'Penjualan (J17/00008)',NULL,NULL,NULL,NULL,0,0,50,1514442954,7,1514442954,7),(226,119,10,NULL,'J17/00008','2017-12-28',0,2303000,'Penjualan (J17/00008)',NULL,NULL,NULL,NULL,0,0,50,1514442954,7,1514442954,7),(227,157,10,NULL,'J17/00008','2017-12-28',2227750,0,'Penjualan (J17/00008)',NULL,NULL,NULL,NULL,0,0,50,1514442954,7,1514442954,7),(228,39,10,NULL,'J17/00008','2017-12-28',0,2227750,'Penjualan (J17/00008)',NULL,NULL,NULL,NULL,0,0,50,1514442954,7,1514442954,7),(811,39,18,NULL,'J17/00016','2017-12-27',0,1934721,'Penjualan (J17/00016)',NULL,NULL,NULL,NULL,0,0,50,1514529699,7,1514529699,7),(810,157,18,NULL,'J17/00016','2017-12-27',1934721,0,'Penjualan (J17/00016)',NULL,NULL,NULL,NULL,0,0,50,1514529699,7,1514529699,7),(809,139,18,NULL,'J17/00016','2017-12-27',0,37500,'Penjualan (J17/00016)',NULL,NULL,NULL,NULL,0,0,50,1514529699,7,1514529699,7),(699,43,12,NULL,'J17/00010','2017-12-25',0,317500,'Penjualan (J17/00010)',NULL,NULL,NULL,NULL,0,0,50,1514482004,1,1514482004,1),(698,161,12,NULL,'J17/00010','2017-12-25',317500,0,'Penjualan (J17/00010)',NULL,NULL,NULL,NULL,0,0,50,1514482004,1,1514482004,1),(697,59,12,NULL,'J17/00010','2017-12-25',0,2254,'Penjualan (J17/00010)',NULL,NULL,NULL,NULL,0,0,50,1514482004,1,1514482004,1),(696,177,12,NULL,'J17/00010','2017-12-25',2254,0,'Penjualan (J17/00010)',NULL,NULL,NULL,NULL,0,0,50,1514482004,1,1514482004,1),(695,39,12,NULL,'J17/00010','2017-12-25',0,308454,'Penjualan (J17/00010)',NULL,NULL,NULL,NULL,0,0,50,1514482004,1,1514482004,1),(694,157,12,NULL,'J17/00010','2017-12-25',308454,0,'Penjualan (J17/00010)',NULL,NULL,NULL,NULL,0,0,50,1514482004,1,1514482004,1),(693,123,12,NULL,'J17/00010','2017-12-25',0,317500,'Penjualan (J17/00010)',NULL,NULL,NULL,NULL,0,0,50,1514482004,1,1514482004,1),(692,139,12,NULL,'J17/00010','2017-12-25',0,0,'Penjualan (J17/00010)',NULL,NULL,NULL,NULL,0,0,50,1514482004,1,1514482004,1),(691,119,12,NULL,'J17/00010','2017-12-25',0,325000,'Penjualan (J17/00010)',NULL,NULL,NULL,NULL,0,0,50,1514482004,1,1514482004,1),(690,1,12,NULL,'J17/00010','2017-12-25',642500,0,'Penjualan (J17/00010)',NULL,NULL,NULL,NULL,0,0,50,1514482004,1,1514482004,1),(296,161,5,NULL,'J17/00002','2017-12-28',3121250,0,'Penjualan (J17/00002)',NULL,NULL,NULL,NULL,0,0,50,1514445245,7,1514445245,7),(280,10,NULL,4,'B17/00008','2017-12-28',0,12380000,'Pembelian (B17/00008)',NULL,NULL,NULL,NULL,0,0,50,1514444185,7,1514444185,7),(279,43,NULL,4,'B17/00008','2017-12-28',12380000,0,'Pembelian (B17/00008)',NULL,NULL,NULL,NULL,0,0,50,1514444185,7,1514444185,7),(281,3,9,NULL,'J17/00007','2017-12-28',1350000,0,'Penjualan (J17/00007)',NULL,NULL,NULL,NULL,0,0,50,1514444225,1,1514444225,1),(295,39,5,NULL,'J17/00002','2017-12-28',0,8430000,'Penjualan (J17/00002)',NULL,NULL,NULL,NULL,0,0,50,1514445245,7,1514445245,7),(290,10,NULL,5,'B17/00009','2017-12-28',0,60952500,'Pembelian (B17/00009)',NULL,NULL,NULL,NULL,0,0,50,1514444467,7,1514444467,7),(289,39,NULL,5,'B17/00009','2017-12-28',60952500,0,'Pembelian (B17/00009)',NULL,NULL,NULL,NULL,0,0,50,1514444467,7,1514444467,7),(294,157,5,NULL,'J17/00002','2017-12-28',8430000,0,'Penjualan (J17/00002)',NULL,NULL,NULL,NULL,0,0,50,1514445245,7,1514445245,7),(293,123,5,NULL,'J17/00002','2017-12-28',0,3200000,'Penjualan (J17/00002)',NULL,NULL,NULL,NULL,0,0,50,1514445245,7,1514445245,7),(292,119,5,NULL,'J17/00002','2017-12-28',0,8760000,'Penjualan (J17/00002)',NULL,NULL,NULL,NULL,0,0,50,1514445245,7,1514445245,7),(291,3,5,NULL,'J17/00002','2017-12-28',11960000,0,'Penjualan (J17/00002)',NULL,NULL,NULL,NULL,0,0,50,1514445245,7,1514445245,7),(300,161,14,NULL,'J17/00012','2017-12-28',3443000,0,'Penjualan (J17/00012)',NULL,NULL,NULL,NULL,0,0,50,1514445587,7,1514445587,7),(301,43,14,NULL,'J17/00012','2017-12-28',0,3443000,'Penjualan (J17/00012)',NULL,NULL,NULL,NULL,0,0,50,1514445587,7,1514445587,7),(812,177,18,NULL,'J17/00016','2017-12-27',162,0,'Penjualan (J17/00016)',NULL,NULL,NULL,NULL,0,0,50,1514529699,7,1514529699,7),(813,59,18,NULL,'J17/00016','2017-12-27',0,162,'Penjualan (J17/00016)',NULL,NULL,NULL,NULL,0,0,50,1514529699,7,1514529699,7),(814,3,19,NULL,'J17/00017','2017-12-27',6560000,0,'Penjualan (J17/00017)',NULL,NULL,NULL,NULL,0,0,50,1514529763,7,1514529763,7),(815,119,19,NULL,'J17/00017','2017-12-27',0,6560000,'Penjualan (J17/00017)',NULL,NULL,NULL,NULL,0,0,50,1514529763,7,1514529763,7),(816,157,19,NULL,'J17/00017','2017-12-27',6365000,0,'Penjualan (J17/00017)',NULL,NULL,NULL,NULL,0,0,50,1514529763,7,1514529763,7),(817,39,19,NULL,'J17/00017','2017-12-27',0,6365000,'Penjualan (J17/00017)',NULL,NULL,NULL,NULL,0,0,50,1514529763,7,1514529763,7),(818,3,2,NULL,'J17/00001','2017-12-23',1675000,0,'Penjualan (J17/00001)',NULL,NULL,NULL,NULL,0,0,50,1514532320,1,1514532320,1),(819,119,2,NULL,'J17/00001','2017-12-23',0,1675000,'Penjualan (J17/00001)',NULL,NULL,NULL,NULL,0,0,50,1514532320,1,1514532320,1),(820,157,2,NULL,'J17/00001','2017-12-23',1639750,0,'Penjualan (J17/00001)',NULL,NULL,NULL,NULL,0,0,50,1514532320,1,1514532320,1),(821,39,2,NULL,'J17/00001','2017-12-23',0,1639750,'Penjualan (J17/00001)',NULL,NULL,NULL,NULL,0,0,50,1514532320,1,1514532320,1),(822,3,20,NULL,'','2017-12-27',5840000,0,'Penjualan ()',NULL,NULL,NULL,NULL,0,0,50,1514532885,7,1514532885,7),(823,119,20,NULL,'','2017-12-27',0,5840000,'Penjualan ()',NULL,NULL,NULL,NULL,0,0,50,1514532885,7,1514532885,7),(824,157,20,NULL,'','2017-12-27',5620000,0,'Penjualan ()',NULL,NULL,NULL,NULL,0,0,50,1514532885,7,1514532885,7),(825,39,20,NULL,'','2017-12-27',0,5620000,'Penjualan ()',NULL,NULL,NULL,NULL,0,0,50,1514532885,7,1514532885,7),(826,56,NULL,7,'B17/00010','2017-12-27',4940000,0,'Pembelian (B17/00010)',NULL,NULL,NULL,NULL,0,0,50,1514533587,7,1514533587,7),(827,10,NULL,7,'B17/00010','2017-12-27',0,4940000,'Pembelian (B17/00010)',NULL,NULL,NULL,NULL,0,0,50,1514533587,7,1514533587,7),(828,3,21,NULL,'J17/00018','2017-12-27',5200000,0,'Penjualan (J17/00018)',NULL,NULL,NULL,NULL,0,0,50,1514533916,7,1514533916,7),(829,136,21,NULL,'J17/00018','2017-12-27',0,5200000,'Penjualan (J17/00018)',NULL,NULL,NULL,NULL,0,0,50,1514533916,7,1514533916,7),(830,174,21,NULL,'J17/00018','2017-12-27',4940000,0,'Penjualan (J17/00018)',NULL,NULL,NULL,NULL,0,0,50,1514533916,7,1514533916,7),(831,56,21,NULL,'J17/00018','2017-12-27',0,4940000,'Penjualan (J17/00018)',NULL,NULL,NULL,NULL,0,0,50,1514533916,7,1514533916,7),(832,1,22,NULL,'J17/00019','2017-12-30',3700000,0,'Penjualan (J17/00019)',NULL,NULL,NULL,NULL,0,0,50,1514602695,1,1514602695,1),(833,118,22,NULL,'J17/00019','2017-12-30',0,3700000,'Penjualan (J17/00019)',NULL,NULL,NULL,NULL,0,0,50,1514602695,1,1514602695,1),(834,156,22,NULL,'J17/00019','2017-12-30',3300000,0,'Penjualan (J17/00019)',NULL,NULL,NULL,NULL,0,0,50,1514602695,1,1514602695,1),(835,38,22,NULL,'J17/00019','2017-12-30',0,3300000,'Penjualan (J17/00019)',NULL,NULL,NULL,NULL,0,0,50,1514602695,1,1514602695,1),(836,38,NULL,8,'B17/00011','2017-12-30',1900000,0,'Pembelian (B17/00011)',NULL,NULL,NULL,NULL,0,0,50,1514602771,1,1514602771,1),(837,1,NULL,8,'B17/00011','2017-12-30',0,1900000,'Pembelian (B17/00011)',NULL,NULL,NULL,NULL,0,0,50,1514602771,1,1514602771,1),(843,2,NULL,9,'B17/00012','2017-12-30',0,1641250,'Pembelian (B17/00012)',NULL,NULL,NULL,NULL,0,0,50,1514618234,1,1514618234,1),(842,39,NULL,9,'B17/00012','2017-12-30',1641250,0,'Pembelian (B17/00012)',NULL,NULL,NULL,NULL,0,0,50,1514618234,1,1514618234,1);
/*!40000 ALTER TABLE `trans_detail` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Tue, 02 Jan 2018 07:54:15 +0000

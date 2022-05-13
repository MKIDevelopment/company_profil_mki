#
# TABLE STRUCTURE FOR: provinces
#

DROP TABLE IF EXISTS `provinces`;

CREATE TABLE `provinces` (
  `id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `provinces` (`id`, `name`) VALUES ('11', 'ACEH\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('12', 'SUMATERA UTARA\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('13', 'SUMATERA BARAT\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('14', 'RIAU\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('15', 'JAMBI\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('16', 'SUMATERA SELATAN\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('17', 'BENGKULU\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('18', 'LAMPUNG\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('19', 'KEPULAUAN BANGKA BELITUNG\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('21', 'KEPULAUAN RIAU\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('31', 'DKI JAKARTA\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('32', 'JAWA BARAT\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('33', 'JAWA TENGAH\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('34', 'DI YOGYAKARTA\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('35', 'JAWA TIMUR\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('36', 'BANTEN\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('51', 'BALI\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('52', 'NUSA TENGGARA BARAT\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('53', 'NUSA TENGGARA TIMUR\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('61', 'KALIMANTAN BARAT\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('62', 'KALIMANTAN TENGAH\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('63', 'KALIMANTAN SELATAN\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('64', 'KALIMANTAN TIMUR\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('65', 'KALIMANTAN UTARA\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('71', 'SULAWESI UTARA\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('72', 'SULAWESI TENGAH\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('73', 'SULAWESI SELATAN\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('74', 'SULAWESI TENGGARA\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('75', 'GORONTALO\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('76', 'SULAWESI BARAT\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('81', 'MALUKU\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('82', 'MALUKU UTARA\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('91', 'PAPUA BARAT\r');
INSERT INTO `provinces` (`id`, `name`) VALUES ('94', 'PAPUA\r');


#
# TABLE STRUCTURE FOR: regencies
#

DROP TABLE IF EXISTS `regencies`;

CREATE TABLE `regencies` (
  `id` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `province_id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `regencies_province_id_index` (`province_id`),
  CONSTRAINT `regencies_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1101', '11', 'KABUPATEN SIMEULUE\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1102', '11', 'KABUPATEN ACEH SINGKIL\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1103', '11', 'KABUPATEN ACEH SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1104', '11', 'KABUPATEN ACEH TENGGARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1105', '11', 'KABUPATEN ACEH TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1106', '11', 'KABUPATEN ACEH TENGAH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1107', '11', 'KABUPATEN ACEH BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1108', '11', 'KABUPATEN ACEH BESAR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1109', '11', 'KABUPATEN PIDIE\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1110', '11', 'KABUPATEN BIREUEN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1111', '11', 'KABUPATEN ACEH UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1112', '11', 'KABUPATEN ACEH BARAT DAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1113', '11', 'KABUPATEN GAYO LUES\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1114', '11', 'KABUPATEN ACEH TAMIANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1115', '11', 'KABUPATEN NAGAN RAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1116', '11', 'KABUPATEN ACEH JAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1117', '11', 'KABUPATEN BENER MERIAH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1118', '11', 'KABUPATEN PIDIE JAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1171', '11', 'KOTA BANDA ACEH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1172', '11', 'KOTA SABANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1173', '11', 'KOTA LANGSA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1174', '11', 'KOTA LHOKSEUMAWE\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1175', '11', 'KOTA SUBULUSSALAM\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1201', '12', 'KABUPATEN NIAS\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1202', '12', 'KABUPATEN MANDAILING NATAL\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1203', '12', 'KABUPATEN TAPANULI SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1204', '12', 'KABUPATEN TAPANULI TENGAH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1205', '12', 'KABUPATEN TAPANULI UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1206', '12', 'KABUPATEN TOBA SAMOSIR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1207', '12', 'KABUPATEN LABUHAN BATU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1208', '12', 'KABUPATEN ASAHAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1209', '12', 'KABUPATEN SIMALUNGUN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1210', '12', 'KABUPATEN DAIRI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1211', '12', 'KABUPATEN KARO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1212', '12', 'KABUPATEN DELI SERDANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1213', '12', 'KABUPATEN LANGKAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1214', '12', 'KABUPATEN NIAS SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1215', '12', 'KABUPATEN HUMBANG HASUNDUTAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1216', '12', 'KABUPATEN PAKPAK BHARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1217', '12', 'KABUPATEN SAMOSIR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1218', '12', 'KABUPATEN SERDANG BEDAGAI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1219', '12', 'KABUPATEN BATU BARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1220', '12', 'KABUPATEN PADANG LAWAS UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1221', '12', 'KABUPATEN PADANG LAWAS\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1222', '12', 'KABUPATEN LABUHAN BATU SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1223', '12', 'KABUPATEN LABUHAN BATU UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1224', '12', 'KABUPATEN NIAS UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1225', '12', 'KABUPATEN NIAS BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1271', '12', 'KOTA SIBOLGA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1272', '12', 'KOTA TANJUNG BALAI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1273', '12', 'KOTA PEMATANG SIANTAR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1274', '12', 'KOTA TEBING TINGGI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1275', '12', 'KOTA MEDAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1276', '12', 'KOTA BINJAI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1277', '12', 'KOTA PADANGSIDIMPUAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1278', '12', 'KOTA GUNUNGSITOLI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1301', '13', 'KABUPATEN KEPULAUAN MENTAWAI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1302', '13', 'KABUPATEN PESISIR SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1303', '13', 'KABUPATEN SOLOK\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1304', '13', 'KABUPATEN SIJUNJUNG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1305', '13', 'KABUPATEN TANAH DATAR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1306', '13', 'KABUPATEN PADANG PARIAMAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1307', '13', 'KABUPATEN AGAM\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1308', '13', 'KABUPATEN LIMA PULUH KOTA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1309', '13', 'KABUPATEN PASAMAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1310', '13', 'KABUPATEN SOLOK SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1311', '13', 'KABUPATEN DHARMASRAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1312', '13', 'KABUPATEN PASAMAN BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1371', '13', 'KOTA PADANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1372', '13', 'KOTA SOLOK\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1373', '13', 'KOTA SAWAH LUNTO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1374', '13', 'KOTA PADANG PANJANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1375', '13', 'KOTA BUKITTINGGI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1376', '13', 'KOTA PAYAKUMBUH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1377', '13', 'KOTA PARIAMAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1401', '14', 'KABUPATEN KUANTAN SINGINGI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1402', '14', 'KABUPATEN INDRAGIRI HULU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1403', '14', 'KABUPATEN INDRAGIRI HILIR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1404', '14', 'KABUPATEN PELALAWAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1405', '14', 'KABUPATEN S I A K\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1406', '14', 'KABUPATEN KAMPAR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1407', '14', 'KABUPATEN ROKAN HULU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1408', '14', 'KABUPATEN BENGKALIS\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1409', '14', 'KABUPATEN ROKAN HILIR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1410', '14', 'KABUPATEN KEPULAUAN MERANTI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1471', '14', 'KOTA PEKANBARU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1473', '14', 'KOTA D U M A I\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1501', '15', 'KABUPATEN KERINCI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1502', '15', 'KABUPATEN MERANGIN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1503', '15', 'KABUPATEN SAROLANGUN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1504', '15', 'KABUPATEN BATANG HARI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1505', '15', 'KABUPATEN MUARO JAMBI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1506', '15', 'KABUPATEN TANJUNG JABUNG TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1507', '15', 'KABUPATEN TANJUNG JABUNG BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1508', '15', 'KABUPATEN TEBO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1509', '15', 'KABUPATEN BUNGO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1571', '15', 'KOTA JAMBI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1572', '15', 'KOTA SUNGAI PENUH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1601', '16', 'KABUPATEN OGAN KOMERING ULU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1602', '16', 'KABUPATEN OGAN KOMERING ILIR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1603', '16', 'KABUPATEN MUARA ENIM\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1604', '16', 'KABUPATEN LAHAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1605', '16', 'KABUPATEN MUSI RAWAS\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1606', '16', 'KABUPATEN MUSI BANYUASIN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1607', '16', 'KABUPATEN BANYU ASIN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1608', '16', 'KABUPATEN OGAN KOMERING ULU SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1609', '16', 'KABUPATEN OGAN KOMERING ULU TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1610', '16', 'KABUPATEN OGAN ILIR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1611', '16', 'KABUPATEN EMPAT LAWANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1612', '16', 'KABUPATEN PENUKAL ABAB LEMATANG ILIR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1613', '16', 'KABUPATEN MUSI RAWAS UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1671', '16', 'KOTA PALEMBANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1672', '16', 'KOTA PRABUMULIH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1673', '16', 'KOTA PAGAR ALAM\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1674', '16', 'KOTA LUBUKLINGGAU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1701', '17', 'KABUPATEN BENGKULU SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1702', '17', 'KABUPATEN REJANG LEBONG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1703', '17', 'KABUPATEN BENGKULU UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1704', '17', 'KABUPATEN KAUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1705', '17', 'KABUPATEN SELUMA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1706', '17', 'KABUPATEN MUKOMUKO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1707', '17', 'KABUPATEN LEBONG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1708', '17', 'KABUPATEN KEPAHIANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1709', '17', 'KABUPATEN BENGKULU TENGAH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1771', '17', 'KOTA BENGKULU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1801', '18', 'KABUPATEN LAMPUNG BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1802', '18', 'KABUPATEN TANGGAMUS\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1803', '18', 'KABUPATEN LAMPUNG SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1804', '18', 'KABUPATEN LAMPUNG TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1805', '18', 'KABUPATEN LAMPUNG TENGAH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1806', '18', 'KABUPATEN LAMPUNG UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1807', '18', 'KABUPATEN WAY KANAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1808', '18', 'KABUPATEN TULANGBAWANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1809', '18', 'KABUPATEN PESAWARAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1810', '18', 'KABUPATEN PRINGSEWU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1811', '18', 'KABUPATEN MESUJI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1812', '18', 'KABUPATEN TULANG BAWANG BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1813', '18', 'KABUPATEN PESISIR BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1871', '18', 'KOTA BANDAR LAMPUNG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1872', '18', 'KOTA METRO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1901', '19', 'KABUPATEN BANGKA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1902', '19', 'KABUPATEN BELITUNG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1903', '19', 'KABUPATEN BANGKA BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1904', '19', 'KABUPATEN BANGKA TENGAH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1905', '19', 'KABUPATEN BANGKA SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1906', '19', 'KABUPATEN BELITUNG TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('1971', '19', 'KOTA PANGKAL PINANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('2101', '21', 'KABUPATEN KARIMUN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('2102', '21', 'KABUPATEN BINTAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('2103', '21', 'KABUPATEN NATUNA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('2104', '21', 'KABUPATEN LINGGA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('2105', '21', 'KABUPATEN KEPULAUAN ANAMBAS\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('2171', '21', 'KOTA B A T A M\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('2172', '21', 'KOTA TANJUNG PINANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3101', '31', 'KABUPATEN KEPULAUAN SERIBU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3171', '31', 'KOTA JAKARTA SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3172', '31', 'KOTA JAKARTA TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3173', '31', 'KOTA JAKARTA PUSAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3174', '31', 'KOTA JAKARTA BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3175', '31', 'KOTA JAKARTA UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3201', '32', 'KABUPATEN BOGOR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3202', '32', 'KABUPATEN SUKABUMI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3203', '32', 'KABUPATEN CIANJUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3204', '32', 'KABUPATEN BANDUNG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3205', '32', 'KABUPATEN GARUT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3206', '32', 'KABUPATEN TASIKMALAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3207', '32', 'KABUPATEN CIAMIS\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3208', '32', 'KABUPATEN KUNINGAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3209', '32', 'KABUPATEN CIREBON\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3210', '32', 'KABUPATEN MAJALENGKA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3211', '32', 'KABUPATEN SUMEDANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3212', '32', 'KABUPATEN INDRAMAYU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3213', '32', 'KABUPATEN SUBANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3214', '32', 'KABUPATEN PURWAKARTA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3215', '32', 'KABUPATEN KARAWANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3216', '32', 'KABUPATEN BEKASI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3217', '32', 'KABUPATEN BANDUNG BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3218', '32', 'KABUPATEN PANGANDARAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3271', '32', 'KOTA BOGOR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3272', '32', 'KOTA SUKABUMI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3273', '32', 'KOTA BANDUNG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3274', '32', 'KOTA CIREBON\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3275', '32', 'KOTA BEKASI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3276', '32', 'KOTA DEPOK\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3277', '32', 'KOTA CIMAHI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3278', '32', 'KOTA TASIKMALAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3279', '32', 'KOTA BANJAR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3301', '33', 'KABUPATEN CILACAP\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3302', '33', 'KABUPATEN BANYUMAS\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3303', '33', 'KABUPATEN PURBALINGGA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3304', '33', 'KABUPATEN BANJARNEGARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3305', '33', 'KABUPATEN KEBUMEN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3306', '33', 'KABUPATEN PURWOREJO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3307', '33', 'KABUPATEN WONOSOBO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3308', '33', 'KABUPATEN MAGELANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3309', '33', 'KABUPATEN BOYOLALI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3310', '33', 'KABUPATEN KLATEN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3311', '33', 'KABUPATEN SUKOHARJO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3312', '33', 'KABUPATEN WONOGIRI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3313', '33', 'KABUPATEN KARANGANYAR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3314', '33', 'KABUPATEN SRAGEN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3315', '33', 'KABUPATEN GROBOGAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3316', '33', 'KABUPATEN BLORA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3317', '33', 'KABUPATEN REMBANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3318', '33', 'KABUPATEN PATI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3319', '33', 'KABUPATEN KUDUS\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3320', '33', 'KABUPATEN JEPARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3321', '33', 'KABUPATEN DEMAK\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3322', '33', 'KABUPATEN SEMARANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3323', '33', 'KABUPATEN TEMANGGUNG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3324', '33', 'KABUPATEN KENDAL\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3325', '33', 'KABUPATEN BATANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3326', '33', 'KABUPATEN PEKALONGAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3327', '33', 'KABUPATEN PEMALANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3328', '33', 'KABUPATEN TEGAL\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3329', '33', 'KABUPATEN BREBES\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3371', '33', 'KOTA MAGELANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3372', '33', 'KOTA SURAKARTA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3373', '33', 'KOTA SALATIGA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3374', '33', 'KOTA SEMARANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3375', '33', 'KOTA PEKALONGAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3376', '33', 'KOTA TEGAL\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3401', '34', 'KABUPATEN KULON PROGO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3402', '34', 'KABUPATEN BANTUL\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3403', '34', 'KABUPATEN GUNUNG KIDUL\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3404', '34', 'KABUPATEN SLEMAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3471', '34', 'KOTA YOGYAKARTA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3501', '35', 'KABUPATEN PACITAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3502', '35', 'KABUPATEN PONOROGO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3503', '35', 'KABUPATEN TRENGGALEK\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3504', '35', 'KABUPATEN TULUNGAGUNG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3505', '35', 'KABUPATEN BLITAR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3506', '35', 'KABUPATEN KEDIRI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3507', '35', 'KABUPATEN MALANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3508', '35', 'KABUPATEN LUMAJANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3509', '35', 'KABUPATEN JEMBER\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3510', '35', 'KABUPATEN BANYUWANGI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3511', '35', 'KABUPATEN BONDOWOSO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3512', '35', 'KABUPATEN SITUBONDO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3513', '35', 'KABUPATEN PROBOLINGGO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3514', '35', 'KABUPATEN PASURUAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3515', '35', 'KABUPATEN SIDOARJO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3516', '35', 'KABUPATEN MOJOKERTO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3517', '35', 'KABUPATEN JOMBANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3518', '35', 'KABUPATEN NGANJUK\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3519', '35', 'KABUPATEN MADIUN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3520', '35', 'KABUPATEN MAGETAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3521', '35', 'KABUPATEN NGAWI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3522', '35', 'KABUPATEN BOJONEGORO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3523', '35', 'KABUPATEN TUBAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3524', '35', 'KABUPATEN LAMONGAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3525', '35', 'KABUPATEN GRESIK\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3526', '35', 'KABUPATEN BANGKALAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3527', '35', 'KABUPATEN SAMPANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3528', '35', 'KABUPATEN PAMEKASAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3529', '35', 'KABUPATEN SUMENEP\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3571', '35', 'KOTA KEDIRI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3572', '35', 'KOTA BLITAR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3573', '35', 'KOTA MALANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3574', '35', 'KOTA PROBOLINGGO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3575', '35', 'KOTA PASURUAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3576', '35', 'KOTA MOJOKERTO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3577', '35', 'KOTA MADIUN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3578', '35', 'KOTA SURABAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3579', '35', 'KOTA BATU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3601', '36', 'KABUPATEN PANDEGLANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3602', '36', 'KABUPATEN LEBAK\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3603', '36', 'KABUPATEN TANGERANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3604', '36', 'KABUPATEN SERANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3671', '36', 'KOTA TANGERANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3672', '36', 'KOTA CILEGON\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3673', '36', 'KOTA SERANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('3674', '36', 'KOTA TANGERANG SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5101', '51', 'KABUPATEN JEMBRANA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5102', '51', 'KABUPATEN TABANAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5103', '51', 'KABUPATEN BADUNG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5104', '51', 'KABUPATEN GIANYAR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5105', '51', 'KABUPATEN KLUNGKUNG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5106', '51', 'KABUPATEN BANGLI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5107', '51', 'KABUPATEN KARANG ASEM\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5108', '51', 'KABUPATEN BULELENG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5171', '51', 'KOTA DENPASAR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5201', '52', 'KABUPATEN LOMBOK BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5202', '52', 'KABUPATEN LOMBOK TENGAH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5203', '52', 'KABUPATEN LOMBOK TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5204', '52', 'KABUPATEN SUMBAWA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5205', '52', 'KABUPATEN DOMPU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5206', '52', 'KABUPATEN BIMA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5207', '52', 'KABUPATEN SUMBAWA BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5208', '52', 'KABUPATEN LOMBOK UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5271', '52', 'KOTA MATARAM\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5272', '52', 'KOTA BIMA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5301', '53', 'KABUPATEN SUMBA BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5302', '53', 'KABUPATEN SUMBA TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5303', '53', 'KABUPATEN KUPANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5304', '53', 'KABUPATEN TIMOR TENGAH SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5305', '53', 'KABUPATEN TIMOR TENGAH UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5306', '53', 'KABUPATEN BELU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5307', '53', 'KABUPATEN ALOR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5308', '53', 'KABUPATEN LEMBATA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5309', '53', 'KABUPATEN FLORES TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5310', '53', 'KABUPATEN SIKKA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5311', '53', 'KABUPATEN ENDE\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5312', '53', 'KABUPATEN NGADA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5313', '53', 'KABUPATEN MANGGARAI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5314', '53', 'KABUPATEN ROTE NDAO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5315', '53', 'KABUPATEN MANGGARAI BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5316', '53', 'KABUPATEN SUMBA TENGAH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5317', '53', 'KABUPATEN SUMBA BARAT DAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5318', '53', 'KABUPATEN NAGEKEO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5319', '53', 'KABUPATEN MANGGARAI TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5320', '53', 'KABUPATEN SABU RAIJUA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5321', '53', 'KABUPATEN MALAKA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('5371', '53', 'KOTA KUPANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6101', '61', 'KABUPATEN SAMBAS\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6102', '61', 'KABUPATEN BENGKAYANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6103', '61', 'KABUPATEN LANDAK\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6104', '61', 'KABUPATEN MEMPAWAH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6105', '61', 'KABUPATEN SANGGAU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6106', '61', 'KABUPATEN KETAPANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6107', '61', 'KABUPATEN SINTANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6108', '61', 'KABUPATEN KAPUAS HULU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6109', '61', 'KABUPATEN SEKADAU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6110', '61', 'KABUPATEN MELAWI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6111', '61', 'KABUPATEN KAYONG UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6112', '61', 'KABUPATEN KUBU RAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6171', '61', 'KOTA PONTIANAK\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6172', '61', 'KOTA SINGKAWANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6201', '62', 'KABUPATEN KOTAWARINGIN BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6202', '62', 'KABUPATEN KOTAWARINGIN TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6203', '62', 'KABUPATEN KAPUAS\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6204', '62', 'KABUPATEN BARITO SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6205', '62', 'KABUPATEN BARITO UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6206', '62', 'KABUPATEN SUKAMARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6207', '62', 'KABUPATEN LAMANDAU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6208', '62', 'KABUPATEN SERUYAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6209', '62', 'KABUPATEN KATINGAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6210', '62', 'KABUPATEN PULANG PISAU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6211', '62', 'KABUPATEN GUNUNG MAS\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6212', '62', 'KABUPATEN BARITO TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6213', '62', 'KABUPATEN MURUNG RAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6271', '62', 'KOTA PALANGKA RAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6301', '63', 'KABUPATEN TANAH LAUT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6302', '63', 'KABUPATEN KOTA BARU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6303', '63', 'KABUPATEN BANJAR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6304', '63', 'KABUPATEN BARITO KUALA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6305', '63', 'KABUPATEN TAPIN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6306', '63', 'KABUPATEN HULU SUNGAI SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6307', '63', 'KABUPATEN HULU SUNGAI TENGAH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6308', '63', 'KABUPATEN HULU SUNGAI UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6309', '63', 'KABUPATEN TABALONG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6310', '63', 'KABUPATEN TANAH BUMBU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6311', '63', 'KABUPATEN BALANGAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6371', '63', 'KOTA BANJARMASIN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6372', '63', 'KOTA BANJAR BARU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6401', '64', 'KABUPATEN PASER\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6402', '64', 'KABUPATEN KUTAI BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6403', '64', 'KABUPATEN KUTAI KARTANEGARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6404', '64', 'KABUPATEN KUTAI TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6405', '64', 'KABUPATEN BERAU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6409', '64', 'KABUPATEN PENAJAM PASER UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6411', '64', 'KABUPATEN MAHAKAM HULU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6471', '64', 'KOTA BALIKPAPAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6472', '64', 'KOTA SAMARINDA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6474', '64', 'KOTA BONTANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6501', '65', 'KABUPATEN MALINAU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6502', '65', 'KABUPATEN BULUNGAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6503', '65', 'KABUPATEN TANA TIDUNG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6504', '65', 'KABUPATEN NUNUKAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('6571', '65', 'KOTA TARAKAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7101', '71', 'KABUPATEN BOLAANG MONGONDOW\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7102', '71', 'KABUPATEN MINAHASA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7103', '71', 'KABUPATEN KEPULAUAN SANGIHE\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7104', '71', 'KABUPATEN KEPULAUAN TALAUD\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7105', '71', 'KABUPATEN MINAHASA SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7106', '71', 'KABUPATEN MINAHASA UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7107', '71', 'KABUPATEN BOLAANG MONGONDOW UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7108', '71', 'KABUPATEN SIAU TAGULANDANG BIARO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7109', '71', 'KABUPATEN MINAHASA TENGGARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7110', '71', 'KABUPATEN BOLAANG MONGONDOW SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7111', '71', 'KABUPATEN BOLAANG MONGONDOW TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7171', '71', 'KOTA MANADO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7172', '71', 'KOTA BITUNG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7173', '71', 'KOTA TOMOHON\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7174', '71', 'KOTA KOTAMOBAGU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7201', '72', 'KABUPATEN BANGGAI KEPULAUAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7202', '72', 'KABUPATEN BANGGAI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7203', '72', 'KABUPATEN MOROWALI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7204', '72', 'KABUPATEN POSO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7205', '72', 'KABUPATEN DONGGALA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7206', '72', 'KABUPATEN TOLI-TOLI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7207', '72', 'KABUPATEN BUOL\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7208', '72', 'KABUPATEN PARIGI MOUTONG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7209', '72', 'KABUPATEN TOJO UNA-UNA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7210', '72', 'KABUPATEN SIGI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7211', '72', 'KABUPATEN BANGGAI LAUT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7212', '72', 'KABUPATEN MOROWALI UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7271', '72', 'KOTA PALU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7301', '73', 'KABUPATEN KEPULAUAN SELAYAR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7302', '73', 'KABUPATEN BULUKUMBA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7303', '73', 'KABUPATEN BANTAENG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7304', '73', 'KABUPATEN JENEPONTO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7305', '73', 'KABUPATEN TAKALAR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7306', '73', 'KABUPATEN GOWA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7307', '73', 'KABUPATEN SINJAI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7308', '73', 'KABUPATEN MAROS\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7309', '73', 'KABUPATEN PANGKAJENE DAN KEPULAUAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7310', '73', 'KABUPATEN BARRU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7311', '73', 'KABUPATEN BONE\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7312', '73', 'KABUPATEN SOPPENG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7313', '73', 'KABUPATEN WAJO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7314', '73', 'KABUPATEN SIDENRENG RAPPANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7315', '73', 'KABUPATEN PINRANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7316', '73', 'KABUPATEN ENREKANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7317', '73', 'KABUPATEN LUWU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7318', '73', 'KABUPATEN TANA TORAJA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7322', '73', 'KABUPATEN LUWU UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7325', '73', 'KABUPATEN LUWU TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7326', '73', 'KABUPATEN TORAJA UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7371', '73', 'KOTA MAKASSAR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7372', '73', 'KOTA PAREPARE\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7373', '73', 'KOTA PALOPO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7401', '74', 'KABUPATEN BUTON\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7402', '74', 'KABUPATEN MUNA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7403', '74', 'KABUPATEN KONAWE\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7404', '74', 'KABUPATEN KOLAKA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7405', '74', 'KABUPATEN KONAWE SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7406', '74', 'KABUPATEN BOMBANA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7407', '74', 'KABUPATEN WAKATOBI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7408', '74', 'KABUPATEN KOLAKA UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7409', '74', 'KABUPATEN BUTON UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7410', '74', 'KABUPATEN KONAWE UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7411', '74', 'KABUPATEN KOLAKA TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7412', '74', 'KABUPATEN KONAWE KEPULAUAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7413', '74', 'KABUPATEN MUNA BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7414', '74', 'KABUPATEN BUTON TENGAH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7415', '74', 'KABUPATEN BUTON SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7471', '74', 'KOTA KENDARI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7472', '74', 'KOTA BAUBAU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7501', '75', 'KABUPATEN BOALEMO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7502', '75', 'KABUPATEN GORONTALO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7503', '75', 'KABUPATEN POHUWATO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7504', '75', 'KABUPATEN BONE BOLANGO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7505', '75', 'KABUPATEN GORONTALO UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7571', '75', 'KOTA GORONTALO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7601', '76', 'KABUPATEN MAJENE\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7602', '76', 'KABUPATEN POLEWALI MANDAR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7603', '76', 'KABUPATEN MAMASA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7604', '76', 'KABUPATEN MAMUJU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7605', '76', 'KABUPATEN MAMUJU UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('7606', '76', 'KABUPATEN MAMUJU TENGAH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8101', '81', 'KABUPATEN MALUKU TENGGARA BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8102', '81', 'KABUPATEN MALUKU TENGGARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8103', '81', 'KABUPATEN MALUKU TENGAH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8104', '81', 'KABUPATEN BURU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8105', '81', 'KABUPATEN KEPULAUAN ARU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8106', '81', 'KABUPATEN SERAM BAGIAN BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8107', '81', 'KABUPATEN SERAM BAGIAN TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8108', '81', 'KABUPATEN MALUKU BARAT DAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8109', '81', 'KABUPATEN BURU SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8171', '81', 'KOTA AMBON\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8172', '81', 'KOTA TUAL\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8201', '82', 'KABUPATEN HALMAHERA BARAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8202', '82', 'KABUPATEN HALMAHERA TENGAH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8203', '82', 'KABUPATEN KEPULAUAN SULA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8204', '82', 'KABUPATEN HALMAHERA SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8205', '82', 'KABUPATEN HALMAHERA UTARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8206', '82', 'KABUPATEN HALMAHERA TIMUR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8207', '82', 'KABUPATEN PULAU MOROTAI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8208', '82', 'KABUPATEN PULAU TALIABU\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8271', '82', 'KOTA TERNATE\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('8272', '82', 'KOTA TIDORE KEPULAUAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9101', '91', 'KABUPATEN FAKFAK\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9102', '91', 'KABUPATEN KAIMANA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9103', '91', 'KABUPATEN TELUK WONDAMA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9104', '91', 'KABUPATEN TELUK BINTUNI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9105', '91', 'KABUPATEN MANOKWARI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9106', '91', 'KABUPATEN SORONG SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9107', '91', 'KABUPATEN SORONG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9108', '91', 'KABUPATEN RAJA AMPAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9109', '91', 'KABUPATEN TAMBRAUW\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9110', '91', 'KABUPATEN MAYBRAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9111', '91', 'KABUPATEN MANOKWARI SELATAN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9112', '91', 'KABUPATEN PEGUNUNGAN ARFAK\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9171', '91', 'KOTA SORONG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9401', '94', 'KABUPATEN MERAUKE\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9402', '94', 'KABUPATEN JAYAWIJAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9403', '94', 'KABUPATEN JAYAPURA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9404', '94', 'KABUPATEN NABIRE\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9408', '94', 'KABUPATEN KEPULAUAN YAPEN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9409', '94', 'KABUPATEN BIAK NUMFOR\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9410', '94', 'KABUPATEN PANIAI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9411', '94', 'KABUPATEN PUNCAK JAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9412', '94', 'KABUPATEN MIMIKA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9413', '94', 'KABUPATEN BOVEN DIGOEL\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9414', '94', 'KABUPATEN MAPPI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9415', '94', 'KABUPATEN ASMAT\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9416', '94', 'KABUPATEN YAHUKIMO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9417', '94', 'KABUPATEN PEGUNUNGAN BINTANG\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9418', '94', 'KABUPATEN TOLIKARA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9419', '94', 'KABUPATEN SARMI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9420', '94', 'KABUPATEN KEEROM\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9426', '94', 'KABUPATEN WAROPEN\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9427', '94', 'KABUPATEN SUPIORI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9428', '94', 'KABUPATEN MAMBERAMO RAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9429', '94', 'KABUPATEN NDUGA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9430', '94', 'KABUPATEN LANNY JAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9431', '94', 'KABUPATEN MAMBERAMO TENGAH\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9432', '94', 'KABUPATEN YALIMO\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9433', '94', 'KABUPATEN PUNCAK\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9434', '94', 'KABUPATEN DOGIYAI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9435', '94', 'KABUPATEN INTAN JAYA\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9436', '94', 'KABUPATEN DEIYAI\r');
INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES ('9471', '94', 'KOTA JAYAPURA\r');


#
# TABLE STRUCTURE FOR: tbl_agenda
#

DROP TABLE IF EXISTS `tbl_agenda`;

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL AUTO_INCREMENT,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `agenda_deskripsi` text,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`agenda_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES (1, 'Tugas Membuat project WEB', '2017-01-22 13:18:01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', '2018-10-29', '2018-10-29', 'Sekolah', '08.00 - 11.00 WIB', '-', 'Ilham Efendi');


#
# TABLE STRUCTURE FOR: tbl_album
#

DROP TABLE IF EXISTS `tbl_album`;

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT '0',
  `album_cover` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `album_pengguna_id` (`album_pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tbl_baner
#

DROP TABLE IF EXISTS `tbl_baner`;

CREATE TABLE `tbl_baner` (
  `baner_id` int(11) NOT NULL AUTO_INCREMENT,
  `gambar` text NOT NULL,
  `judul` varchar(50) NOT NULL,
  `ket` text NOT NULL,
  `baner_tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author` varchar(50) NOT NULL,
  `slider` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `roll` varchar(30) NOT NULL,
  PRIMARY KEY (`baner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tbl_faq
#

DROP TABLE IF EXISTS `tbl_faq`;

CREATE TABLE `tbl_faq` (
  `id_faq` int(11) NOT NULL AUTO_INCREMENT,
  `pertanyaan` text NOT NULL,
  `jawaban` text NOT NULL,
  `status` int(11) NOT NULL,
  `href` varchar(20) NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id_faq`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_faq` (`id_faq`, `pertanyaan`, `jawaban`, `status`, `href`, `active`) VALUES (3, 'Redug Lefes dolor sit.', 'Redug Lefes dolor sit amet, consectetur adipisicing elit. Aspernatur, tempore, commodi quas mollitia dolore magnam quidem repellat, culpa voluptates laboriosam maiores alias accusamus recusandae vero aperiam sint nulla beatae eos.', 1, 'check3', '');
INSERT INTO `tbl_faq` (`id_faq`, `pertanyaan`, `jawaban`, `status`, `href`, `active`) VALUES (4, 'Maiores alias accusamus', 'Redug Lefes dolor sit amet, consectetur adipisicing elit. Aspernatur, tempore, commodi quas mollitia dolore magnam quidem repellat, culpa voluptates laboriosam maiores alias accusamus recusandae vero aperiam sint nulla beatae eos.', 1, 'check4', '');
INSERT INTO `tbl_faq` (`id_faq`, `pertanyaan`, `jawaban`, `status`, `href`, `active`) VALUES (5, 'Project', 'Project\r\nRedug Lares dolor sit amet, consectetur adipisicing elit. Animi vero excepturi magnam ducimus adipisci voluptas, praesentium maxime necessitatibus in dolor dolores unde ab, libero quo. Aut, laborum sequi.\r\n\r\nvoluptas, praesentium maxime cum fugiat,magnam ducimus adipisci voluptas, praesentium architecto ducimus, doloribus fuga itaque omnis placeat.', 2, 'p-view-1', 'active');
INSERT INTO `tbl_faq` (`id_faq`, `pertanyaan`, `jawaban`, `status`, `href`, `active`) VALUES (6, 'Planning', 'Planning\r\nvoluptas, praesentium maxime cum fugiat,magnam ducimus adipisci voluptas, praesentium architecto ducimus, doloribus fuga itaque omnis.\r\n\r\nRedug Lares dolor sit amet, consectetur adipisicing elit. Animi vero excepturi magnam ducimus adipisci voluptas, praesentium maxime necessitatibus in dolor dolores unde ab, libero quo. Aut.', 2, 'p-view-2', '');
INSERT INTO `tbl_faq` (`id_faq`, `pertanyaan`, `jawaban`, `status`, `href`, `active`) VALUES (7, 'Success', 'Success\r\nvoluptas, praesentium maxime cum fugiat,magnam ducimus adipisci voluptas, praesentium architecto ducimus, doloribus fuga itaque omnis placeat.\r\n\r\nvoluptas, praesentium maxime cum fugiat,magnam ducimus adipisci voluptas, praesentium architecto ducimus, doloribus fuga itaque omnis.', 2, 'p-view-3', '');
INSERT INTO `tbl_faq` (`id_faq`, `pertanyaan`, `jawaban`, `status`, `href`, `active`) VALUES (8, 'Pertanyaan', 'Redug Lefes dolor sit amet, consectetur adipisicing elit. Aspernatur, tempore, commodi quas mollitia dolore magnam quidem repellat, culpa voluptates laboriosam maiores alias accusamus recusandae vero aperiam sint nulla beatae eos.', 1, '', '');


#
# TABLE STRUCTURE FOR: tbl_files
#

DROP TABLE IF EXISTS `tbl_files`;

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text,
  `file_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT '0',
  `file_data` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tbl_galeri
#

DROP TABLE IF EXISTS `tbl_galeri`;

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL AUTO_INCREMENT,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL,
  `galeri_nama_client` varchar(25) NOT NULL,
  `galeri_url_web` varchar(50) NOT NULL,
  `galeri_deskripsi` varchar(255) NOT NULL,
  `galeri_slug` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`galeri_id`),
  KEY `galeri_album_id` (`galeri_album_id`),
  KEY `galeri_pengguna_id` (`galeri_pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tbl_identitas
#

DROP TABLE IF EXISTS `tbl_identitas`;

CREATE TABLE `tbl_identitas` (
  `identitas_id` int(11) NOT NULL AUTO_INCREMENT,
  `identitas_logo` varchar(100) NOT NULL,
  `identitas_nama` varchar(100) DEFAULT NULL,
  `identitas_moto` varchar(100) DEFAULT NULL,
  `identitas_alamat` text,
  `identitas_tentang` text,
  `identitas_email` varchar(50) DEFAULT NULL,
  `identitas_nohp` varchar(20) DEFAULT NULL,
  `identitas_facebook` varchar(100) DEFAULT NULL,
  `identitas_twitter` varchar(100) DEFAULT NULL,
  `identitas_linkdin` varchar(100) DEFAULT NULL,
  `identitas_google_plus` varchar(100) DEFAULT NULL,
  `identitas_map` text NOT NULL,
  `identitas_ig` varchar(100) NOT NULL,
  `identitas_deskripsi` varchar(100) NOT NULL,
  `identitas_yt` text NOT NULL,
  `link_aplikasi` text NOT NULL,
  `image_tentang` text NOT NULL,
  PRIMARY KEY (`identitas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_identitas` (`identitas_id`, `identitas_logo`, `identitas_nama`, `identitas_moto`, `identitas_alamat`, `identitas_tentang`, `identitas_email`, `identitas_nohp`, `identitas_facebook`, `identitas_twitter`, `identitas_linkdin`, `identitas_google_plus`, `identitas_map`, `identitas_ig`, `identitas_deskripsi`, `identitas_yt`, `link_aplikasi`, `image_tentang`) VALUES (3, '8d9ed841a1e8ce40fcde3a356a4e6b59.jpeg', 'Multi Kreatif Indonesia', 'VISI DAN MISI', 'Cikoneng,Ciamis', '<p>Kami adalah perusahaan penyedia layanan jasa yang siap membantu kamu mengatasi segala hal masalah yang kamu alami.Bermitra bersama kami akan mendapatkan pengalaman terbaik anda dan pasti membuat anda puas dengan hasil kerja kami.</p>\r\n\r\n<p>Apapun masalahnya,kami solusinya.</p>\r\n\r\n<p>Menyediakan Jasa::</p>\r\n\r\n<ul>\r\n	<li>Web Design</li>\r\n	<li>Web Aplikasi</li>\r\n	<li>Graphic Design</li>\r\n	<li>Design Konten Instagram</li>\r\n</ul>\r\n', 'multikreatifindonesia@gmail.com', '083878271548', 'https://www.facebook.com/multikreatifindonesia', '', 'https://www.linkdin.com', 'https://www.google.com', 'https://www.google.com/maps/embed?pb=', 'https://www.instagram.com/multikreatifindonesia', '', 'https://www.youtube.com/watch?v=rWFPFAisxzk', 'https://play.google.com/store/apps/details?id=com.bikinaplikasi.dijapri', 'efe08e23701d07187d2a29cb4ac6543e.jpg');


#
# TABLE STRUCTURE FOR: tbl_inbox
#

DROP TABLE IF EXISTS `tbl_inbox`;

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL AUTO_INCREMENT,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat',
  PRIMARY KEY (`inbox_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tbl_kategori
#

DROP TABLE IF EXISTS `tbl_kategori`;

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES (1, 'Pendidikan', '2016-09-06 12:49:04');
INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES (5, 'Penelitian', '2016-09-06 13:19:26');
INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES (6, 'Prestasi', '2016-09-07 09:51:09');


#
# TABLE STRUCTURE FOR: tbl_komentar
#

DROP TABLE IF EXISTS `tbl_komentar`;

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL AUTO_INCREMENT,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT '0',
  PRIMARY KEY (`komentar_id`),
  KEY `komentar_tulisan_id` (`komentar_tulisan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES (17, 'asdj', 'jasdasd@gmail.com', 'asdjksadsad', '2019-04-23 17:44:30', '1', 23, 0);


#
# TABLE STRUCTURE FOR: tbl_log_aktivitas
#

DROP TABLE IF EXISTS `tbl_log_aktivitas`;

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_nama` text,
  `log_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob,
  `log_jenis_icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_pengguna_id` (`log_pengguna_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tbl_pengguna
#

DROP TABLE IF EXISTS `tbl_pengguna`;

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT '1',
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengguna_photo` varchar(40) DEFAULT NULL,
  `pengguna_map` varchar(100) NOT NULL,
  `pengguna_jenkel` varchar(2) NOT NULL,
  PRIMARY KEY (`pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_username`, `pengguna_password`, `pengguna_email`, `pengguna_nohp`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`, `pengguna_map`, `pengguna_jenkel`) VALUES (1, 'multi kreatif indonesia', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'multikreatifindonesia@gmail.com', '083878271548', 1, '1', '2016-09-03 13:07:55', '9e4201ee0947dd25efc8170ccfa8befb.jpg', '', 'L');
INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_username`, `pengguna_password`, `pengguna_email`, `pengguna_nohp`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`, `pengguna_map`, `pengguna_jenkel`) VALUES (3, 'Editor', 'editor', 'ab6d364b33fe4d31c3e12aca75903ad9', 'editor@gmail.com', '0832329', 1, '2', '2018-12-04 15:01:50', '86447c99c055177d2022200802246566.gif', '', 'P');


#
# TABLE STRUCTURE FOR: tbl_pengumuman
#

DROP TABLE IF EXISTS `tbl_pengumuman`;

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text,
  `pengumuman_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengumuman_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`pengumuman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES (1, 'Pengumuman Libur Semester Ganjil Tahun Ajaran 2016-2017', 'Libur semester ganjil tahun ajaran 2016-2017 dimulai dari tanggal 3 Maret 2017 sampai dengan tanggal 7 Maret 207.', '2017-01-21 08:17:30', 'M Fikri Setiadi');
INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES (2, 'Pengumuman Pembagian Raport Semester Ganjil Tahun Ajaran 2016-2017', 'Menjelang berakhirnya proses belajar-mengajar di semester ganjil tahun ajaran 2016-2017, maka akan diadakan pembagian hasil belajar/raport pada tanggal 4 Maret 2017 pukul 07.30 WIB.\r\nYang bertempat di M-Sekolah. Raport diambil oleh orang tua/wali kelas murid masing-masing', '2017-01-21 08:16:20', 'M Fikri Setiadi');
INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES (3, 'Pengumuman Peresmian dan Launching Website Perdana M-Sekolah', 'Peresmian dan launching website resmi M-Sekolah akan diadakan pada hari 23 Desember 2016 pukul 10.00, bertepatan dengan pembagian raport semester ganjil tahun ajaran 2016-2017', '2017-01-22 14:16:16', 'M Fikri Setiadi');
INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES (4, 'Pengumuman Proses Belajar Mengajar di Semester Genap Tahun Ajaran 2016-2017', 'Setelah libur semester ganjil tahun ajaran 2016-2017, proses belajar mengajar di semester genap tahun ajaran 2016-2017 mulai aktif kembali tanggal 2 Maret 2017.', '2017-01-22 14:15:28', 'M Fikri Setiadi');


#
# TABLE STRUCTURE FOR: tbl_pengunjung
#

DROP TABLE IF EXISTS `tbl_pengunjung`;

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pengunjung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=966 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (930, '2018-08-09 15:04:59', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (931, '2018-09-29 00:21:06', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (932, '2018-10-12 09:14:00', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (933, '2018-10-15 12:50:18', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (934, '2018-10-16 08:39:33', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (935, '2018-10-19 11:02:08', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (936, '2018-10-26 14:52:59', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (937, '2018-10-29 09:40:16', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (938, '2018-11-10 18:36:35', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (939, '2018-11-11 01:03:36', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (940, '2018-12-03 14:09:27', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (941, '2018-12-03 22:15:31', '192.168.43.1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (942, '2018-12-04 08:34:28', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (943, '2018-12-04 08:34:28', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (944, '2018-12-04 17:18:13', '192.168.43.1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (945, '2018-12-05 07:32:14', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (946, '2018-12-05 11:24:33', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (947, '2019-01-16 10:57:57', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (948, '2019-01-17 20:25:47', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (949, '2019-02-09 00:13:53', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (950, '2019-04-22 18:18:48', '127.0.0.1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (951, '2019-04-23 14:09:50', '127.0.0.1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (952, '2019-04-24 10:37:56', '127.0.0.1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (953, '2019-04-24 14:06:24', '192.168.42.129', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (954, '2019-04-25 09:17:37', '127.0.0.1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (955, '2019-04-26 08:48:03', '127.0.0.1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (956, '2019-04-27 08:19:56', '127.0.0.1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (957, '2019-04-29 10:10:05', '127.0.0.1', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (958, '2021-11-22 23:42:04', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (959, '2021-11-23 00:53:23', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (960, '2022-02-21 02:39:07', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (961, '2022-02-22 00:59:49', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (962, '2022-02-23 00:14:46', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (963, '2022-02-24 01:28:06', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (964, '2022-03-07 19:06:27', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (965, '2022-03-11 22:21:23', '127.0.0.1', 'Firefox');


#
# TABLE STRUCTURE FOR: tbl_point
#

DROP TABLE IF EXISTS `tbl_point`;

CREATE TABLE `tbl_point` (
  `id_point` int(11) NOT NULL AUTO_INCREMENT,
  `nama_point` varchar(50) DEFAULT NULL,
  `icon_point` varchar(30) DEFAULT NULL,
  `nilai_point` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_point`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_point` (`id_point`, `nama_point`, `icon_point`, `nilai_point`) VALUES (1, 'Client', 'bi bi-emoji-smile', 250);
INSERT INTO `tbl_point` (`id_point`, `nama_point`, `icon_point`, `nilai_point`) VALUES (2, 'Projects', 'bi bi-journal-richtext', 10);
INSERT INTO `tbl_point` (`id_point`, `nama_point`, `icon_point`, `nilai_point`) VALUES (3, 'Hours Of Support', 'bi bi-headset', 50);
INSERT INTO `tbl_point` (`id_point`, `nama_point`, `icon_point`, `nilai_point`) VALUES (4, 'Hards Worker', 'bi bi-people', 6);


#
# TABLE STRUCTURE FOR: tbl_tags
#

DROP TABLE IF EXISTS `tbl_tags`;

CREATE TABLE `tbl_tags` (
  `tags_id` int(11) NOT NULL,
  `tags_nama` varchar(30) DEFAULT NULL,
  `tags_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_tags` (`tags_id`, `tags_nama`, `tags_tanggal`) VALUES (1, 'codeigniter', '2016-09-06 05:49:04');
INSERT INTO `tbl_tags` (`tags_id`, `tags_nama`, `tags_tanggal`) VALUES (2, 'Politik', '2016-09-06 05:50:01');
INSERT INTO `tbl_tags` (`tags_id`, `tags_nama`, `tags_tanggal`) VALUES (5, 'Penelitian', '2016-09-06 06:19:26');
INSERT INTO `tbl_tags` (`tags_id`, `tags_nama`, `tags_tanggal`) VALUES (6, 'Prestasi', '2016-09-07 02:51:09');


#
# TABLE STRUCTURE FOR: tbl_team
#

DROP TABLE IF EXISTS `tbl_team`;

CREATE TABLE `tbl_team` (
  `team_nama` varchar(70) DEFAULT NULL,
  `team_jenkel` varchar(50) DEFAULT NULL,
  `team_tmp_lahir` varchar(80) DEFAULT NULL,
  `team_tgl_lahir` varchar(80) DEFAULT NULL,
  `team_mapel` varchar(120) DEFAULT NULL,
  `team_photo` varchar(40) DEFAULT NULL,
  `team_tgl_input` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `akun_fb` varchar(50) NOT NULL,
  `akun_ig` varchar(50) NOT NULL,
  `akun_google` varchar(50) NOT NULL,
  `akun_twit` varchar(50) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tbl_testimoni
#

DROP TABLE IF EXISTS `tbl_testimoni`;

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL AUTO_INCREMENT,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gambar` text NOT NULL,
  PRIMARY KEY (`testimoni_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_testimoni` (`testimoni_id`, `testimoni_nama`, `testimoni_isi`, `testimoni_email`, `testimoni_tanggal`, `gambar`) VALUES (1, 'akmal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pulvinar luctus est eget congue.\r\nconsectetur adipiscing el', 'admin@bewithdhanu.in', '2019-04-26 12:35:15', 'ef9643a53fbcb9fd536e84e5dd9882f4.jpg');
INSERT INTO `tbl_testimoni` (`testimoni_id`, `testimoni_nama`, `testimoni_isi`, `testimoni_email`, `testimoni_tanggal`, `gambar`) VALUES (2, 'Lita Nurfaridah', 'Lorem ipsum dolor sit amet,\r\n consectetur adipiscing elit. Sed pulvinar luctus est eget congue. consectetur adipiscing e', 'manager@bewithdhanu.in', '2019-04-26 12:35:46', '4003019ad8e614c46bce7ad6690c5406.jpg');
INSERT INTO `tbl_testimoni` (`testimoni_id`, `testimoni_nama`, `testimoni_isi`, `testimoni_email`, `testimoni_tanggal`, `gambar`) VALUES (3, 'Jerom', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pulvinar luctus est eget congue. consectetur adipiscing el', 'manager@bewithdhanu.in', '2019-04-26 12:35:59', '171c4f1c27d5627db53e18a3f8c838ec.jpg');


#
# TABLE STRUCTURE FOR: tbl_tulisan
#

DROP TABLE IF EXISTS `tbl_tulisan`;

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL AUTO_INCREMENT,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text,
  `tulisan_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT '0',
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT '0',
  `tulisan_slug` varchar(200) DEFAULT NULL,
  `tulisan_tags_id` int(11) DEFAULT NULL,
  `tulisan_tags_nama` varchar(30) DEFAULT NULL,
  `link_driv` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tulisan_id`),
  KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `id_provinces` char(2) NOT NULL,
  `id_regencies` char(4) NOT NULL,
  `username` char(25) NOT NULL,
  `email` char(25) NOT NULL,
  `pass` text NOT NULL,
  `nama_depan` char(25) NOT NULL,
  `nama_belakang` char(25) NOT NULL,
  `alamat` text NOT NULL,
  `kode_pos` char(10) NOT NULL,
  `no_telp` int(20) NOT NULL,
  `tgl_daftar` char(20) NOT NULL,
  `aktif` char(5) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

INSERT INTO `user` (`id_user`, `id_provinces`, `id_regencies`, `username`, `email`, `pass`, `nama_depan`, `nama_belakang`, `alamat`, `kode_pos`, `no_telp`, `tgl_daftar`, `aktif`) VALUES (1, '33', '3374', 'agung', 'agungprabowo112@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'agung', 'prabowo', 'jl.bendungan 1135', '50245', 2147483647, '110696', '');
INSERT INTO `user` (`id_user`, `id_provinces`, `id_regencies`, `username`, `email`, `pass`, `nama_depan`, `nama_belakang`, `alamat`, `kode_pos`, `no_telp`, `tgl_daftar`, `aktif`) VALUES (2, '33', '3374', 'agung prabowo', 'agungprabowo112@gmail.com', '68d616be81074a698db50c173542dfa9', 'agung prabowo', '', 'jl.bendungan 1135', '', 2147483647, '1461669978', 'NO');
INSERT INTO `user` (`id_user`, `id_provinces`, `id_regencies`, `username`, `email`, `pass`, `nama_depan`, `nama_belakang`, `alamat`, `kode_pos`, `no_telp`, `tgl_daftar`, `aktif`) VALUES (3, '19', '1901', 'resikresna', 'ilham@yahoo.com', '1de1fbd2766b88342cbc02a5f6b17346', 'ilham efendi', '', 'Jl. Jendral Sudirman No. Ciamis', '', 2147483647, '1461670693', 'NO');
INSERT INTO `user` (`id_user`, `id_provinces`, `id_regencies`, `username`, `email`, `pass`, `nama_depan`, `nama_belakang`, `alamat`, `kode_pos`, `no_telp`, `tgl_daftar`, `aktif`) VALUES (23, '33', '0', 'suryawi', 'ilhamefendi0318@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'pass', 'word', 'lontong', '', 2147483647, '1526130379', 'NO');
INSERT INTO `user` (`id_user`, `id_provinces`, `id_regencies`, `username`, `email`, `pass`, `nama_depan`, `nama_belakang`, `alamat`, `kode_pos`, `no_telp`, `tgl_daftar`, `aktif`) VALUES (24, '32', '3207', '161710526', 'you@gmail.com', 'd8f9df40167a6e194e1251d5e096f905', 'kuku', 'ong', 'asdsdsd', '', 2147483647, '1526725933', 'NO');
INSERT INTO `user` (`id_user`, `id_provinces`, `id_regencies`, `username`, `email`, `pass`, `nama_depan`, `nama_belakang`, `alamat`, `kode_pos`, `no_telp`, `tgl_daftar`, `aktif`) VALUES (25, '32', '0', 'diantriasd', 'li@gmail.com', '22d42480bf649bcb02c124ab6adac710', 'sadad', 'sadsad', 'asdsaddscscscscsdcdcdcdc', '', 324234324, '1526828564', 'NO');
INSERT INTO `user` (`id_user`, `id_provinces`, `id_regencies`, `username`, `email`, `pass`, `nama_depan`, `nama_belakang`, `alamat`, `kode_pos`, `no_telp`, `tgl_daftar`, `aktif`) VALUES (26, '35', '3503', 'ilham', 'ilhamefendi@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'ham', 'il', 'ciamis', '', 0, '1543870284', 'NO');
INSERT INTO `user` (`id_user`, `id_provinces`, `id_regencies`, `username`, `email`, `pass`, `nama_depan`, `nama_belakang`, `alamat`, `kode_pos`, `no_telp`, `tgl_daftar`, `aktif`) VALUES (27, '32', '3207', 'Ilhams', 'ilhamefendi@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Ilham', 'Efendi', 'Ciamis', '', 0, '1543949766', 'NO');



-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: qltv
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `books` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `id_category` bigint(19) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content_short` text,
  `stock` int(11) DEFAULT NULL,
  `out_stock` int(11) DEFAULT '0',
  `author` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `is_deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,1,'Kỹ Năng Đi Trước Đam Mê','Trong quyển sách Kỹ Năng Đi Trước Đam Mê, Cal Newport lột trần niềm tin từ trước đến nay rằng ta nên \"theo đuổi đam mê.\"',9,8,'Cal Newport',2018,'vinh','vinh','2019-04-19 06:25:50','2019-04-23 06:09:06',0),(3,1,'Nghệ Thuật Đàm Phán','Quyển sách cho chúng ta thấy cách Trump làm việc mỗi ngày - cách ông điều hành công việc kinh doanh và cuộc sống - cũng như cách ông trò chuyện với bạn bè và gia đình, làm ăn với đối thủ, mua thành công những sòng bạc hàng đầu ở thành phố Atlantic, thay đổi bộ mặt của những cao ốc ở thành phố New York... và xây dựng những tòa nhà chọc trời trên thế giới. \r\n\r\nQuyển sách đi sâu vào đầu óc của một doanh nhân xuất sắc và khám phá một cách khoa học chưa từng thấy về cách đàm phán một thương vụ thành công. Đây là một cuốn sách thú vị về đàm phán và kinh doanh – và là một cuốn sách nên đọc cho bất kỳ ai quan tâm đến đầu tư, bất động sản và thành công.',9,0,'Donald J. Trump - Tony Schwartz',2019,'dd','dd','2019-04-19 10:31:41','2019-04-19 10:31:41',0),(4,3,'Hướng Dẫn Chẩn Đoán, Điều Trị 65 Bệnh Da Liễu','Tài liệu được xây dựng với sự nỗ lực cao của các nhà khoa học đầu ngành về Da liễu của Việt Nam. Tài liệu bao gồm 11 chương và 65 bài hướng dẫn chẩn đoán và điều trị các bệnh Da liễu. Trong đó, tập trung vào hướng dẫn thực hành chẩn đoán và điều trị, vì vậy sẽ rất hữu ích cho các thầy thuốc đa khoa, chuyên khoa trong thực hành lâm sàng hàng ngày.',2,0,'Bộ Y Tế',2016,'vinh','vinh','2019-04-22 02:55:38','2019-04-22 02:55:38',0),(5,7,'Thomas Edison - Người Thắp Sáng Địa Cầu','Edison thời tiểu học bị cho là đứa trẻ chậm phát triển, lớn lên đối với văn minh nhân loại, có cống hiến rất vĩ đại như đèn điện, điện thoại, điện tín, xe điện, máy ghi âm, điện ảnh, máy thu thanh v.v..., hơn 1000 phát minh hoàn toàn nhờ vào tinh thần nghiên cứu siêu nhân, bền chí bền lòng và sự nổ lực không chịu lùi bước đã thành công. “Bền lòng bền gan là gốc của thành công. Người có chí việc ắt thành.”\r\n\r\nHai câu nói đó, nhìn từ quá trình nghiên cứu của Edison, chúng ta càng nên tin vào sự chính xác của nó.',20,0,'Nguyễn Mạnh Yến',1954,'vinhlibrarian','vinhlibrarian','2019-04-24 09:55:36','2019-04-24 09:55:52',0),(6,8,'Doramon','Nói về cuộc sống của nhóm bạn',197,0,'ggg',1996,'vinhadmin','vinhadmin','2019-04-25 03:01:52','2019-04-25 03:02:19',0),(7,2,'Test','theo đuổi đam mê PUT',9,0,'Vinh PUT',2019,NULL,NULL,NULL,NULL,0),(8,2,'Test','theo đuổi đam mê',9,0,'Vinh',2019,'vinh','vinh','2019-04-19 06:25:50','2019-04-23 06:09:06',0),(22,0,'Đắc Nhân Tâm','hay lắm',100,0,'vinh',2016,NULL,NULL,NULL,NULL,0),(23,7,'Đắc Nhân Tâm 2','hay lắm 2222',1002222,0,'vinh 2',2019,NULL,NULL,NULL,NULL,0),(24,8,'Nghệ Thuật Đàm Phán 1','dfff',12,0,'vinh',2016,NULL,NULL,NULL,NULL,0),(25,8,'Nghệ Thuật Đàm Phán 1','dfff',12,0,'vinh',2016,NULL,NULL,NULL,NULL,0),(27,3,'Nghệ Thuật Đàm Phán vinh','1 vinh',5,0,'vinh',1998,NULL,NULL,NULL,NULL,0),(29,8,'Pikachu','Truyện hay thiếu nhi',100,0,'japan',1997,NULL,NULL,NULL,NULL,0),(30,20,'Truyện Kể Tây Tạng','Truyện kể Tây Tạng là tuyển tập gồm 39 truyện dân gian Tây Tạng được lưu truyền hàng ngàn năm trong ký ức dân gian. Mỗi câu chuyện là một huyền thoại đẹp, một sự tích hay một ngụ ngôn về những thói tật của con người... nhưng cuối cùng, điều đọng lại trong lòng người đọc là khát vọng hướng thiện và bản sắc Tây Tạng đậm nét trong mỗi truyện kể.',10,0,'Nhiều Tác Giả',2016,NULL,NULL,NULL,NULL,0),(31,0,'Từ Tơ Lụa Đến Silicon','Sách nghiên cứu cuộc đời và sự nghiệp của 10 nhân vật có nhiều ảnh hưởng, tạo ra những bước ngoặt trong sự phát triển của lịch sử thế giới, bao gồm: Gengis Khan, hoàng tử Henry, Robert Clive, Mayer Amschel Rothschild, Cyrus Field, John D. Rockefeller, Jean Monnet, Magaret Thatcher, Andrew Grove, Đặng Tiểu Bình và bàn thêm về người giỏi nhất còn chưa xuất hiện.\n\nTuy nhiên, sách không chỉ nói về lịch sử mà bàn về những việc làm của họ xét ở góc độ người quản lý hiện đại, vì thế sách có tính ứng dụng cho hiện tại và tương lai.',15,0,'vinh',2016,NULL,NULL,NULL,NULL,0),(32,7,' Vĩ Đại Do Lựa Chọn','Jim Collins là tác giả của hai đầu sách nổi tiếng - Từ tốt đến vĩ đại và Xây dựng để trường tồn. Cùng với phương pháp nghiên cứu như hai cuốn đầu tiên, trong quyển sách này, Jim Collins cùng với Morten T. Hansen đi tìm câu trả lời cho câu hỏi, tại sao các công ty vĩ đại vẫn trường tồn trong những lúc khó khăn, hỗn loạn. ',10,0,'vinh',2019,NULL,NULL,NULL,NULL,0),(33,8,'Đánh Bại Phố Wall','Với 13 năm kinh nghiệm quản lý thành công quỹ đầu tư Fidelity Magellan và lựa chọn hàng nghìn cổ phiếu, Lynch đã đúc kết thành 21 nguyên tắc hài hước mà ông gọi là “Những nguyên tắc của Peter”.\n\nChìa khóa để đầu tư thành công, theo Lynch, là phải ghi nhớ rằng cổ phiếu không giống như tấm vé số; luôn có một công ty đằng sau mỗi cổ phiếu và một nguyên nhân lý giải cho cách thức vận hành của các công ty - và cổ phiếu của chúng. Lynch chỉ ra làm cách nào chúng ta có thể tìm hiểu tối đa về công ty mục tiêu và xây dựng một danh mục đầu tư sinh lợi dựa trên chính kinh nghiệm, hiểu biết và kết quả nghiên cứu của bản thân. Không có bất kỳ lý do nào cản trở một nhà đầu tư cá nhân tự trở thành chuyên gia, và cuốn sách này sẽ chỉ ra cách thực hiện điều đó.',10,0,'vinh',2019,NULL,NULL,NULL,NULL,0),(34,7,'Nghĩ Lớn Để Thành Công','Hai trong số các doanh nhân thành đạt nhất thế giới đã tiết lộ bí quyết suy nghĩ lớn để đạt được những thành công ngoạn mục.\n\nHãy áp dụng quan điểm của Donald để truyền cảm hứng cho chính bạn, nhằm phá vỡ những hạn chế của bản thân. Bạn luôn có hai lựa chọn, hoặc bằng lòng với những suy nghĩ bình thường như bao người khác hoặc có thể suy nghĩ lớn.',100,0,'vinh',1998,NULL,NULL,NULL,NULL,0),(35,20,'Cho Khế Nhận Vàng','\nCho và nhận là cả một nghệ thuật. Khi cho đi một, bạn sẽ nhận về gấp nhiều lần (Mark Twain)\n\nThành công là điều mà tất cả chúng ta đều mong muốn. Có rất nhiều cách để thành công và mỗi người có một cách cho riêng mình. Sách về bí quyết thành công có rất nhiều nhưng hầu hết các bí quyết ấy lại không có một bí quyết rất đặc biệt: Cho đi. Ít ai đồng ý và nhận ra rằng ta sẽ thành công khi biết cho đi, biết giúp đỡ người khác cùng thành công, khi ấy ta thành công hơn cả thành công. Nhưng thường, ta chỉ thấy rằng những người giúp đỡ người khác thường chịu thiệt thòi, chẳng những không được đáp lại mà còn nhận nhiều sự phiền hà về bản thân mình.',100,0,'vinh',1997,NULL,NULL,NULL,NULL,0),(36,8,' Từ Tốt Đến Vĩ Đại','Jim Collins - Tác giả của cuốn sách viết về giới kinh doanh Từ Tốt Đến Vĩ Đại vừa là người học và cũng vừa là người dạy tại các công ty vĩ đại và trường tồn. Trăn trở với câu hỏi lớn “Làm thế nào những công ty tốt, công ty bình thường, hay ngay cả công ty đang trong tình trạng tồi tệ cũng có thể đạt đến mức vĩ đại trường tồn?\" Nên ông và các đồng sự đã mất một khoảng thời gian khá dài để nghiên cứu và khám phá ra cách thức để các công ty này tăng trưởng, đạt thành tích cao, chuyển mình và nhảy vọt từ “tốt” đến “vĩ đại”. Một vấn đề mà ai cũng quan tâm, muốn tìm hiểu nhưng không phải ai cũng có được sự kiên nhẫn tìm đến tận cùng câu trả lời.',100,0,'vinh',1998,NULL,NULL,NULL,NULL,0),(37,7,'Thế Giới Cong','\"Có ít nhất ba lý do để đọc cuốn sách này. Trước hết, dưới ngòi bút hấp dẫn của một người xuất chúng trong cuộc, cuốn sách đã cho ta một cái nhìn vô cùng sâu sắc và thấu đáo về hoạt động tài chính toàn cầu mà bất kỳ độc giả nào của New York Times cũng có thể dễ dàng lĩnh hội được. Thứ hai, chủ đề trung tâm của cuốn sách về sự mong manh của nền kinh tế thế giới sẽ khiến bạn thức suốt đêm và vắt óc suy nghĩ về các vấn đề vẫn chưa được nhiều người quan tâm. Và thứ ba, cuốn sách chỉ ra một lộ trình thực tiễn để thoát khỏi tình trạng hỗn độn khủng khiếp mà chúng ta đang mắc phải, đây là điều mà các nhà hoạch định chính sách, các nhà tài chính, và thậm chí cả vị tổng thống kế tiếp của Mỹ nên quan tâm\". (Jeffrey E. Garten, Trường Quản lý Yale; Cựu Thứ trưởng phụ trách thương mại và kinh doanh quốc tế; Cựu Giám đốc điều hành Tập đoàn Blackstone).',10,0,'vinh',2019,NULL,NULL,NULL,NULL,0),(38,3,'Truy Tìm Căn Nguyên Tăng Trưởng','Từ sau chiến tranh Thế giới thứ II, rất nhiều nhà kinh tế học đã tham gia một cuộc truy tìm táo bạo: khám phá phương thức giúp các nước nghèo ở vùng nhiệt đới trở nên giàu có ngang tầm các nước giàu ở Châu Âu và Bắc Mỹ. Vô số những “thần dược” tăng trưởng được đưa ra, nhưng tất cả đều không đem lại kết quả như hứa hẹn.\n\nNguyên nhân không phải là do sự thất bại của kinh tế học, William Easterly chỉ rõ, mà là thất bại của việc ứng dụng nguyên tắc kinh tế học vào các chính sách thực tiễn. Tất cả những thần dược tăng trưởng này đều vi phạm một nguyên tắc kinh tế học căn bản, đó là con người - từ các cá nhân, doanh nghiệp, các chính phủ, ngay cả các nhà viện trợ - luôn hành động vì động cơ.',10,0,'vinh',1998,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrow_orders`
--

DROP TABLE IF EXISTS `borrow_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `borrow_orders` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `id_user` bigint(19) DEFAULT NULL,
  `id_book` bigint(19) DEFAULT NULL,
  `borrow_date` timestamp NULL DEFAULT NULL,
  `return_date` timestamp NULL DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `is_deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow_orders`
--

LOCK TABLES `borrow_orders` WRITE;
/*!40000 ALTER TABLE `borrow_orders` DISABLE KEYS */;
INSERT INTO `borrow_orders` VALUES (11,4,1,'2019-04-22 17:00:00','2019-04-23 17:00:00','Mượn 3 ngày',4,'vinhuser','vinh','2019-04-23 04:29:19','2019-04-23 09:59:17',0),(12,3,1,'2019-04-23 17:00:00','2019-04-24 17:00:00','ok',3,'vinhadmin','vinhlibrarian','2019-04-23 04:29:41','2019-05-20 10:18:23',0),(13,2,3,'2019-04-22 17:00:00','2019-04-24 17:00:00','Librarian mượn',4,'vinhlibrarian','vinhlibrarian','2019-04-23 04:31:32','2019-04-25 03:07:49',0),(14,1,1,'2019-04-22 17:00:00','2019-04-26 17:00:00','',3,'vinh','vinhlibrarian','2019-04-23 06:09:42','2019-04-25 03:07:44',0),(15,4,3,'2019-04-22 17:00:00','2019-04-29 17:00:00','',2,'vinhuser','vinhlibrarian','2019-04-23 06:11:56','2019-04-23 06:13:43',0),(16,4,3,'2019-04-22 17:00:00','2019-05-22 17:00:00','',4,'vinhuser','vinhlibrarian','2019-04-23 06:12:09','2019-04-23 06:16:04',0),(17,4,4,'2019-04-22 17:00:00','2019-04-27 17:00:00','',2,'vinhuser','vinhlibrarian','2019-04-23 06:12:41','2019-04-24 03:56:48',0),(18,4,1,'2019-04-23 17:00:00','2019-04-25 17:00:00','',2,'vinhuser','vinhlibrarian','2019-04-23 06:12:52','2019-04-24 03:56:53',0),(19,4,3,'2019-04-22 17:00:00','2019-04-26 17:00:00','',2,'vinhuser','vinhlibrarian','2019-04-23 06:14:12','2019-04-25 03:37:11',0),(20,4,4,'2019-04-22 17:00:00','2019-04-29 17:00:00','',3,'vinhuser','vinhlibrarian','2019-04-23 06:16:28','2019-04-25 03:07:56',0),(21,4,1,'2019-04-24 17:00:00','2019-05-02 17:00:00','',3,'vinhuser','vinhlibrarian','2019-04-24 03:56:03','2019-04-25 03:08:13',0),(22,15,1,'2019-04-23 17:00:00','2019-05-23 17:00:00','Mượn 30 ngày',3,'testuser','vinhlibrarian','2019-04-24 09:51:17','2019-04-25 03:08:17',0),(23,16,1,'2019-04-24 17:00:00','2019-04-29 17:00:00','sdsdsd',2,'Trung1996','vinhlibrarian','2019-04-25 02:44:08','2019-04-25 03:37:15',0),(24,16,5,'2019-04-26 17:00:00','2019-04-29 17:00:00','nhe tay',3,'Trung1996','vinhlibrarian','2019-04-25 02:54:19','2019-04-25 03:08:20',0),(25,16,6,'2019-04-25 17:00:00','2019-04-28 17:00:00','',4,'Trung1996','vinhlibrarian','2019-04-25 03:13:19','2019-04-25 03:15:24',0),(26,16,6,'2019-04-25 17:00:00','2019-04-28 17:00:00','sssssssssssss',4,'Trung1996','vinhlibrarian','2019-04-25 03:14:30','2019-04-25 03:15:26',0),(27,1,1,'2019-05-01 17:00:00','2019-05-01 17:00:00','',2,'vinh','vinhlibrarian','2019-05-02 06:06:45','2019-05-02 06:11:37',0),(28,4,27,'2019-05-19 17:00:00','2019-05-21 17:00:00','Mượn thử react js',3,'vinhuser','vinhlibrarian','2019-05-20 07:00:42','2019-05-20 10:18:23',0),(29,4,27,'2019-05-19 17:00:00','2019-05-19 17:00:00','',3,'vinhuser','vinhlibrarian','2019-05-20 07:01:46','2019-05-21 07:02:33',0),(30,4,27,'2019-05-19 17:00:00','2019-05-18 17:00:00','',3,'vinhuser','vinhlibrarian','2019-05-20 07:02:04','2019-05-21 07:02:52',0),(31,2,27,'2019-05-21 17:00:00','2019-05-22 17:00:00','',3,'vinhlibrarian','vinhlibrarian','2019-05-20 07:17:11','2019-05-21 07:02:53',0),(32,2,27,'2019-05-23 17:00:00','2019-05-25 17:00:00','',3,'vinhlibrarian','vinhlibrarian','2019-05-20 07:17:20','2019-05-20 10:18:23',0),(33,2,27,'2019-05-23 17:00:00','2019-05-24 17:00:00','',3,'vinhlibrarian','vinhlibrarian','2019-05-20 07:17:29','2019-05-20 10:18:23',0),(34,4,27,'2019-05-19 17:00:00','2019-05-22 17:00:00','',2,'vinhuser','vinhlibrarian','2019-05-20 07:18:17','2019-05-20 09:58:30',0),(35,4,6,'2019-05-07 17:00:00','2019-05-17 17:00:00','',3,'vinhuser','vinhlibrarian','2019-05-20 07:18:23','2019-05-20 10:18:23',0),(36,4,1,'2019-05-20 17:00:00','2019-05-22 17:00:00','Test 1',3,'vinhuser','vinhlibrarian','2019-05-20 10:22:41','2019-05-21 01:52:44',0),(37,4,3,'2019-05-20 17:00:00','2019-05-22 17:00:00','Test 2',4,'vinhuser','vinhlibrarian','2019-05-20 10:23:09','2019-05-21 02:00:34',0),(38,4,4,'2019-05-16 17:00:00','2019-05-17 17:00:00','Test3',3,'vinhuser','vinhlibrarian','2019-05-20 10:23:19','2019-05-21 06:47:41',0),(39,4,4,'2019-05-09 17:00:00','2019-05-17 17:00:00','Test 3 1',3,'vinhuser','vinhlibrarian','2019-05-20 10:23:28','2019-05-21 06:51:34',0),(40,4,4,'2019-05-15 17:00:00','2019-05-20 17:00:00','Test 3 2',2,'vinhuser','vinhlibrarian','2019-05-20 10:23:37','2019-05-20 10:26:19',0),(41,4,1,'2019-05-15 17:00:00','2019-05-16 17:00:00','',2,'vinhuser','vinhlibrarian','2019-05-20 10:27:02','2019-05-21 01:51:25',0),(42,4,3,'2019-05-21 17:00:00','2019-05-22 17:00:00','',3,'vinhuser','vinhlibrarian','2019-05-21 10:01:25','2019-05-21 10:01:52',0),(43,4,27,'2019-05-09 17:00:00','2019-05-18 17:00:00','123',3,'vinhuser','vinhlibrarian','2019-05-22 02:28:26','2019-05-22 02:33:11',0),(44,3,22,'2019-05-22 17:00:00','2019-05-24 17:00:00','admin mượn nhé',3,'vinhadmin','vinhlibrarian','2019-05-22 02:39:29','2019-05-22 02:39:42',0),(45,3,6,'2019-05-08 17:00:00','2019-05-24 17:00:00','Admin đây',4,'vinhadmin','vinhlibrarian','2019-05-24 07:41:53','2019-05-24 07:42:25',0);
/*!40000 ALTER TABLE `borrow_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `categories` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `id_parent` bigint(19) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `is_deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,'Tâm Lý - Kỹ Năng Sống','vinh','vinh','2019-04-19 06:25:50','2019-04-22 02:54:13',0),(3,NULL,'Y Học - Sức Khỏe','vinh','vinh','2019-04-22 02:28:01','2019-04-23 09:58:50',0),(5,NULL,'Thể Thao - Nghệ Thuật','vinh','vinh','2019-04-22 07:58:26','2019-04-22 07:58:26',1),(6,NULL,'tes_category','vinh','vinh','2019-04-23 09:58:19','2019-04-23 09:58:19',1),(7,NULL,'Hồi Ký - Tuỳ Bút','vinhlibrarian','vinhlibrarian','2019-04-24 09:54:41','2019-04-24 09:54:41',0),(8,NULL,'Truyện Tranh','vinhadmin','vinhlibrarian','2019-04-25 03:01:11','2019-05-02 02:26:28',0),(10,NULL,'Thể Thao',NULL,NULL,NULL,NULL,1),(11,NULL,'Thể loại sách mới',NULL,NULL,NULL,NULL,1),(16,NULL,'Y Học - Sức Khỏe1111',NULL,NULL,NULL,NULL,1),(17,NULL,'Thể Thao',NULL,NULL,NULL,NULL,1),(18,NULL,'Thể loại sách mới',NULL,NULL,NULL,NULL,1),(19,NULL,'Thể Thao',NULL,NULL,NULL,NULL,0),(20,NULL,'Cổ Tích - Thần Thoại',NULL,NULL,NULL,NULL,0),(21,NULL,'Tử Vi - Phong Thủy',NULL,NULL,NULL,NULL,0),(22,NULL,'Truyện Ngắn - Ngôn Tình',NULL,NULL,NULL,NULL,0),(23,NULL,'Kinh Dị - Ma Quái',NULL,NULL,NULL,NULL,0),(24,NULL,'Phiêu Lưu - Mạo Hiểm',NULL,NULL,NULL,NULL,0),(25,NULL,'Triết Học',NULL,NULL,NULL,NULL,0),(26,NULL,'Kiến Trúc - Xây Dựng',NULL,NULL,NULL,NULL,0),(27,NULL,'Tài Liệu Học Tập',NULL,NULL,NULL,NULL,0),(28,NULL,'Trinh Thám - Hình Sự',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (0,'USER'),(1,'LIBRARIAN'),(2,'ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `users` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `role` int(11) DEFAULT '0',
  `create_user` varchar(50) DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `is_deleted` int(1) DEFAULT '0',
  `token` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'vinh','$2a$10$o1fX5T6wC5fMF8SFApO8K.6UMT92J/dAYSycd386podw4xDkp14Fe','dongoc409@gmail.com','Thái nguyên','097189759',1,NULL,'vinh',NULL,'2019-05-17 08:40:51',0,''),(2,'vinhlibrarian','$2a$10$rrQ7fudvnYiYz4KWYU7xGeBpxOdY/.HTvM11o9ox1QqoDaBlfclMe','vinhlibrarian1@gmail.com','Hà Nội','0987654321',1,NULL,'vinhlibrarian',NULL,'2019-05-21 03:51:12',0,NULL),(3,'vinhadmin','$2a$10$mamtz2HLnEw0ScgceSIWQOOlXWdisVrIxF4fL8ppTcDrIR2MoZP6m','ascc@gmail.com','Hà Nội','056656325',2,NULL,'vinh',NULL,'2019-04-22 04:28:12',0,NULL),(4,'vinhuser','$2a$10$mamtz2HLnEw0ScgceSIWQOOlXWdisVrIxF4fL8ppTcDrIR2MoZP6m','d@gmail.com','Hà Nội','056656345',0,NULL,NULL,NULL,NULL,0,NULL),(13,'testBscrip','$2a$10$R7J2R7XW29gL/pWXnH7dhu51XdBra7xoltYb1UoPMG1oPXPVtF99G','testBscrip@gmail.com','Hà Nội','0971897654',0,NULL,'vinh',NULL,'2019-04-23 09:33:44',0,NULL),(14,'test','$2a$10$VLWwVsMXpNI595bHY0wtiOPIZp3mLa18GhPgsMBZtMef3b8gksGzO','11asd11@gmail.com','Hà Nội','0971897597',0,NULL,'vinhlibrarian',NULL,'2019-05-03 02:15:02',0,NULL),(15,'testuser','$2a$10$TsuC.6YbXR2xRO6UJPd4ae2.fbCZmqjs0nSopo.vvnn9qzA3RLy56','testuser@gmail.com','Hà Nội','01675809930',0,'testuser','testuser','2019-04-24 09:49:39','2019-04-24 09:49:39',0,NULL),(16,'Trung1996','$2a$10$h.DTkUsGrQvvhcr2e0INp.LipuqzHrgdmGBr63kFpAYh8pMbnmzm.','trung2671996@gmail.com','20 Hoang Quoc Viet','0916425369',0,'Trung1996',NULL,'2019-04-25 02:37:11',NULL,0,''),(19,'testlibrarian','$2a$10$rxPEnp80g7kgCwwZtfOJneRciNSKT.diA69khEySQUWj1/KAwftqe','testuser1@gmail.com','Hà Nội','0971897597',0,'testlibrarian','testlibrarian','2019-04-25 03:12:50','2019-05-22 09:15:42',1,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-06 13:42:06

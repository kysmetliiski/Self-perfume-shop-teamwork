CREATE DATABASE  IF NOT EXISTS `perfumes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `perfumes`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: perfumes
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfume_comments`
--

DROP TABLE IF EXISTS `perfume_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfume_comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `perfume_id` int NOT NULL,
  `comment` text NOT NULL,
  `date_time` datetime(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfume_comments`
--

LOCK TABLES `perfume_comments` WRITE;
/*!40000 ALTER TABLE `perfume_comments` DISABLE KEYS */;
INSERT INTO `perfume_comments` VALUES (1,1,'Страхотен парфюм, изкллючително траен!',NULL),(2,7,'sdf',NULL),(3,13,'hh',NULL),(4,8,'samo levski',NULL);
/*!40000 ALTER TABLE `perfume_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfumes`
--

DROP TABLE IF EXISTS `perfumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfumes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `available` varchar(45) NOT NULL DEFAULT '5',
  `type` tinytext NOT NULL,
  `product_image` mediumtext NOT NULL,
  `spview` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfumes`
--

LOCK TABLES `perfumes` WRITE;
/*!40000 ALTER TABLE `perfumes` DISABLE KEYS */;
INSERT INTO `perfumes` VALUES (1,'armani stronger with you','135,00','Открийте новия аромат на Emporio Armani Stronger With You Intensely. Пристрастяващият фуже аромат съдържа нотки на розов пипер, ванилия и акорд на кехлибар. Цветът на отлежал коняк перфектно изразява интензивния характер на новото ухание. Ароматът е изказ на личността на съвременния млад мъж, с неговия динамичен и интензивен начин на живот.','5','m','perfumes/armani-swy.jpg','spview/armani-swy.jpg'),(2,'bentley black edition','85,00','Създаден, за да отрази усещането от луксозните автомобили Bentley, това е мъжката парфюмна вода Bentley For Men Black Edition. Подобно на безупречно скроен костюм от дизайнерска марка, парфюмът е предназначен за мъже със самочувствие, които не приемат нищо друго освен най-доброто. Уханието подчертава изисканият и неподвластен на модните тенденции стил.','5','m','perfumes/b-black-edition.jpg',NULL),(3,'bentley intense ','95,00','Силна като мотора, който се крие под капака на емблематичната кола Bentley, луксозна като дизайна ѝ. Такава е парфюмната вода за мъже Bentley Infinite Intense, която ще ви грабне с ароматната си композиция, доминирана от пипера.','5','m','perfumes/b-intense.jpg',NULL),(4,'black xs by paco rabanne','180,00','Интензивното начало на цитрусови плодове е като взрив, пълен със свежест и потискащ завладяващите нотки на градински чай. В сърцето на аромата прониква толу балсам, канела, черен кардамон и гурме пралина. Абаносовото и палисандрово дърво в завършека на композицията ви обгръщат със своята топлина, а привлекателните кехлибарни акорди заедно с пачули изразяват вашата уникалност.','5','m','perfumes/black-xs.jpg',NULL),(5,'carolina hererra bad boy','145,00','Правила? Принципи? Създавате си ги сами, а мъжката тоалетна вода Carolina Herrera Bad Boy не оставя никакви съмнения за това. Героическата сила и смелост, които ароматът излъчва, перфектно ще допълнят бунтарската ви душа.','5','m','perfumes/ch-badboy.jpg',NULL),(6,'hugo boss the scent','95,00','Оставете се в ръцете на изкушението с продължението на тази история за съблазънта. Парфюмната вода Hugo Boss BOSS The Scent Absolute ви предлага една още по-интензивна интерпретация на страстта, преминаваща в абсолютно непреодолимо желание. Срещата с аромата представлява неустоимо привличане.','5','m','perfumes/hb-the-scent.jpg',NULL),(7,'jean paul gaultier le male','230,00','Хей, капитане! Мой силен капитане! Чувате ли това? Обръщат се така към вас, защото парфюмната вода Jean Paul Gaultier Le Male Le Parfum, чийто аромат се носи от тялото ви, издава на всички, че пред тях стои истински офицер! Дървесният ориенталски аромат ще обгърне и вас в аурата на мъжествеността, която разпръскват командирите в униформа.','5','m','perfumes/jean-p.jpg',NULL),(8,'latafa hayaati ','90,00','Нов ден, ново предизвикателство. Унисекс парфюмната вода Lattafa Hayaati ще освежи мислите ви и ще ви позволи да следвате инстинктите си. Впускайте се в ново приключение всеки ден.','3','m','perfumes/l-hayaati.jpg',NULL),(9,'mercedes-benz club','90,50','Приемете покана за VIP клуба, в който влизат само избраните. Тоалетната вода Mercedes-Benz Club е сякаш пропуск към света на луксозните автомобили, към неподвластните на времето стил и елегантност. Романтичната му ароматна композиция с дървесни нюанси ще ви зареди със самоувереност за всеки ден и по невероятен начин ще подчертае вашата харизма.','2','m','perfumes/mb-club.jpg',NULL),(10,'montblanc explorer','112,40','Приключението няма граници. Мъжката парфюмна вода Montblanc Explorer е предназначена за всички, които обичат да откриват нови възможности и копнеят за неповторими моменти, изпълнени с вълнение. Справяйте се с всички нови предизвикателства с уникалния аромат, който ще ви даде безкрайна енергия.','1','m','perfumes/mb-explorer.jpg',NULL),(11,'yves saint laurent Y','138,80','Смела, свежа, съблазнителна – парфюмната вода Yves Saint Laurent Y носи нова дефиниция за мъжественост. Тя е по-силна и по-интензивна версия на едноименната тоалетна вода от 2017 година и сега отваря нова глава в историята на мъжа от поколение Y.','0','m','perfumes/ysl-men.jpg',NULL),(12,'lattafa yara','52,00','Изберете аромат, с чиято помощ никога няма да останете незабелязана. Дамската парфюмна вода Lattafa Yara е олицетворение на лукса и уникалността, а обмислената ѝ до детайли ароматна композиция ще зарадва и най-претенциозните.','5','f','perfumes/lattafa-yara.jpg',NULL),(13,'carolina herrera good girl','102,50','Вие сама най-добре знаете кога е време за високи токове и съблазнителна рокля и кога за ниски обувки и рокля с воланчета. Парфюмната вода Carolina Herrera Good Girl винаги ще подчертае женските ви черти. Тези, които искате. Тези, които избирате в този момент.','5','f','perfumes/ch-good-girl.jpg',NULL),(14,'jean paul gaultier la belle le parfum','153,00','Спечелете капитана на сърцето си по-лесно от когато и да е преди. Парфюмната вода за жени Jean Paul Gaultier La Belle Le Parfum е всичко, от което се нуждаете, за да го сторите. Тя обгръща елегантните ви женствени извивки в съвършена чувствена аура, благодарение на която само за миг ставате абсолютно неустоима.','5','f','perfumes/jpg-la-belle.jpg',NULL),(15,'chloé nomade','51,60','Бохемска, необуздана, приключенска и незабравима – такава е парфюмната вода Chloé Nomade. Впуснете се и вие в тайнствено пътуване, където ще откриете непокорени досега простори.','5','f','perfumes/c-nomade.jpg',NULL),(16,'mugler alien','191,80','Аромат, който ще ви отведе в един нов свят. Тъмен, магически и неповторим. Това е култовата дамска парфюмна вода Mugler Alien. Сладко-пикантна, дървесна ароматна композиция, която подчертава харизматичността ви. Ухае на свобода – на отдалечените кътчета на безкрайното космическо пространство, в което можете да се движите свободно. ','5','f','perfumes/m-alien.jpg',NULL),(18,'calvin klein euphoria','98,30','Нямате нужда от шоколад, нито от любовно признание, за да изживеете еуфория от чувства. Парфюмната вода Calvin Klein Euphoria ще ви представи загадъчен свят, пълен с неукротима природа и екзотични цветя, които ще ви дадат чувствена съблазнителност и концентрирано усещане за щастие.','5','f','perfumes/ck-euphoria.jpg',NULL),(19,'lattafa ramz silver','35,50','Нов ден, ново предизвикателство. Унисекс парфюмната вода Lattafa Ramz Silver ще освежи мислите ви и ще ви позволи да следвате инстинктите си. Впускайте се в ново приключение всеки ден.','5','f','perfumes/l-ramz.jpg',NULL),(20,'mercedes-benz woman','92,90','Ориенталски цветен аромат, който подхожда чудесно на всеки повод – било то за работа, за романтична среща или вечер с приятели. Това е дамската парфюмна вода Mercedes-Benz Woman, която крие в себе си аромата на разцъфнали цветя, деликатна ванилия и топли дървесни нотки.\n\nАко сте също така почитателка на луксозните коли, със сигурност ще ви зарадва флаконът с култовото лого на Mercedes-Benz.','5','f','mb-woman.jpg',NULL),(22,'Carolina Herrera Good Girl Blush','230,00','Изразете женствеността си с цветна експлозия от контрасти. Парфюмната вода Carolina Herrera Good Girl Blush, вдъхновена от ружа-пудра, символизира съвременната жена, която е нежна, романтична и при все това силна. Защото истинската красота се крие в контрастите.','5','f','perfumes/ch-good-girl-blush.jpg',NULL),(23,'Chopard Wish','53,00','Бъдете съвършена като най-редкия диамант. Дамската парфюмна вода Chopard Wish ще ви даде усещане за елегантност, чувственост и тайнственост. Обвийте се в необичайна комбинация от ориенталски нотки и сладка ванилия и оставете ароматът да говори вместо вас.','5','f','perfumes/chopard-wish.jpg',NULL),(24,'Xerjoff Casamorati 1888 Regio','290,00','Открийте аромата, който не влиза в никакви калъпи, а в същото време майсторски подчертава личността на човека, който го носи. Именно унисекс парфюмната вода Xerjoff Casamorati 1888 Regio е ароматът, който ще позволи на вашата оригиналност да изпъкне.','5','f','perfumes/xerjoff-casamorati-1888-regio.jpg',NULL),(25,'Armani Emporio She','148,00','Обвийте сетивата си в упоителните нотки на нежни цветя и сладки плодове и се размечтайте с необичайния екзотичен аромат. Дамската парфюмна вода Emporio She ще ви накара да се почувствате съблазнителна и изключителна и ще ви придаде аура на свежест и удоволствие.','5','f','perfumes/armani-she.jpg',NULL),(26,'Born in Roma Donna','196,00','Вдъхновете се от уникалната атмосфера на Рим и впечатлете околните с женствеността си, така както го правят италианките. Дамската парфюмна вода Valentino Born In Roma Donna ви кани гордо да покажете своята личност и желанията си.','5','f','perfumes/born-in-roma-donna.jpg',NULL),(27,'Armani Emporio Because It\'s You','150,00','Съвършенство? То може би никога не е било по-близо. Giorgio Armani Emporio Because It’s You е парфюмна вода, изпълнена с радост, нежност и блясък. Жената, която ухае на нея, е смела, впечатляваща и не пропуска възможност да заяви себе си.','5','f','perfumes/armani-because.jpg',NULL),(28,'Burberry Her','95,00','Необвързана, модерна, лична – такава е парфюмната вода Burberry Her, разкриваща пулсиращата атмосфера на Лондон.','5','f','perfumes/berberry-her.jpg',NULL),(29,'Carolina Herrera 212 Sexy','170,00','Би било жалко чувственото ви и съблазнително излъчване да остане скрито. Позволете на дамската парфюмна вода Carolina Herrera 212 Sexy да подчертае женствения ви сексапил по изтънчен и изключително привлекателен начин. Няма как да останете незабелязана.','5','f','perfumes/carolina-212-sexy.jpg',NULL),(30,'Burberry London for Women','42,00','Изживейте неповторимата атмосфера на Лондон в най-чувствения му вид. Дамската парфюмна вода Burberry London представя атмосферата на британската столица, която съчетава по уникален начин традицията и динамичния творчески дух.','5','f','perfumes/burberry-london-women.jpg',NULL),(31,'Versace Yellow Diamond Intense','100,00','Диамантите издигат всеки тоалет с няколко класа нагоре. Същата способност има и дамската тоалетна вода Versace Yellow Diamond Intense, която ще ви обгърне в неустоим цитрусово-цветен аромат. Готова ли сте за истинско интензивно преживяване?','5','f','perfumes/versace-yellow-diamond-intense.jpg',NULL);
/*!40000 ALTER TABLE `perfumes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (1,'veselin','atanasov','vesko10203@abv.bg','12345'),(2,'','','','');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-17 21:38:52

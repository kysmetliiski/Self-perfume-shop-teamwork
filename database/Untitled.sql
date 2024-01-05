-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: perfumes
-- ------------------------------------------------------
-- Server version	8.0.30

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
  `type` varchar(45) NOT NULL,
  `product_image` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfumes`
--

LOCK TABLES `perfumes` WRITE;
/*!40000 ALTER TABLE `perfumes` DISABLE KEYS */;
INSERT INTO `perfumes` VALUES (1,'armani stronger with you','135,00','Открийте новия аромат на Emporio Armani Stronger With You Intensely. Пристрастяващият фуже аромат съдържа нотки на розов пипер, ванилия и акорд на кехлибар. Цветът на отлежал коняк перфектно изразява интензивния характер на новото ухание. Ароматът е изказ на личността на съвременния млад мъж, с неговия динамичен и интензивен начин на живот.','5','m','perfumes/armani-swy.jpg'),(2,'bentley black edition','85,00','Създаден, за да отрази усещането от луксозните автомобили Bentley, това е мъжката парфюмна вода Bentley For Men Black Edition. Подобно на безупречно скроен костюм от дизайнерска марка, парфюмът е предназначен за мъже със самочувствие, които не приемат нищо друго освен най-доброто. Уханието подчертава изисканият и неподвластен на модните тенденции стил.','5','m','perfumes/b-black-edition.jpg'),(3,'bentley intense ','95,00','Силна като мотора, който се крие под капака на емблематичната кола Bentley, луксозна като дизайна ѝ. Такава е парфюмната вода за мъже Bentley Infinite Intense, която ще ви грабне с ароматната си композиция, доминирана от пипера.','5','m','perfumes/b-intense.jpg'),(4,'black xs by paco rabanne','180,00','Интензивното начало на цитрусови плодове е като взрив, пълен със свежест и потискащ завладяващите нотки на градински чай. В сърцето на аромата прониква толу балсам, канела, черен кардамон и гурме пралина. Абаносовото и палисандрово дърво в завършека на композицията ви обгръщат със своята топлина, а привлекателните кехлибарни акорди заедно с пачули изразяват вашата уникалност.','5','m','perfumes/black-xs.jpg'),(5,'carolina hererra bad boy','145,00','Правила? Принципи? Създавате си ги сами, а мъжката тоалетна вода Carolina Herrera Bad Boy не оставя никакви съмнения за това. Героическата сила и смелост, които ароматът излъчва, перфектно ще допълнят бунтарската ви душа.','5','m','perfumes/ch-badboy.jpg'),(6,'hugo boss the scent','95,00','Оставете се в ръцете на изкушението с продължението на тази история за съблазънта. Парфюмната вода Hugo Boss BOSS The Scent Absolute ви предлага една още по-интензивна интерпретация на страстта, преминаваща в абсолютно непреодолимо желание. Срещата с аромата представлява неустоимо привличане.','5','m','perfumes/hb-the-scent.jpg'),(7,'jean paul gaultier le male','230,00','Хей, капитане! Мой силен капитане! Чувате ли това? Обръщат се така към вас, защото парфюмната вода Jean Paul Gaultier Le Male Le Parfum, чийто аромат се носи от тялото ви, издава на всички, че пред тях стои истински офицер! Дървесният ориенталски аромат ще обгърне и вас в аурата на мъжествеността, която разпръскват командирите в униформа.','5','m','perfumes/jean-p.jpg'),(8,'latafa hayaati ','90,00','Нов ден, ново предизвикателство. Унисекс парфюмната вода Lattafa Hayaati ще освежи мислите ви и ще ви позволи да следвате инстинктите си. Впускайте се в ново приключение всеки ден.','3','m','perfumes/l-hayaati.jpg'),(9,'mercedes-benz club','90,50','Приемете покана за VIP клуба, в който влизат само избраните. Тоалетната вода Mercedes-Benz Club е сякаш пропуск към света на луксозните автомобили, към неподвластните на времето стил и елегантност. Романтичната му ароматна композиция с дървесни нюанси ще ви зареди със самоувереност за всеки ден и по невероятен начин ще подчертае вашата харизма.','2','m','perfumes/mb-club.jpg'),(10,'montblanc explorer','112,40','Приключението няма граници. Мъжката парфюмна вода Montblanc Explorer е предназначена за всички, които обичат да откриват нови възможности и копнеят за неповторими моменти, изпълнени с вълнение. Справяйте се с всички нови предизвикателства с уникалния аромат, който ще ви даде безкрайна енергия.','1','m','perfumes/mb-explorer.jpg'),(11,'yves saint laurent Y','138,80','Смела, свежа, съблазнителна – парфюмната вода Yves Saint Laurent Y носи нова дефиниция за мъжественост. Тя е по-силна и по-интензивна версия на едноименната тоалетна вода от 2017 година и сега отваря нова глава в историята на мъжа от поколение Y.','0','m','perfumes/ysl-men.jpg'),(12,'lattafa yara','52,00','Изберете аромат, с чиято помощ никога няма да останете незабелязана. Дамската парфюмна вода Lattafa Yara е олицетворение на лукса и уникалността, а обмислената ѝ до детайли ароматна композиция ще зарадва и най-претенциозните.','5','f','perfumes/lattafa-yara.jpg'),(13,'carolina herrera good girl','102,50','Вие сама най-добре знаете кога е време за високи токове и съблазнителна рокля и кога за ниски обувки и рокля с воланчета. Парфюмната вода Carolina Herrera Good Girl винаги ще подчертае женските ви черти. Тези, които искате. Тези, които избирате в този момент.','5','f','perfumes/ch-good-girl.jpg'),(14,'jean paul gaultier la belle le parfum','153,00','Спечелете капитана на сърцето си по-лесно от когато и да е преди. Парфюмната вода за жени Jean Paul Gaultier La Belle Le Parfum е всичко, от което се нуждаете, за да го сторите. Тя обгръща елегантните ви женствени извивки в съвършена чувствена аура, благодарение на която само за миг ставате абсолютно неустоима.','5','f','perfumes/jpg-la-belle.jpg');
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

-- Dump completed on 2024-01-04 21:50:23

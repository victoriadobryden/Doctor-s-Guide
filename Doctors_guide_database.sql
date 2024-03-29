-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: doctors_guide
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `diseases`
--

DROP TABLE IF EXISTS `diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diseases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `symptoms` text NOT NULL,
  `procedures` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diseases`
--

LOCK TABLES `diseases` WRITE;
/*!40000 ALTER TABLE `diseases` DISABLE KEYS */;
INSERT INTO `diseases` VALUES (1,'Agoraphobia','anxiety in unfamiliar environments, fear of going out','systematic desensitization, cognitive restructuring relaxation techniques'),(2,'Generalized anxiety disorder','excessive worry, restlessness, trouble sleeping, exhaustion, irritability, sweating, and trembling','cognitive behavioral therapy, metacognitive therapy, pharmacological intervention'),(3,'Panic disorder','sudden onset of palpitations, chest pain or tightness, shortness of breath or hyperventilation, choking sensations, dizziness, depersonalization or derealization, secondary fear of dying','cognitive behavioral therapy, positive self-talk specific for panic'),(4,'Selective mutism','unable to speak when exposed to specific situations, shyness, social anxiety, fear of social embarrassment','self-modeling, stimulus fading, desensitization, shaping'),(5,'Separation anxiety disorder','anxiety regarding separation from home, anxiety regarding from people to whom emotional attachment','counseling, cognitive-behavioral, contingency, psychodynamic psychotherapy, family therapy'),(6,'Specific phobias','irrational fear of specific object, increased heart rate, shortness of breath, muscle tension, sweating','cognitive behavioral therapy, exposure therapy, pharmacotherapeutics'),(7,'Social anxiety disorder','excessive blushing, excessive sweating, trembling, palpitations, rapid heartbeat, muscle tension, shortness of breath, nausea in social situations','cognitive behavioral therapy (CBT)'),(8,'Dissociation','emotional detachment from the immediate surroundings, disconnection from physical and emotional experiences',' \"hypnosis and suggestibility'),(9,'Depression','low mood, aversion to activity, loss of interest, loss of feeling pleasure','cognitive-behavioral therapy, cognitive behavioral analysis system of psychotherapy, schema therapy'),(10,'Bipolar disorder','periods of depression and elevated mood, euphoria, dysphoria, irritability','psychotherapy, medications'),(11,'Hypomania','euphoria or heightened irritability, pressure of speech and activity, increased energy, decreased need for sleep, and flight of ideas','medications'),(12,'Reactive attachment disorder','inappropriate social relatedness, markedly disturbed','psychotherapeutic interventions, attachment therapy'),(13,'Disinhibited social engagement disorder','having little or no fear of unfamiliar adults, actively approaching them','play therapy, expressive therapy'),(14,'Post-traumatic stress disorder (PTSD)','disturbing thoughts, feelings, or dreams related to the event, mental or physical distress to trauma-related cues, efforts to avoid trauma-related situations, increased fight-or-flight response',' \"trauma focused cognitive behavioral therapy'),(15,'Intellectual disability','delays in reaching, or failure to achieve milestones in motor skills development (sitting, crawling, walking),slowness learning to talk, or continued difficulties with speech and language skills after starting to talk, difficulty with self-help and self-care skills (e.g., getting dressed, washing, and feeding themselves), poor planning or problem-solving abilities, behavioral and social problems, failure to grow intellectually, or continued infant childlike behavior, problems keeping up in school, failure to adapt or adjust to new situations','behavioral treatments, language and social skills acquisition, encouragement of exploration, mentoring in basic skills, celebration of developmental advances'),(16,'Sensory processing disorder','hypersensitivity and hyposensitivity to stimuli, and/or difficulties using sensory information to plan movement, problems discriminating characteristics of stimuli','sensory integration therapy, sensory processing therapy'),(17,'Stuttering','involuntary repetitions and prolongations of sounds, syllables, words, or phrases as well as involuntary silent pauses or blocks in which the person who stutters is unable to produce sounds','speech therapy, support'),(18,'Aphasia','inability to comprehend or unable to formulate language because of damage to specific brain regions, inability to comprehend language, inability to pronounce, inability to form words, inability to read, inability to write, poor enunciation','speech therapy, language therapy, visual action therapy'),(19,'Autism spectrum disorder','difficulties in social interaction, verbal and nonverbal communication, and the presence of repetitive behavior or restricted interests','applied behavior analysis, cognitive behavioral therapy, occupational therapy, psychotropic medication, speechâ€“language pathology'),(20,'Attention deficit hyperactivity disorder (ADHD)','inattention, carelessness, hyperactivity, executive dysfunction, disinhibition, emotional dysregulation, impulsivity, impaired working memory','psychotherapy, lifestyle changes, medication'),(21,'Developmental coordination disorder','motor skills deficit, informational processing difficulties','physical therapy, occupational therapy'),(22,'Tourette syndrome','tics','usually none, occasionally neuroleptics and noradrenergics'),(23,'Dyslexia','trouble reading','adjusting teaching methods'),(24,'Dyscalculia','difficulty learning or comprehending arithmetic, such as difficulty in understanding numbers, learning how to manipulate numbers, performing mathematical calculations, and learning facts in mathematics','transcranial direct current stimulation, repetition and practice'),(25,'Dysgraphia','poor and inconsistent handwriting, poor spelling and spacing, other transcription difficulties in absence of oral language difficulties','occupational therapy'),(26,'Insomnia','trouble sleeping, daytime sleepiness, low energy, irritability, depressed mood','sleep hygiene, cognitive behavioral therapy'),(27,'Hypersomnia','excessive time spent sleeping, excessive sleepiness','behavioral treatments, sleep hygiene'),(28,'Idiopathic hypersomnia','excessive sleep, excessive daytime sleepiness','cognitive behavioral therapy'),(29,'Narcolepsy','excessive daytime sleepiness, involuntary sleep episodes, sudden loss of muscle strength, hallucinations','medication, regular short naps, sleep hygiene'),(30,'Restless legs syndrome','unpleasant feeling in the legs that briefly improves with moving them','lifestyle changes, medication'),(31,'Night terrors','feelings of panic or dread and typically occurring during the first hours of stage 3â€“4 non-rapid eye movement (NREM) sleep and lasting for 1 to 10 minutes','psychotherapy, medication'),(32,'Exploding head syndrome','hearing loud noises when falling asleep or waking up','reassurance, medication'),(33,'Nightmare disorder','repeated intense nightmares, sleepwalking, sleep terrors, bedwetting, sleep paralysis','imagery rehearsal therapy, cognitive behavioral therapy for insomnia'),(34,'Circadian rhythm sleep disorder','dysfunction in one\'s biological clock system','chronotherapy, light therapy, hypnotics , dark therapy'),(35,'Delirium','agitation, confusion, drowsiness, hallucinations, delusions, memory problems','treating underlying cause, symptomatic management with medication'),(36,'Dementia','decreased ability to think and remember, emotional problems, problems with language, decreased motivation','supportive care'),(37,'Amnesia','deficit in memory caused by brain damage or brain diseases, not remembering the episodes during which they previously learned','cognitive or occupational therapy'),(38,'Agnosia','inability to process sensory information','occupational therapy or speech therapy'),(39,'Substance use disorder','excessive use of drugs despite adverse consequences','drug rehabilitation therapy'),(40,'Paraphilia','intense sexual interest to atypical objects, places, situations, fantasies, behaviors, or individuals','cognitive behavioral therapy'),(41,'Enuresis','urge incontinence, voiding postponement, stress incontinence, giggling incontinence','neurostimulation, hypnotherapy'),(42,'Pica','craving and chewing substances with no nutritional value such as ice, clay, soil, or paper','behavioral intervention, therapy'),(43,'Rumination syndrome','repeated regurgitation of food,behavioral therapy',' diaphragmatic breathing\"'),(44,'Avoidant/restrictive food intake disorder','disturbance in eating leading to persistent failure to meet nutritional needs','nutritional counseling, therapy'),(45,'Anorexia nervosa','restriction of food intake leading to weight loss or lack of weight gain, intense fear of gaining weight','nutritional rehabilitation, psychotherapy'),(46,'Binge eating disorder','recurrent episodes of eating large quantities of food quickly and to the point of discomfort, feeling of loss of control','psychotherapy, medications'),(47,'Bulimia nervosa','recurrent binge eating with compensatory behaviors like vomiting, excessive exercise, or fasting','psychotherapy, nutritional counseling'),(48,'Other specified feeding or eating disorder (OSFED)','eating behaviors that cause distress and impairment but do not meet other feeding and eating disorder criteria','tailored psychotherapy, nutritional therapy'),(49,'Purging disorder','recurrent purging to influence weight or shape in the absence of binge eating','psychotherapy, nutritional counseling, medication'),(50,'Diabulimia','deliberate insulin underuse in people with type 1 diabetes for the purpose of weight loss','medical monitoring, psychoeducation, insulin therapy'),(51,'Night eating syndrome','consumption of a majority of daily calories during the night, waking up to eat','behavioral therapy, stress reduction, medications'),(52,'Orthorexia nervosa','obsession with eating food that one considers healthy, strict avoidance of food perceived as unhealthy','cognitive behavioral therapy, nutritional counseling'),(53,'Atypical anorexia nervosa','anorexia nervosa symptoms without significant weight loss','nutritional rehabilitation, psychotherapy'),(54,'Disruptive impulse-control','problems in emotional and behavioral self-control','psychotherapy, social training, medication'),(55,'Intermittent explosive disorder','episodes of aggressive outbursts resulting in either verbal assaults or physical violence','cognitive behavioral therapy, anger management, medication'),(56,'Oppositional defiant disorder','frequent and persistent pattern of anger, irritability, arguing, defiance or vindictiveness','parent management training, psychotherapy'),(57,'Conduct disorder','repetitive and persistent pattern of behavior violating the rights of others or societal norms/rules','behavioral therapies, family therapy, medication'),(58,'Antisocial personality disorder','disregard for, and violation of, the rights of others, lack of empathy','psychotherapy, cognitive behavioral therapy'),(59,'Pyromania','deliberate and purposeful fire setting on more than one occasion','cognitive behavioral therapy, medication, fire safety education'),(60,'Kleptomania','recurring inability to resist urges to steal items that are not needed for personal use','psychotherapy, medication'),(61,'Disruptive mood dysregulation disorder','severe temper outbursts and persistent irritable or angry mood','psychotherapy, medication'),(62,'Obsessiveâ€“compulsive disorder (OCD)','presence of obsessions, compulsions, or both','cognitive-behavioral therapy, exposure and response prevention, medication'),(63,'Body dysmorphic disorder','preoccupation with one or more perceived defects or flaws in physical appearance','cognitive-behavioral therapy, medication'),(64,'Body integrity dysphoria','desire to have a disability or a discomfort with being able-bodied','psychotherapy, support groups'),(65,'Compulsive hoarding','persistent difficulty discarding or parting with possessions','cognitive-behavioral therapy, task-oriented support'),(66,'Trichotillomania','repeated urge to pull out scalp hair, eyelashes, eyebrows or other body hair','habit reversal training, cognitive-behavioral therapy'),(67,'Excoriation disorder (Skin picking)','repetitive and compulsive picking of skin leading to tissue damage','cognitive-behavioral therapy, habit reversal training'),(68,'Body-focused repetitive behavior disorder','engaging in repetitive self-grooming behavior','cognitive-behavioral therapy, habit reversal training'),(69,'Olfactory reference syndrome','preoccupation with the belief that one emits a foul or offensive body odor','cognitive-behavioral therapy, medication'),(70,'Phantom limb syndrome','perception of sensations, often including pain, in an arm or leg that has been amputated','mirror therapy, medication, neural prosthesis'),(71,'Primarily obsessional obsessive-compulsive disorder','non-stop, intrusive obsessions that are distressing','cognitive-behavioral therapy, medication'),(72,'Hoarding disorder','persistent difficulty discarding or parting with possessions due to a perceived need to save them','cognitive-behavioral therapy, organizational assistance'),(73,'Schizophrenia','hallucinations, delusions, disorganized thinking and speech, social withdrawal','antipsychotic medication, psychotherapy, social skills training'),(74,'Paranoid personality disorder','pervasive distrust and suspicion of others and their motives','psychotherapy, cognitive-behavioral therapy'),(75,'Schizoid personality disorder','lack of interest in social relationships, seeing no point in sharing time with others, anhedonia','cognitive-behavioral therapy, social skills training'),(76,'Schizotypal personality disorder','acute discomfort in close relationships, cognitive or perceptual distortions, eccentricities of behavior','psychotherapy, low-dose antipsychotic medication'),(77,'Borderline personality disorder','pattern of instability in personal relationships, intense emotions, poor self-image and impulsivity','dialectical behavior therapy, psychotherapy'),(78,'Histrionic personality disorder','excessive emotionality and attention seeking, discomfort when not the center of attention','cognitive behavioral therapy, psychodynamic therapy'),(79,'Narcissistic personality disorder','grandiosity, need for admiration, lack of empathy','psychotherapy, cognitive behavioral therapy'),(80,'Avoidant personality disorder','social inhibition, feelings of inadequacy, extreme sensitivity to negative evaluation','cognitive behavioral therapy, social skills training'),(81,'Dependent personality disorder','pervasive psychological dependence on other people','cognitive behavioral therapy, psychodynamic therapy'),(82,'Obsessiveâ€“compulsive personality disorder','preoccupation with orderliness, perfectionism, and mental and interpersonal control','cognitive behavioral therapy, relaxation techniques'),(83,'Not otherwise specified (PD-NOS)','personality disorder that fits criteria for several disorders but not one specifically','tailored psychotherapy'),(84,'Depressive personality disorder','chronic depressive symptoms not severe enough to meet criteria for major depression','antidepressants, psychotherapy'),(85,'Passiveâ€“aggressive personality disorder','indirect expression of hostility through acts of resistance in social and professional relationships','psychotherapy, communication training'),(86,'Sadistic personality disorder','pattern of cruel, demeaning and aggressive behavior','psychotherapy, behavioral therapy'),(87,'Self-defeating personality disorder','behavior that undermines the person\'s pleasure and goals','cognitive behavioral therapy, psychotherapy');
/*!40000 ALTER TABLE `diseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interchangeblemedications`
--

DROP TABLE IF EXISTS `interchangeblemedications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interchangeblemedications` (
  `medication_id` int NOT NULL,
  `interchangeble_with_id` int NOT NULL,
  PRIMARY KEY (`medication_id`,`interchangeble_with_id`),
  KEY `interchangeble_with_id` (`interchangeble_with_id`),
  CONSTRAINT `interchangeblemedications_ibfk_1` FOREIGN KEY (`medication_id`) REFERENCES `medications` (`id`),
  CONSTRAINT `interchangeblemedications_ibfk_2` FOREIGN KEY (`interchangeble_with_id`) REFERENCES `medications` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interchangeblemedications`
--

LOCK TABLES `interchangeblemedications` WRITE;
/*!40000 ALTER TABLE `interchangeblemedications` DISABLE KEYS */;
INSERT INTO `interchangeblemedications` VALUES (1,2),(3,4),(5,6),(7,8),(9,10),(11,12),(13,14),(15,16),(17,18),(19,20),(21,22),(23,24),(25,26),(27,28),(29,30),(31,32),(33,34),(35,36),(37,38),(39,40),(41,42),(43,44),(45,46),(47,48),(49,50),(51,52),(53,54),(55,56),(57,58),(59,60),(61,62),(63,64),(65,66),(67,68),(69,70),(71,72),(73,74),(75,76),(77,78),(79,80),(81,82),(83,84),(85,86),(87,88),(89,90),(91,92),(93,94),(95,96),(97,98),(99,100);
/*!40000 ALTER TABLE `interchangeblemedications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medications`
--

DROP TABLE IF EXISTS `medications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `dosing_mg` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medications`
--

LOCK TABLES `medications` WRITE;
/*!40000 ALTER TABLE `medications` DISABLE KEYS */;
INSERT INTO `medications` VALUES (1,'Chlordiazepoxide',500,5),(2,'Diazepam',100,3),(3,'Citalopram',500,10),(4,'Escitalopram',100,100),(5,'Venlafaxine',500,10),(6,'Effexor',400,5),(7,'Sertralin',600,20),(8,'Zoloft',450,10),(9,'Zebeta',200,10),(10,'Coreg',100,15),(11,'Tofranil',300,10),(12,'Imipramine',300,20),(13,'Clomipramine',200,100),(14,'Anafranil',100,100),(15,'Paroxetine',300,2),(16,'Seroxat',200,2),(17,'Escitalopram',300,20),(18,'Lexapro',200,10),(19,'Hydracarbazine',100,2),(20,'Nardil',100,3),(21,'Fluoxetine',100,20),(22,'Prozac',100,15),(23,'Lithium',300,10),(24,'Tagretol',200,30),(25,'Valproate',100,10),(26,'Lamictal',200,10),(27,'Abilify',100,20),(28,'Aristada',200,10),(29,'Desvenlafaxine',100,15),(30,'Pristiq',150,20),(31,'Anquil',150,10),(32,'Benperidol',100,30),(33,'Methylphenidate',100,30),(34,'Concerta',150,15),(35,'Amphetamine',100,10),(36,'Adderall',200,10),(37,'Atomoxetine',50,10),(38,'Strattera',50,10),(39,'Zolpidem',100,5),(40,'Ambien',100,10),(41,'Modafinil',100,100),(42,'Provigil',100,125),(43,'Xywav',100,25),(44,'Xyrem',100,50),(45,'Levodopa',100,25),(46,'Dopar',100,20),(47,'Bromocriptine',200,10),(48,'Pergolide',100,15),(49,'Clomipramine',50,25),(50,'Anafranil',100,20),(51,'Prazosin',100,15),(52,'Minipress',150,20),(53,'Clonidine',50,15),(54,'Catapres',100,20),(55,'Melatonin',100,20),(56,'Melatodot',50,15),(57,'Olanzapine',50,15),(58,'Zyprexa',100,25),(59,'Edrophonium',100,25),(60,'Tensilon',50,15),(61,'Methadone',100,20),(62,'Disulfiram',100,100),(63,'Desmopressin',10,20),(64,'DDAVP',10,20),(65,'Risperidone',150,2),(66,'Risperdal',250,3),(67,'Clozapine',120,100),(68,'Clozaril',130,75),(69,'Quetiapine',110,25),(70,'Seroquel',140,50),(71,'Ziprasidone',160,40),(72,'Geodon',180,20),(73,'Aripiprazole',200,15),(74,'Ablify',220,10),(75,'Paliperidone',240,6),(76,'Invega',260,9),(77,'Olanzapine',280,5),(78,'Zyprexa',300,8),(79,'Lurasidone',320,40),(80,'Latuda',340,20),(81,'Asenapine',360,5),(82,'Saphris',380,10),(83,'Iloperidone',400,12),(84,'Fanapt',420,15),(85,'Brexpiprazole',440,3),(86,'Rexulti',460,2),(87,'Cariprazine',480,5),(88,'Vraylar',500,2),(89,'Fluvoxamine',520,50),(90,'Luvox',540,25),(91,'Doxepin',560,75),(92,'Sinequan',580,10),(93,'Nortriptyline',600,10),(94,'Pamelor',620,25),(95,'Amitriptyline',640,50),(96,'Elavil',660,35),(97,'Maprotiline',680,60),(98,'Ludiomil',700,15),(99,'Trimipramine',720,10),(100,'Surmontil',740,5);
/*!40000 ALTER TABLE `medications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommendedmedications`
--

DROP TABLE IF EXISTS `recommendedmedications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommendedmedications` (
  `disease_id` int NOT NULL,
  `medication_id` int NOT NULL,
  `recommended_dosing_mg` int DEFAULT NULL,
  PRIMARY KEY (`disease_id`,`medication_id`),
  KEY `medication_id` (`medication_id`),
  CONSTRAINT `recommendedmedications_ibfk_1` FOREIGN KEY (`disease_id`) REFERENCES `diseases` (`id`),
  CONSTRAINT `recommendedmedications_ibfk_2` FOREIGN KEY (`medication_id`) REFERENCES `medications` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendedmedications`
--

LOCK TABLES `recommendedmedications` WRITE;
/*!40000 ALTER TABLE `recommendedmedications` DISABLE KEYS */;
INSERT INTO `recommendedmedications` VALUES (1,1,5),(1,3,10),(2,5,10),(2,7,20),(3,9,10),(3,11,10),(4,11,10),(4,13,100),(5,6,5),(5,7,20),(6,7,20),(6,15,2),(6,19,2),(7,11,10),(7,17,20),(8,7,20),(8,21,20),(9,9,10),(9,21,20),(10,23,10),(10,25,10),(11,23,10),(11,27,20),(14,3,10),(14,7,20),(14,29,15),(19,7,20),(19,22,15),(19,31,10),(20,33,30),(20,35,10),(20,37,10),(22,31,10),(24,33,30),(26,39,5),(27,41,100),(28,33,30),(28,43,25),(29,7,20),(29,41,100),(29,43,25),(30,45,25),(30,47,10),(31,2,3),(32,49,25),(33,51,15),(33,53,15),(34,55,20),(35,31,10),(35,57,15),(36,59,25),(39,61,20),(40,7,20),(41,63,20),(42,65,2),(42,67,100),(42,69,25),(43,71,40),(43,73,15),(44,75,6),(44,77,5),(45,79,40),(45,81,5),(46,83,12),(46,85,3),(47,87,5),(47,89,50),(48,91,50),(48,93,75),(49,95,50),(49,97,60),(50,66,3),(50,99,10),(51,68,75),(51,70,50),(52,72,40),(52,74,20),(53,76,6),(53,78,9),(54,80,20),(54,82,5),(55,84,10),(55,86,12),(56,88,15),(56,90,3),(57,92,50),(57,94,25),(58,96,75),(58,98,10),(59,67,100),(59,100,10),(60,69,25),(60,71,40),(61,73,15),(61,75,6),(62,77,5),(62,79,40),(63,81,5),(63,83,12),(64,85,3),(64,87,5),(65,89,50),(65,91,50),(66,93,75),(66,95,50),(67,97,60),(67,99,10),(68,66,3),(68,68,75),(69,70,50),(69,72,40),(70,74,20),(70,76,6),(71,78,9),(71,80,20),(72,82,5),(72,84,10),(73,86,12),(73,88,15),(74,90,3),(74,92,50),(75,94,25),(75,96,75),(76,98,10),(76,100,5),(77,67,100),(77,69,25),(78,71,40),(78,73,15),(79,75,6),(79,77,5),(80,79,40),(80,81,5),(81,83,12),(81,85,3),(82,87,5),(82,89,50),(83,91,50),(83,93,75),(84,95,50),(84,97,60),(85,66,3),(85,99,10),(86,68,75),(86,70,50),(87,72,20),(87,74,10);
/*!40000 ALTER TABLE `recommendedmedications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-29 12:28:25

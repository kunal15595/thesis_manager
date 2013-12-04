# MySQL backup created by phpMySQLAutoBackup - Version: 1.6.3
# 
# http://www.dwalker.co.uk/phpmysqlautobackup/
#
# Database: project
# Domain name: localhost
# (c)2013 localhost
#
# Backup START time: 00:26:19
# Backup END time: 00:26:19
# Backup Date: 30 Nov 2013
 
drop table if exists `MessageList`; 
CREATE TABLE `MessageList` (
  `MessageID` double NOT NULL AUTO_INCREMENT,
  `Message` text,
  `Author` text,
  `Email` text,
  `CreationDate` datetime NOT NULL,
  `ThreadID` double NOT NULL,
  PRIMARY KEY (`MessageID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
insert into `MessageList` (`MessageID`, `Message`, `Author`, `Email`, `CreationDate`, `ThreadID`) values ('1', 'hackathon', 'Kunal Khandelwal', 'dfg', '2013-11-06 19:37:21', '1');
insert into `MessageList` (`MessageID`, `Message`, `Author`, `Email`, `CreationDate`, `ThreadID`) values ('2', 'xdfcdrfgf', 'dfgxf', 'dfg', '2013-11-06 19:38:10', '1');
insert into `MessageList` (`MessageID`, `Message`, `Author`, `Email`, `CreationDate`, `ThreadID`) values ('3', 'wedfds', 'dfgxf', 'dfg', '2013-11-06 20:58:22', '2');
insert into `MessageList` (`MessageID`, `Message`, `Author`, `Email`, `CreationDate`, `ThreadID`) values ('4', 'fdg', 'dfgxf', 'dfg', '2013-11-06 21:42:52', '2');
 
drop table if exists `ThreadList`; 
CREATE TABLE `ThreadList` (
  `ThreadID` double NOT NULL AUTO_INCREMENT,
  `Title` text,
  `Author` text,
  `Email` text,
  `Posts` double DEFAULT NULL,
  `CreationDate` datetime NOT NULL,
  `LastPostedTo` datetime NOT NULL,
  PRIMARY KEY (`ThreadID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
insert into `ThreadList` (`ThreadID`, `Title`, `Author`, `Email`, `Posts`, `CreationDate`, `LastPostedTo`) values ('1', 'do it', 'Kunal Khandelwal', 'dfg', '2', '2013-11-06 19:37:21', '2013-11-06 19:38:10');
insert into `ThreadList` (`ThreadID`, `Title`, `Author`, `Email`, `Posts`, `CreationDate`, `LastPostedTo`) values ('2', 'srdtgfcesewfd', 'dfgxf', 'dfg', '2', '2013-11-06 20:58:22', '2013-11-06 21:42:52');
 
drop table if exists `advisor`; 
CREATE TABLE `advisor` (
  `advisor_name` varchar(200) NOT NULL,
  `advisor_id` varchar(100) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pass` varchar(20) NOT NULL,
  `last_modified_at` datetime NOT NULL,
  `pass_changed_at` datetime NOT NULL,
  `pass_created_at` datetime NOT NULL,
  `last_modified_by` varchar(250) NOT NULL,
  `password_hashed` text NOT NULL,
  `security_question_id` int(11) NOT NULL DEFAULT '-1',
  `security_question_ans` varchar(200) NOT NULL,
  `image` blob NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `advisor_id` (`advisor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Ashish Anand', 'anand.ashish', '2', 'elli97func', '2013-04-14 20:55:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Amit Awekar', 'awekar', '3', '7y5e3y3Er', '2012-04-10 11:53:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Prof. Gautam Barua', 'gb', '4', 'dyveGyPeV', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Purandar Bhaduri', 'pbhaduri', '5', '2yReNybeb', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Samit Bhattacharya', 'samit', '6', '5aGuJaRuT', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Santosh Biswas', 'santosh_biswas', '7', 'santosh123', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Pradip Kr. Das', 'pkdas', '8', '7y5ery8Er', '2012-04-20 14:32:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Jatindra Kr. Deka', 'jatin', '9', 'uDavuWaGu', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Diganta Goswami', 'dgoswami', '10', 'yWeJyNeVy', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. R. Inkulu', 'rinkulu', '11', 'ezyje3yje', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Benny George K', 'ben', '12', 'yteMymeZy', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Hemangee Kalpesh Kapoor', 'hemangee', '13', 'yteMymeZy', '2012-04-18 11:24:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Sushanta Karmakar', 'sushantak', '14', 'e9y5eBySe', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Pinaki Mitra', 'pinaki', '15', 'u9a3uhaGu', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. S. B. Nair', 'sbnair', '16', 'yze3y3eJy', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Prof. Sukumar Nandi', 'sukumar', '17', 'e8y3e2yhe', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. S. V. Rao', 'svrao', '18', 'e8y3e2yWH', '2012-11-16 09:52:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Aryabartta Sahu', 'asahu', '19', 'e9yGe8yZe', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Sajith G.', 'sajith', '20', 'eJyReXybe', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. V. Vijaya Saradhi', 'saradhi', '21', 'yZenyVe9y', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Sanasam Ranbir Singh', 'ranbir', '22', 'uPa9uXahu', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Arijit Sur', 'arijit', '23', 'iitkgp12', '2013-04-15 21:45:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. T. Venkatesh', 't.venkat', '24', 'eRy4ebyre', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Prof. Krishnamachar Sreenivasan', 'sreenivasan', '25', 'Ry5e3y3Ex', '2012-04-18 17:02:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Deep Medhi', 'dmedhi', '26', 'y3egy8eZy', '2012-04-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Admin', 'thesisadmin', '27', 'admin_tendulkar', '2012-04-13 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Deepanjan Kesh', 'deepkesh', '28', 'dyveGy87V', '2012-11-09 10:32:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Saswata Shannigrahi', 'saswata.sh', '29', 'e9yTefyZ5', '2012-11-09 10:34:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Asish Mukhopadhyay', 'asishm', '30', 'k3ery8eZy', '2012-11-09 10:35:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Arnab Sarkar', 'arnabsarkar', '31', 'arnab123', '2013-04-15 08:44:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
insert into `advisor` (`advisor_name`, `advisor_id`, `id`, `pass`, `last_modified_at`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `password_hashed`, `security_question_id`, `security_question_ans`, `image`) values ('Dr. Sandipan Dandapat', 'sdandapat', '32', 'Ry5IXy3Er', '2013-04-15 08:45:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '-1', '', '');
 
drop table if exists `calendar`; 
CREATE TABLE `calendar` (
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `calendar` (`date`) values ('2011-12-15');
insert into `calendar` (`date`) values ('2011-12-28');
 
drop table if exists `categories`; 
CREATE TABLE `categories` (
  `field` varchar(40) NOT NULL,
  `prof` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `categories` (`field`, `prof`) values ('Machine Learning', 'Ashish Anand');
insert into `categories` (`field`, `prof`) values ('Computational Biology', 'Ashish Anand');
insert into `categories` (`field`, `prof`) values ('Systems Biology', 'Ashish Anand');
insert into `categories` (`field`, `prof`) values ('Evolutionary Algorithms', 'Ashish Anand');
insert into `categories` (`field`, `prof`) values ('Data Mining', 'Amit Awekar');
insert into `categories` (`field`, `prof`) values (' Formal Modeling', 'Purandar Bhaduri');
insert into `categories` (`field`, `prof`) values ('Embedded Systems', 'Purandar Bhaduri');
insert into `categories` (`field`, `prof`) values ('Human Computer Interaction', 'Samit Bhattacharya');
insert into `categories` (`field`, `prof`) values ('Rehabilitation Engineering', 'Samit Bhattacharya');
insert into `categories` (`field`, `prof`) values ('Evaluation of Interactive Systems', 'Samit Bhattacharya');
insert into `categories` (`field`, `prof`) values ('Networking', 'Santosh Biswas');
insert into `categories` (`field`, `prof`) values ('Fault Tolerance', 'Santosh Biswas');
insert into `categories` (`field`, `prof`) values ('VLSI Testing', 'Santosh Biswas');
insert into `categories` (`field`, `prof`) values ('Embedded Systems', 'Santosh Biswas');
insert into `categories` (`field`, `prof`) values ('Machine Translation', 'Sandipan Dandapat');
insert into `categories` (`field`, `prof`) values ('Natural Language Processing', 'Sandipan Dandapat');
insert into `categories` (`field`, `prof`) values ('Machine Learning', 'Sandipan Dandapat');
insert into `categories` (`field`, `prof`) values ('Digital Signal Processing', 'Pradip Kr. Das');
insert into `categories` (`field`, `prof`) values ('Speech Processing', 'Pradip Kr. Das');
insert into `categories` (`field`, `prof`) values ('Man-Machine Intelligence Systems', 'Pradip Kr. Das');
insert into `categories` (`field`, `prof`) values ('Formal Verification', 'Jatindra Kr. Deka');
insert into `categories` (`field`, `prof`) values ('VLSI Design', 'Jatindra Kr. Deka');
insert into `categories` (`field`, `prof`) values ('Distributed Systems', 'Diganta Goswami');
insert into `categories` (`field`, `prof`) values ('Software Engineering', 'Diganta Goswami');
insert into `categories` (`field`, `prof`) values ('Algorithms', 'R. Inkulu');
insert into `categories` (`field`, `prof`) values ('Word combinatorics', 'Benny George K');
insert into `categories` (`field`, `prof`) values ('algorithms and combinatorics', 'Benny George K');
insert into `categories` (`field`, `prof`) values ('Multiprocessor Computer Architecture', 'Hemangee Kalpesh Kapoor');
insert into `categories` (`field`, `prof`) values ('Formal Methods', 'Hemangee Kalpesh Kapoor');
insert into `categories` (`field`, `prof`) values ('Network-on-Chip design', 'Hemangee Kalpesh Kapoor');
insert into `categories` (`field`, `prof`) values ('Asynchronous systems', 'Hemangee Kalpesh Kapoor');
insert into `categories` (`field`, `prof`) values ('Distributed algorithms', 'Sushanta Karmakar');
insert into `categories` (`field`, `prof`) values ('Fault-tolerance', 'Sushanta Karmakar');
insert into `categories` (`field`, `prof`) values ('Ad hoc and Sensor Networks', 'Sushanta Karmakar');
insert into `categories` (`field`, `prof`) values ('Computational Commutative Algebra', 'Deepanjan Kesh');
insert into `categories` (`field`, `prof`) values ('Data Streaming', 'Deepanjan Kesh');
insert into `categories` (`field`, `prof`) values ('Computational Geometry', 'Pinaki Mitra');
insert into `categories` (`field`, `prof`) values ('Parallel Algorithms', 'Pinaki Mitra');
insert into `categories` (`field`, `prof`) values ('Optimization', 'Pinaki Mitra');
insert into `categories` (`field`, `prof`) values ('Randomized Algorithms', 'Pinaki Mitra');
insert into `categories` (`field`, `prof`) values ('Artificial Intelligence', 'Shivashankar B. Nair');
insert into `categories` (`field`, `prof`) values ('Intelligent Robotics', 'Shivashankar B. Nair');
insert into `categories` (`field`, `prof`) values ('Natural Language Processing', 'Shivashankar B. Nair');
insert into `categories` (`field`, `prof`) values ('Genetic Algorithms', 'Shivashankar B. Nair');
insert into `categories` (`field`, `prof`) values ('Fuzzy Systems & Neural Networks', 'Shivashankar B. Nair');
insert into `categories` (`field`, `prof`) values ('Artificial Immune Systems', 'Shivashankar B. Nair');
insert into `categories` (`field`, `prof`) values ('Networks (QoS, Wireless)', 'Sukumar Nandi');
insert into `categories` (`field`, `prof`) values ('Computer and Network Security', 'Sukumar Nandi');
insert into `categories` (`field`, `prof`) values ('VLSI', 'Sukumar Nandi');
insert into `categories` (`field`, `prof`) values ('Computational Geometry', 'S. V. Rao');
insert into `categories` (`field`, `prof`) values ('Computer Architecture', 'Aryabartta Sahu');
insert into `categories` (`field`, `prof`) values ('Multicore Parallel Programming', 'Aryabartta Sahu');
insert into `categories` (`field`, `prof`) values ('Embedded System', 'Aryabartta Sahu');
insert into `categories` (`field`, `prof`) values ('VLSI', 'Aryabartta Sahu');
insert into `categories` (`field`, `prof`) values ('FPGA Design', 'Aryabartta Sahu');
insert into `categories` (`field`, `prof`) values ('Parallel & Distributed Algorithms', 'Sajith G.');
insert into `categories` (`field`, `prof`) values ('External Memory Algorithms', 'Sajith G.');
insert into `categories` (`field`, `prof`) values ('Complexity Theory', 'Sajith G.');
insert into `categories` (`field`, `prof`) values ('Mobile Computing', 'Sajith G.');
insert into `categories` (`field`, `prof`) values ('Machine Learning', 'V. Vijaya Saradhi');
insert into `categories` (`field`, `prof`) values ('Kernel Methods', 'V. Vijaya Saradhi');
insert into `categories` (`field`, `prof`) values ('Data Mining', 'V. Vijaya Saradhi');
insert into `categories` (`field`, `prof`) values ('Real-Time & Embedded Systems', 'Arnab Sarkar');
insert into `categories` (`field`, `prof`) values ('Computer Architecture', 'Arnab Sarkar');
insert into `categories` (`field`, `prof`) values ('Algorithms', 'Arnab Sarkar');
insert into `categories` (`field`, `prof`) values ('Data structures & Algorithms', 'Saswata Shannigrahi');
insert into `categories` (`field`, `prof`) values ('Combinatorial Geometry', 'Saswata Shannigrahi');
insert into `categories` (`field`, `prof`) values ('Social Networks', 'Saswata Shannigrahi');
insert into `categories` (`field`, `prof`) values ('Web Search Engine', 'Sanasam Ranbir Singh');
insert into `categories` (`field`, `prof`) values ('Machine Learning', 'Sanasam Ranbir Singh');
insert into `categories` (`field`, `prof`) values ('Information Retrieval', 'Sanasam Ranbir Singh');
insert into `categories` (`field`, `prof`) values ('Web Data Mining', 'Sanasam Ranbir Singh');
insert into `categories` (`field`, `prof`) values ('Information Hiding', 'Arijit Sur');
insert into `categories` (`field`, `prof`) values ('Multimedia Security', 'Arijit Sur');
insert into `categories` (`field`, `prof`) values ('Network Security', 'Arijit Sur');
insert into `categories` (`field`, `prof`) values ('Computer Networks', 'T. Venkatesh');
insert into `categories` (`field`, `prof`) values ('Resilient Multilayer Networks', 'Deep Medhi');
insert into `categories` (`field`, `prof`) values ('Cloud/Data Center Networking', 'Deep Medhi');
insert into `categories` (`field`, `prof`) values ('Dynamic Routing', 'Deep Medhi');
insert into `categories` (`field`, `prof`) values ('Internet Routing Protocols', 'Deep Medhi');
insert into `categories` (`field`, `prof`) values ('Network Design', 'Deep Medhi');
insert into `categories` (`field`, `prof`) values ('Approximation Algorithms', 'Ashish Mukhopadhyay');
insert into `categories` (`field`, `prof`) values ('Biogeometry', 'Ashish Mukhopadhyay');
insert into `categories` (`field`, `prof`) values ('Computational Geometry', 'Ashish Mukhopadhyay');
insert into `categories` (`field`, `prof`) values ('Mobile Ad Hoc Networks', 'Sugata Sanyal');
insert into `categories` (`field`, `prof`) values ('Secure Mobile Computing', 'Sugata Sanyal');
insert into `categories` (`field`, `prof`) values ('Secure Authentication System ', 'Sugata Sanyal');
insert into `categories` (`field`, `prof`) values ('Intrusion Detection System', 'Sugata Sanyal');
insert into `categories` (`field`, `prof`) values ('Data Hiding', 'Sugata Sanyal');
insert into `categories` (`field`, `prof`) values ('Parallel Processing', 'Sugata Sanyal');
insert into `categories` (`field`, `prof`) values ('Coding Theory', 'Sugata Sanyal');
 
drop table if exists `chat`; 
CREATE TABLE `chat` (
  `message_id` int(4) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `from_id` int(3) NOT NULL,
  `to_id` int(3) NOT NULL,
  `read` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('1', 'hi', '0000-00-00 00:00:00', '50', '51', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('2', 'hello', '0000-00-00 00:00:00', '51', '50', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('3', 'yo', '0000-00-00 00:00:00', '52', '53', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('4', 'yoyo', '0000-00-00 00:00:00', '53', '52', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('5', 'kgjkvdfznb kvjn', '0000-00-00 00:00:00', '100', '101', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('6', 'oiyukjhkgbjmhnmcvname', '0000-00-00 00:00:00', '101', '100', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('7', 'sdkv,mclv, ', '0000-00-00 00:00:00', '67', '70', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('8', 'xmc vnskjfmvjsndfk', '0000-00-00 00:00:00', '70', '67', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('9', 'dxfgcdsgcv', '0000-00-00 00:00:00', '70', '71', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('10', 'vdc', '0000-00-00 00:00:00', '71', '70', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('11', 'cvxvbv', '0000-00-00 00:00:00', '67', '68', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('12', 'cxvbdsfgxcv', '0000-00-00 00:00:00', '68', '67', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('13', 'fkjdcvhsfjxvb', '0000-00-00 00:00:00', '104', '39', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('14', 'sjkdkmfhnksdj,fmh', '0000-00-00 00:00:00', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('15', 'hi', '0000-00-00 00:00:00', '104', '39', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('16', 'hello', '0000-00-00 00:00:00', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('17', 'jhgnb', '0000-00-00 00:00:00', '39', '108', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('18', 'dfv', '0000-00-00 00:00:00', '39', '108', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('19', 'hgbv', '0000-00-00 00:00:00', '39', '108', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('20', 'sdfc', '0000-00-00 00:00:00', '39', '108', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('21', 'dfgv', '0000-00-00 00:00:00', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('22', 'jyhjgnhb', '0000-00-00 00:00:00', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('23', 'sdfxgv', '0000-00-00 00:00:00', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('24', 'drfxgv', '0000-00-00 00:00:00', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('25', 'dfg', '0000-00-00 00:00:00', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('26', 'sfdcv', '0000-00-00 00:00:00', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('27', 'rsgfv', '0000-00-00 00:00:00', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('28', 'dfgv', '0000-00-00 00:00:00', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('29', 'dfcgcv', '0000-00-00 00:00:00', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('30', 'fghvcb', '0000-00-00 00:00:00', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('31', 'dtfcgv', '0000-00-00 00:00:00', '39', '0', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('32', 'asdf', '0000-00-00 00:00:00', '39', '0', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('33', 'asdf', '0000-00-00 00:00:00', '39', '0', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('34', 'dfgv', '0000-00-00 00:00:00', '39', '0', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('35', 'lkj', '0000-00-00 00:00:00', '39', '0', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('36', 'jhgnb', '0000-00-00 00:00:00', '39', '0', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('37', 'srdf', '0000-00-00 00:00:00', '39', '0', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('38', 'dxvcc', '0000-00-00 00:00:00', '39', '0', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('39', 'dsc', '0000-00-00 00:00:00', '39', '0', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('40', 'kuh', '0000-00-00 00:00:00', '39', '0', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('41', 'mhbn', '0000-00-00 00:00:00', '39', '0', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('42', 'sdfc', '0000-00-00 00:00:00', '39', '0', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('43', 'dfgv', '0000-00-00 00:00:00', '39', '0', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('44', 'xcv', '0000-00-00 00:00:00', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('45', 'dfxcv', '0000-00-00 00:00:00', '39', '36', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('46', 'sdmvn', '0000-00-00 00:00:00', '39', '47', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('47', 'dkvcm', '0000-00-00 00:00:00', '39', '47', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('48', 'hello mr.', '0000-00-00 00:00:00', '39', '4', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('49', 'yo', '0000-00-00 00:00:00', '39', '4', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('50', 'sdxfcv
dfxcv 

fxcv
dvc
dxfvc', '0000-00-00 00:00:00', '39', '4', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('51', 'dfgv
dgbvc
cgnb', '0000-00-00 00:00:00', '39', '4', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('52', 'sfxv', '0000-00-00 00:00:00', '39', '4', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('53', 'edf', '2013-11-03 13:18:29', '39', '4', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('54', 'djsgjsog', '2013-11-06 19:51:40', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('55', 'gfchgvbn', '2013-11-06 20:09:43', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('56', 'sdf', '2013-11-06 20:10:31', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('57', 'dzcvd', '2013-11-06 20:20:30', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('58', 'vccdv', '2013-11-06 20:21:20', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('59', 'sfvkm,', '2013-11-06 20:21:32', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('60', 'sfdvv', '2013-11-06 20:23:15', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('61', 'fdvc', '2013-11-06 20:23:17', '39', '104', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('62', 'rsdfc', '2013-11-11 22:20:37', '39', '39', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('63', 'I luv u
cg', '2013-11-12 19:32:23', '39', '55', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('64', 'I luv u', '2013-11-12 19:32:24', '39', '55', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('65', 'l', '2013-11-12 19:32:41', '39', '55', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('66', 'ghhbv', '2013-11-12 19:32:57', '39', '55', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('67', 'dfv', '2013-11-12 19:34:51', '39', '55', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('68', 'd', '2013-11-12 19:35:16', '39', '41', 'N');
insert into `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`, `read`) values ('69', 'kh
k', '2013-11-12 19:35:41', '39', '41', 'N');
 
drop table if exists `event_calendar`; 
CREATE TABLE `event_calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_date` date NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
insert into `event_calendar` (`id`, `event_date`, `title`, `description`) values ('1', '2013-09-17', 'test event 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec volutpat aliquet diam non tincidunt. Vivamus vitae ipsum ac justo elementum tempus.');
insert into `event_calendar` (`id`, `event_date`, `title`, `description`) values ('2', '2013-09-19', 'test event 2', 'Aenean iaculis bibendum ullamcorper. In vulputate velit eu leo aliquet eu auctor magna vestibulum.');
insert into `event_calendar` (`id`, `event_date`, `title`, `description`) values ('3', '2013-11-07', 'do it', 'hackathon');
insert into `event_calendar` (`id`, `event_date`, `title`, `description`) values ('4', '2013-11-09', 'again', 'microsoft');
 
drop table if exists `list`; 
CREATE TABLE `list` (
  `ref_id` int(3) NOT NULL AUTO_INCREMENT,
  `role` varchar(20) NOT NULL,
  `user_id` varchar(40) NOT NULL,
  `user_nm` varchar(40) NOT NULL,
  PRIMARY KEY (`ref_id`),
  KEY `user_id` (`ref_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('1', 'adm', 'shirshendu', 'Shirshendu Das');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('2', 'adm', 'thesisadmin', 'Main Admin User');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('4', 'fac', 'anand.ashish', 'Dr. Ashish Anand');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('5', 'fac', 'awekar', 'Dr. Amit Awekar');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('6', 'fac', 'gb', 'Prof. Gautam Barua');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('7', 'fac', 'pbhaduri', 'Dr. Purandar Bhaduri');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('8', 'fac', 'samit', 'Dr. Samit Bhattacharya');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('9', 'fac', 'santosh_biswas', 'Dr. Santosh Biswas');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('10', 'fac', 'pkdas', 'Dr. Pradip Kr. Das');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('11', 'fac', 'jatin', 'Dr. Jatindra Kr. Deka');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('12', 'fac', 'dgoswami', 'Dr. Diganta Goswami');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('13', 'fac', 'rinkulu', 'Dr. R. Inkulu');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('14', 'fac', 'ben', 'Dr. Benny George K');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('15', 'fac', 'hemangee', 'Dr. Hemangee Kalpesh Kapoor');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('16', 'fac', 'sushantak', 'Dr. Sushanta Karmakar');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('17', 'fac', 'pinaki', 'Dr. Pinaki Mitra');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('18', 'fac', 'sbnair', 'Dr. S. B. Nair');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('19', 'fac', 'sukumar', 'Prof. Sukumar Nandi');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('20', 'fac', 'svrao', 'Dr. S. V. Rao');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('21', 'fac', 'asahu', 'Dr. Aryabartta Sahu');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('22', 'fac', 'sajith', 'Dr. Sajith G.');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('23', 'fac', 'saradhi', 'Dr. V. Vijaya Saradhi');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('24', 'fac', 'ranbir', 'Dr. Sanasam Ranbir Singh');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('25', 'fac', 'arijit', 'Dr. Arijit Sur');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('26', 'fac', 't.venkat', 'Dr. T. Venkatesh');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('27', 'fac', 'sreenivasan', 'Prof. Krishnamachar Sreenivasan');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('28', 'fac', 'dmedhi', 'Dr. Deep Medhi');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('29', 'fac', 'thesisadmin', 'Admin');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('30', 'fac', 'deepkesh', 'Dr. Deepanjan Kesh');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('31', 'fac', 'saswata.sh', 'Dr. Saswata Shannigrahi');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('32', 'fac', 'asishm', 'Dr. Asish Mukhopadhyay');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('33', 'fac', 'arnabsarkar', 'Dr. Arnab Sarkar');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('34', 'fac', 'sdandapat', 'Dr. Sandipan Dandapat');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('35', 'std', 'shashi', 'SHASHI KANT KUNAL1');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('36', 'std', 'n.dang', 'NAPOLEAN DANG');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('37', 'std', 'n.kurakula', 'KURAKULA VENKATA NARENDRA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('38', 'std', 'y.singh', 'YAMBEM PUSKIN SINGH');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('39', 'std', 'mayank.agl', 'Mayank Agarwal');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('40', 'std', 'a.jeph', 'ANUBHAV JEPH');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('41', 'std', 'c.prakash', 'CHETAN PRAKASH');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('42', 'std', 'n.abhinandan', 'ABHINANDAN NATH');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('43', 'std', 'a.sonker', 'ABHINAV SONKER');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('44', 'std', 'aditya.k', 'ADITYA KUMAR');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('45', 'std', 'r.akash', 'AKASH DEEP RAWAT');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('46', 'std', 'akash.g', 'AKASH GUPTA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('47', 'std', 'a.madrosiya', 'AKSHAY MADROSIYA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('48', 'std', 'anchal', 'ANCHAL CHOUBEY');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('49', 'std', 'ankit.j', 'ANKIT JAISWAL');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('50', 'std', 'k.ankit', 'ANKIT KUMAR');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('51', 'std', 'a.anshu', 'ANURAG ANSHU');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('52', 'std', 'k.apoorv', 'APOORV KUMAR');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('53', 'std', 'apul', 'APUL JAIN');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('54', 'std', 'a.syal', 'AYUSH SYAL');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('55', 'std', 'ayushi', 'AYUSHI MATHUR');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('56', 'std', 'd.negi', 'DEEPAK SINGH NEGI');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('57', 'std', 'g.rathi', 'GAURAV RATHI');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('58', 'std', 'k.gunjan', 'GUNJAN KUMAR');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('59', 'std', 'jasvindar', 'JASVINDAR SINGH SINGARIYA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('60', 'std', 'b.juhi', 'JUHI BAGRODIA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('61', 'std', 'k.teja', 'K TEJA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('62', 'std', 'kartikey', 'KARTIKEY GUPTA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('63', 'std', 'k.kuldeep', 'KULDEEP');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('64', 'std', 'k.sudhir', 'KULKARNI ANAND SUDHIR');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('65', 'std', 'n.prashanth', 'N ESWARA PRASHANTH');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('66', 'std', 'n.teja', 'N. VISHNU TEJA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('67', 'std', 's.naga', 'NAGA ROHIT S');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('68', 'std', 'nagendra', 'NAGENDRA RAM');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('69', 'std', 'm.narendra', 'NARENDRA KUMAR MEENA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('70', 'std', 'n.mehra', 'NARESH MEHRA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('71', 'std', 'a.parag', 'PARAG AGRAWAL');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('72', 'std', 'pasunuri', 'PASUNURI RAHUL');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('73', 'std', 'pooja', 'POOJA DUBEY');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('74', 'std', 'pragya', 'PRAGYA PARUL');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('75', 'std', 'c.pravin', 'PRAVIN KUMAR CHATURVEDI');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('76', 'std', 'purwar', 'PURWAR SANKETH KISHAN');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('77', 'std', 'rahul.br', 'RAHUL BHATNAGAR');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('78', 'std', 'k.rajat', 'RAJAT KHANDUJA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('79', 'std', 's.rajkumar', 'RAJKUMAR SINGH');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('80', 'std', 'r.anurag', 'RAMAN ANURAG');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('81', 'std', 'r.sethia', 'RAVI SETHIA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('82', 'std', 'r.barua', 'RISHI BARUA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('83', 'std', 'r.borah', 'RISHI RAJ BORAH');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('84', 'std', 'rohit.raj', 'ROHIT RAJ');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('85', 'std', 'rovin', 'ROVIN BHANDARI');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('86', 'std', 'saurabh.s', 'SAURABH SAXENA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('87', 'std', 's.singla', 'SAURABH SINGLA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('88', 'std', 'shah', 'SHAH AKHILESH KAILASHCHANDRA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('89', 'std', 't.shubham', 'SHUBHAM TRIPATHI');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('90', 'std', 'shyam.ss', 'SHYAM SUNDER SINGH');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('91', 'std', 'snehlata', 'SNEHLATA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('92', 'std', 'srikakulapu', 'SRIKAKULAPU SATYA VARA PRASAD');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('93', 'std', 'suhail', 'SUHAIL SHERIF');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('94', 'std', 's.sumeet', 'SUMEET KUMAR SINGH');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('95', 'std', 'sunil.k', 'SUNIL KUMAR');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('96', 'std', 's.ratnu', 'SUNIL RATNU');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('97', 'std', 'tejinder', 'TEJINDER SINGH');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('98', 'std', 'vibhuti', 'VIBHUTI KUMAR');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('99', 'std', 'k.virendra', 'VIRENDRA KUMAR');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('100', 'std', 'vulli', 'VULLI KRISHNA CHAITANYA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('101', 'std', 'anik', 'ANIK CHATTOPADHYAY');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('102', 'std', 'g.pranav', 'PRANAV GUPTA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('103', 'std', 's.pardeshi', 'SIDHARTH CHANDRASHEKHAR PARDESHI');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('104', 'std', 'karri', 'KARRI SWATHI');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('105', 'std', 'b.khatri', 'BHARAT KHATRI');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('106', 'std', 'a.parolia', 'AYUSH PAROLIA');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('107', 'std', 'gundlapalli', 'GUNDLAPALLI SRINIVAS');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('108', 'std', 'v.goyal', 'VIKRAM KUMAR GOYAL');
insert into `list` (`ref_id`, `role`, `user_id`, `user_nm`) values ('109', 'std', 'behara', 'BEHARA MANI SHYAM PATRO');
 
drop table if exists `notice`; 
CREATE TABLE `notice` (
  `datetime` datetime NOT NULL,
  `priority` tinyint(1) NOT NULL DEFAULT '0',
  `posted_by` varchar(40) NOT NULL,
  `post_to` varchar(3) NOT NULL,
  `body` text NOT NULL,
  `id` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
insert into `notice` (`datetime`, `priority`, `posted_by`, `post_to`, `body`, `id`) values ('2013-11-06 18:54:44', '0', 'gb', 'std', 'jmnbkjm', '1');
insert into `notice` (`datetime`, `priority`, `posted_by`, `post_to`, `body`, `id`) values ('0000-00-00 00:00:00', '5', 'anand.ashish', 'all', 'jkmhnc', '2');
insert into `notice` (`datetime`, `priority`, `posted_by`, `post_to`, `body`, `id`) values ('2013-11-13 04:18:42', '2', 'anand.ashish', 'std', 'sdfsdfc', '3');
insert into `notice` (`datetime`, `priority`, `posted_by`, `post_to`, `body`, `id`) values ('0000-00-00 00:00:00', '3', 'santosh_biswas', 'std', 'sdfc', '4');
insert into `notice` (`datetime`, `priority`, `posted_by`, `post_to`, `body`, `id`) values ('0000-00-00 00:00:00', '2', 'santosh_biswas', 'all', 'srefdkjch', '5');
insert into `notice` (`datetime`, `priority`, `posted_by`, `post_to`, `body`, `id`) values ('2013-11-14 19:46:28', '0', 'Edsf', 'std', 'sdfc', '6');
insert into `notice` (`datetime`, `priority`, `posted_by`, `post_to`, `body`, `id`) values ('2013-11-14 19:47:12', '0', 'Mayank Agarwal', 'all', 'kunal', '7');
 
drop table if exists `permission_log`; 
CREATE TABLE `permission_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advisor_id` varchar(50) NOT NULL,
  `permitted_to` varchar(50) NOT NULL,
  `permitted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `advisor_id` (`advisor_id`),
  KEY `permitted_to` (`permitted_to`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=latin1;
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('203', 'saradhi', 'aditya.k', '2013-04-14 18:49:59');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('204', 'saradhi', 'a.parag', '2013-04-14 18:50:02');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('205', 'saradhi', 'r.barua', '2013-04-14 18:50:03');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('206', 'saradhi', 'k.virendra', '2013-04-14 18:50:04');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('207', 'sbnair', 'akash.g', '2013-04-15 10:40:59');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('208', 'sbnair', 'behara', '2013-04-15 10:41:02');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('209', 'hemangee', 'k.apoorv', '2013-04-15 12:01:52');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('210', 'hemangee', 'm.narendra', '2013-04-15 12:01:54');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('211', 'hemangee', 'vibhuti', '2013-04-15 12:01:55');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('212', 'awekar', 's.sumeet', '2013-04-15 17:42:10');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('213', 'awekar', 'snehlata', '2013-04-15 17:42:24');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('214', 'awekar', 'n.teja', '2013-04-15 17:42:26');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('215', 'arijit', 'karri', '2013-04-15 21:44:29');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('216', 'pinaki', 'y.singh', '2013-04-16 09:21:13');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('217', 'pinaki', 'a.sonker', '2013-04-16 09:21:20');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('218', 'pinaki', 'ayushi', '2013-04-16 09:21:21');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('219', 'pinaki', 's.ratnu', '2013-04-16 09:21:24');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('220', 'svrao', 'rovin', '2013-04-16 10:13:31');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('221', 'svrao', 's.pardeshi', '2013-04-16 10:13:38');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('222', 'svrao', 'gundlapalli', '2013-04-16 10:13:40');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('223', 'asahu', 'c.prakash', '2013-04-16 12:26:48');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('224', 'asahu', 'k.kuldeep', '2013-04-16 12:26:51');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('225', 'asahu', 'sunil.k', '2013-04-16 12:26:55');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('226', 'samit', 'a.madrosiya', '2013-04-16 16:21:34');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('227', 'samit', 'ankit.j', '2013-04-16 16:21:41');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('228', 'samit', 'k.sudhir', '2013-04-16 16:21:43');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('229', 'samit', 'r.sethia', '2013-04-16 16:21:44');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('230', 'thesisadmin', 's.sumeet', '2013-04-17 10:45:06');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('231', 'thesisadmin', 's.sumeet', '2013-04-17 18:32:56');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('232', 'thesisadmin', 's.sumeet', '2013-04-17 18:35:59');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('233', 'saswata.sh', 'a.anshu', '2013-04-18 15:09:00');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('234', 'saswata.sh', 'k.gunjan', '2013-04-18 15:09:01');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('235', 'pkdas', 'v.goyal', '2013-04-19 06:39:30');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('236', 'pkdas', 'tejinder', '2013-04-19 06:40:26');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('237', 'pkdas', 'pasunuri', '2013-04-19 06:40:27');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('238', 'pkdas', 'nagendra', '2013-04-19 06:40:28');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('239', 'pkdas', 'n.dang', '2013-04-19 06:40:29');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('240', 'anand.ashish', 'k.rajat', '2013-04-19 09:51:53');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('241', 'anand.ashish', 't.shubham', '2013-04-19 09:51:56');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('242', 'gb', 'shah', '2013-04-19 10:34:01');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('243', 'gb', 's.singla', '2013-04-19 10:34:03');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('244', 'gb', 'pooja', '2013-04-19 10:34:06');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('245', 'arijit', 'a.syal', '2013-04-19 14:14:17');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('246', 't.venkat', 'b.juhi', '2013-04-19 14:41:55');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('247', 'saradhi', 'r.barua', '2013-04-19 15:25:14');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('248', 'sajith', 'n.abhinandan', '2013-04-19 15:32:46');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('249', 'sajith', 's.rajkumar', '2013-04-19 15:32:54');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('250', 'sajith', 'n.prashanth', '2013-04-19 15:32:55');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('251', 'santosh_biswas', 'purwar', '2013-04-19 16:02:31');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('252', 'santosh_biswas', 'c.pravin', '2013-04-19 16:02:33');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('253', 'santosh_biswas', 'rohit.raj', '2013-04-19 16:02:34');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('254', 'arijit', 'r.borah', '2013-04-19 16:30:14');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('255', 'pbhaduri', 'anik', '2013-04-19 16:48:02');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('256', 'pbhaduri', 'saurabh.s', '2013-04-19 16:48:04');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('257', 'ranbir', 'n.mehra', '2013-04-19 16:49:47');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('258', 'ranbir', 'r.anurag', '2013-04-19 16:49:51');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('259', 'ranbir', 'k.ankit', '2013-04-19 16:49:54');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('260', 'gb', 'pooja', '2013-04-19 17:11:15');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('261', 'dgoswami', 'r.akash', '2013-04-19 17:16:46');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('262', 'dgoswami', 'pragya', '2013-04-19 17:16:48');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('263', 'dgoswami', 'rahul.br', '2013-04-19 17:16:49');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('264', 'anand.ashish', 'g.pranav', '2013-04-19 17:18:47');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('265', 'sukumar', 'anchal', '2013-04-19 18:24:58');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('266', 'sukumar', 'apul', '2013-04-19 18:24:59');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('267', 'sukumar', 's.naga', '2013-04-19 18:25:00');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('268', 'asahu', 'k.kuldeep', '2013-04-19 18:34:58');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('269', 'thesisadmin', 'a.parolia', '2013-04-20 20:40:10');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('270', 'thesisadmin', 'b.khatri', '2013-04-21 17:03:38');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('271', 'thesisadmin', 'shashi', '2013-10-01 15:50:43');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('272', 'santosh_biswas', 'c.pravin', '2013-10-01 15:52:45');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('273', 'santosh_biswas', 'mayank.agl', '2013-10-01 15:58:13');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('274', 'thesisadmin', 'a.jeph', '2013-10-09 12:48:22');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('275', 'thesisadmin', 'n.kurakula', '2013-10-09 13:11:59');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('276', 'thesisadmin', 'c.prakash', '2013-10-09 14:03:02');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('277', 'thesisadmin', 'n.abhinandan', '2013-10-09 16:01:24');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('278', 'thesisadmin', 'a.sonker', '2013-10-09 16:01:25');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('279', 'thesisadmin', 'k.sudhir', '2013-10-09 16:57:14');
insert into `permission_log` (`id`, `advisor_id`, `permitted_to`, `permitted_at`) values ('280', 'arijit', 'a.syal', '2013-10-09 19:02:13');
 
drop table if exists `phpmysqlautobackup`; 
CREATE TABLE `phpmysqlautobackup` (
  `id` int(11) NOT NULL,
  `version` varchar(6) DEFAULT NULL,
  `time_last_run` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `phpmysqlautobackup` (`id`, `version`, `time_last_run`) values ('1', '1.6.3', '1385751379');
 
drop table if exists `phpmysqlautobackup_log`; 
CREATE TABLE `phpmysqlautobackup_log` (
  `date` int(11) NOT NULL,
  `bytes` int(11) NOT NULL,
  `lines` int(11) NOT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `phpmysqlautobackup_log` (`date`, `bytes`, `lines`) values ('1383676263', '148372', '472');
insert into `phpmysqlautobackup_log` (`date`, `bytes`, `lines`) values ('1383676632', '148372', '472');
insert into `phpmysqlautobackup_log` (`date`, `bytes`, `lines`) values ('1383676639', '148372', '472');
insert into `phpmysqlautobackup_log` (`date`, `bytes`, `lines`) values ('1383676692', '148372', '472');
insert into `phpmysqlautobackup_log` (`date`, `bytes`, `lines`) values ('1383749670', '161192', '581');
insert into `phpmysqlautobackup_log` (`date`, `bytes`, `lines`) values ('1384191470', '174148', '591');
 
drop table if exists `project_log`; 
CREATE TABLE `project_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_nm` varchar(200) NOT NULL,
  `title_thesis` varchar(400) NOT NULL,
  `uploaded_file_name` varchar(200) NOT NULL,
  `submitted_at` datetime NOT NULL,
  `submitted_by` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=latin1;
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('153', 's.sumeet', 'Test file Uploaded by Admin (shirshednu)', 'combinatorial.pdf', '2013-04-17 10:44:28', 'SUMEET KUMAR SINGH[s.sumeet]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('154', 's.sumeet', 'Incremental Shared Nearest Neighbor Density Based Clustering', '09010153-BTP-Report.pdf', '2013-04-17 12:31:09', 'SUMEET KUMAR SINGH[s.sumeet]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('155', 's.sumeet', 'Test upload', '09010153-BTP-Report.pdf', '2013-04-17 18:35:24', 'SUMEET KUMAR SINGH[s.sumeet]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('156', 's.sumeet', 'Incremental Shared Nearest Neighbor Density Based Clustering', '09010153-BTP-Report.pdf', '2013-04-18 10:54:27', 'SUMEET KUMAR SINGH[s.sumeet]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('157', 'm.narendra', 'Multicast Routing In 3D Networks On Chip', 'BtpReportFinal.pdf', '2013-04-18 15:25:47', 'NARENDRA KUMAR MEENA[m.narendra]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('158', 'vibhuti', 'Web Service Car Broker System', 'FINAL_BTP_09010157.pdf', '2013-04-19 03:00:18', 'VIBHUTI KUMAR[vibhuti]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('159', 'c.prakash', 'Deadlock Free Routing for 2D mesh topology', '08010113-btp-phase2-report.pdf', '2013-04-19 13:09:14', 'CHETAN PRAKASH[c.prakash]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('160', 't.shubham', 'A novel random walk based method for associating genes with diseases', '09010148.pdf', '2013-04-19 14:11:29', 'SHUBHAM TRIPATHI[t.shubham]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('161', 'r.barua', 'Knowledge Discovery in Cricket using Relational Data', 'thesis.pdf', '2013-04-19 14:21:12', 'RISHI BARUA[r.barua]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('162', 'a.parag', 'Learning from Cricket Text Commentary', '9010130-BTP2.pdf', '2013-04-19 14:40:44', 'PARAG AGRAWAL[a.parag]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('163', 'karri', 'Steganographic Algorithm Based on Randomization of DCT Kernel', 'final_thesis.pdf', '2013-04-19 14:48:11', 'KARRI SWATHI[karri]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('164', 'b.juhi', 'Issues with TCP in Data Center Networks', 'btpthesis.pdf', '2013-04-19 15:11:53', 'JUHI BAGRODIA[b.juhi]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('165', 'ayushi', 'Data Mining In Multi Database System', '9010114.pdf', '2013-04-19 15:14:27', 'AYUSHI MATHUR[ayushi]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('166', 'sunil.k', 'Scheduling Multiphase Applications on Heterogenous Multiprocessors', 'thesis.pdf', '2013-04-19 15:15:02', 'SUNIL KUMAR[sunil.k]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('167', 'v.goyal', 'Automatic Speaker Recognition', 'VikramGoyal_BTPReport_2.pdf', '2013-04-19 15:21:54', 'VIKRAM KUMAR GOYAL[v.goyal]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('168', 'r.barua', 'Knowledge Discovery in Cricket using Relational Learning Methods', 'thesis.pdf', '2013-04-19 15:27:55', 'RISHI BARUA[r.barua]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('169', 'n.abhinandan', 'I/O Efficient Algorithms for Computing Minimum Spanning Trees(MST)', 'BTP_09010101.pdf', '2013-04-19 15:44:10', 'ABHINANDAN NATH[n.abhinandan]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('170', 'n.prashanth', 'REDUCTION OF NON-SYMMETRIC MATRIX TO BANDED HESSENBERG FORM(TILE APPROACH)', '09010124.pdf', '2013-04-19 15:52:55', 'N ESWARA PRASHANTH[n.prashanth]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('171', 'n.teja', 'Incremental Clustering for the ROCK-Robust Clustering Algorithm for Categorical Attributes', '09010125.pdf', '2013-04-19 15:54:19', 'N. VISHNU TEJA[n.teja]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('172', 'a.sonker', 'Experimental Performance analysis of ARQs', 'BTP FINAL.pdf', '2013-04-19 15:54:37', 'ABHINAV SONKER[a.sonker]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('173', 'snehlata', 'Incremental Association Rule Mining from Dynamic Database', 'Snehlata_BTP.pdf', '2013-04-19 16:11:53', 'SNEHLATA[snehlata]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('174', 'k.kuldeep', 'QoS based Task Scheduling on Large Scale Chip Multiprocessor', '09010122.pdf', '2013-04-19 16:13:04', 'KULDEEP[k.kuldeep]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('175', 'k.rajat', 'Improving Bioevent extraction with the help of Coreference Resolution', 'thesis.pdf', '2013-04-19 16:14:04', 'RAJAT KHANDUJA[k.rajat]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('176', 's.rajkumar', 'I/O Efficient QR-Decomposition', 'thesis.pdf', '2013-04-19 16:25:39', 'RAJKUMAR SINGH[s.rajkumar]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('177', 'pooja', 'Virtual Memory Algorithms For Systems with Flash as Their Secondary Storage', 'btpreport _09010132.pdf', '2013-04-19 16:29:26', 'POOJA DUBEY[pooja]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('178', 'a.anshu', 'Crossings and Intersections in Hypergraphs', '09010110.pdf', '2013-04-19 17:00:02', 'ANURAG ANSHU[a.anshu]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('179', 'r.anurag', 'Study of Implicit Rating using Latent Space', 'RamanAnurag09010139BTPThesis.pdf', '2013-04-19 17:04:07', 'RAMAN ANURAG[r.anurag]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('180', 's.singla', 'Academic Section Automation', 'Thesis_09010146.pdf', '2013-04-19 17:10:17', 'SAURABH SINGLA[s.singla]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('181', 'a.madrosiya', 'Aesthetics of Web Pages', 'Report.pdf', '2013-04-19 17:21:53', 'AKSHAY MADROSIYA[a.madrosiya]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('182', 'r.akash', 'A critical study of Frama-C Program Slicing Tool\'s PDG and Slicing Plugin', 'AkashBtp.pdf', '2013-04-19 17:24:18', 'AKASH DEEP RAWAT[r.akash]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('183', 'pragya', 'A Comparison of Search Methods for unstructured Peer-to-Peer Systems', 'report.pdf', '2013-04-19 17:24:24', 'PRAGYA PARUL[pragya]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('184', 'purwar', 'Application of Discrete Event Systems for Detection Of Network Attacks', '09010135.pdf', '2013-04-19 17:26:22', 'PURWAR SANKETH KISHAN[purwar]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('185', 'ankit.j', 'Creating 3-D Map of Buildings\' Interior', '09010108.pdf', '2013-04-19 17:26:58', 'ANKIT JAISWAL[ankit.j]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('186', 'g.pranav', 'Multi Label Classification', 'btp_report-sem8.pdf', '2013-04-19 17:29:26', 'PRANAV GUPTA[g.pranav]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('187', 'n.mehra', 'Learning to Rank: Comparative study of Pairwise and Listwise algorithms', 'my_final_thesis.pdf', '2013-04-19 17:29:55', 'NARESH MEHRA[n.mehra]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('188', 'nagendra', 'Support Vector Machine Algorithm', '09010127.pdf', '2013-04-19 17:31:11', 'NAGENDRA RAM[nagendra]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('189', 'r.borah', 'ROI Based Reversible watermarking Scheme', '09010142.pdf', '2013-04-19 17:31:35', 'RISHI RAJ BORAH[r.borah]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('190', 'pasunuri', 'Performance Analysis of Alternate Boosting Algorithms for Viola-Jones Object Detection', 'thesis.pdf', '2013-04-19 17:31:36', 'PASUNURI RAHUL[pasunuri]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('191', 'akash.g', 'Emotional Control Over Situated Robots', 'BTP Report Akash Gupta(09010105).pdf', '2013-04-19 17:32:40', 'AKASH GUPTA[akash.g]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('192', 's.pardeshi', 'Linear layouts of weakly triangulated graphs', '04358260.pdf', '2013-04-19 17:35:39', 'SIDHARTH CHANDRASHEKHAR PARDESHI[s.pardeshi]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('193', 'r.sethia', 'Virtual AdSpace', 'thesis.pdf', '2013-04-19 17:35:50', 'RAVI SETHIA[r.sethia]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('194', 'k.sudhir', 'Virtual AdSpace', 'thesis.pdf', '2013-04-19 17:36:37', 'KULKARNI ANAND SUDHIR[k.sudhir]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('195', 'gundlapalli', 'Linear layouts of weakly triangulated graphs', 'to-do.pdf', '2013-04-19 17:40:06', 'GUNDLAPALLI SRINIVAS[gundlapalli]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('196', 'k.apoorv', 'Wireless Network on Chips', 'thesis.pdf', '2013-04-19 17:45:52', 'APOORV KUMAR[k.apoorv]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('197', 'rovin', 'Constructing Orthogonal Convex Hull in the External Memory Model ', 'Thesis.pdf', '2013-04-19 17:45:56', 'ROVIN BHANDARI[rovin]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('198', 'anik', 'Automated Interface Generation', 'thesis.pdf', '2013-04-19 17:52:52', 'ANIK CHATTOPADHYAY[anik]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('199', 'rohit.raj', 'Incorporating Fault Tolerance in LEACH   Protocol of Wireless Sensor Networks and Implementation in NS2    ', '09010143.pdf', '2013-04-19 18:06:31', 'ROHIT RAJ[rohit.raj]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('200', 'c.pravin', 'Incorporating Fault Tolerance in LEACH  Protocol of Wireless Sensor Networks and Implementation  in NS2', '09010134.pdf', '2013-04-19 18:06:40', 'PRAVIN KUMAR CHATURVEDI[c.pravin]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('201', 'shah', 'Automation of Medical Section of IIT Guwahati', 'BTP_09010147.PDF', '2013-04-19 18:15:11', 'SHAH AKHILESH KAILASHCHANDRA[shah]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('202', 'k.ankit', 'A weighted sum Ensemble approach for Ranking algorithms', 'thesis.pdf', '2013-04-19 18:19:50', 'ANKIT KUMAR[k.ankit]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('203', 'k.gunjan', 'Energy Efficient algorithm', 'thesis.pdf', '2013-04-19 18:24:37', 'GUNJAN KUMAR[k.gunjan]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('204', 'anchal', 'Load Balancing based Horizontal Handover in IEEE 802.11 Networks', 'thesis.pdf', '2013-04-19 18:34:00', 'ANCHAL CHOUBEY[anchal]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('205', 'aditya.k', 'Subgraph Mining and its application in Network Traffic Identification', 'thesis.pdf', '2013-04-19 19:15:11', 'ADITYA KUMAR[aditya.k]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('206', 'a.syal', 'Scalable Watermarking for Spatial Adaptations', '09010113.pdf', '2013-04-19 19:36:37', 'AYUSH SYAL[a.syal]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('207', 'a.parolia', 'MARS - A Mobile Agent platform for Robotic Systems', 'parolia.pdf', '2013-04-20 20:41:45', 'AYUSH PAROLIA[a.parolia]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('208', 'apul', 'QoS in Multi-Channel Multi-Interface Wireless Mesh Networks', 'apul.pdf', '2013-04-20 20:43:10', 'APUL JAIN[apul]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('209', 'behara', 'Implementation of FIPA Specications in Typhon', '09010168-Shyam Patro.pdf', '2013-04-20 20:44:32', 'BEHARA MANI SHYAM PATRO[behara]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('210', 'rahul.br', 'Distributed Lock Managers: Implementing and analyzing scalable Services that provide locking primitives distributed applications', 'Rahul_Bhatnagar_09010136.pdf', '2013-04-21 16:50:17', 'RAHUL BHATNAGAR[rahul.br]');
insert into `project_log` (`id`, `user_nm`, `title_thesis`, `uploaded_file_name`, `submitted_at`, `submitted_by`) values ('211', 'b.khatri', 'Unsupervised Entailment Detection between Dependency Graph Fragments', 'BTP_khatri.pdf', '2013-04-21 17:09:45', 'BHARAT KHATRI[b.khatri]');
 
drop table if exists `projects`; 
CREATE TABLE `projects` (
  `user_nm` varchar(200) NOT NULL,
  `thesis_title` varchar(400) NOT NULL,
  `report_file_name` varchar(50) NOT NULL,
  `abstract` text NOT NULL,
  `submitted_at` datetime NOT NULL,
  `submitted_by` varchar(400) NOT NULL,
  PRIMARY KEY (`user_nm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('a.anshu', 'Crossings and Intersections in Hypergraphs', '09010110.pdf', 'We address the problem of computing the number of intersecting hyperedges in a complete
hypergraph embedded in an n- dimensional manifold. The problem has made considerable
progress in 2 and 3 dimensions. We attempt to build upon them by obtaining a lower bound on number of crossing pairs of hyperedges in a
general dimension and employing numerical techniques in 4 dimensions to obtain estimates
on lower bounds and upper bounds. We obtain a relation between the number of crossing
pairs and number of convex tuples, which may be useful in obtaining tight upper bounds on
these quantities. Ham-sandwich theorem serves as an important tool in our analysis, as it
transforms the difficult geometric problem into a combinatorial one.
', '2013-04-19 16:59:17', 'ANURAG ANSHU[a.anshu]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('a.madrosiya', 'Aesthetics of Web Pages', 'Report.pdf', '              Attempts have been made to develop mechanisms which determine the aesthetic quality of web pages but most of them have considered only the geometric placement of the various components of the page. Text, along with being the most basic component of web pages is also the most abundant. This work attempts two different approaches for aesthetic modelling: first being the analytical method and second a machine learning approach, the co-training algorithm. Performances of these approaches are studied and compares with each other. Feature sets consist of factors derived from CSS and typography point of view. Both the approaches acquire their required data from multiple stage user studies conducted across various participants.                              ', '2013-04-19 17:21:08', 'AKSHAY MADROSIYA[a.madrosiya]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('a.parag', 'Learning from Cricket Text Commentary', '9010130-BTP2.pdf', 'In this work we study the applicability of Correspondence Analysis to the ESPN cricket text commentary to capture the patterns seen in the game of cricket. By analyzing these patterns we identify the vulnerabilities of individual players (or a team) as they would affect the outcome of a match. Hence it can be used to improve the performance of a player (or a team). To the best of our knowledge mining of cricket text commentary data to analyze and understand strength/weakness of a player has not been carried out in the literature. We attempt to do so in this work.

We propose a novel 3D cubical representation of the cricket commentary data for correspondence analysis. Each dimension in the 3D stands for batting features, bowling features and time (i.e. number of overs, breaks in the game, one full day, one innings etc.). Every pair of dimensions are sampled and contingency tables are formulated to analyze the weakness/strength of a player.

Bi-plots obtained through CA are simple to interpret. This approach can be applied to any player of any sport. In this work, we consider the following Indian cricket players,
Bowlers:
Zaheer Khan
Harbhajan Singh 

Batsmen:
M. S. Dhoni
Virendra Sehwag
for test cricket matches only. Further, we provide inferences for the whole Indian Team also. Our findings over past 5 years of test cricket played by the above players are coherently explained.

We validate the obtained results through (i) critics\' comments available in the commentary and (ii) through a survey conducted on the Indian Institute of Technology	Guwahati cricket team players.

Keywords: Correspondence Analysis (CA), Cricket Commentary, Text Commentary, Sports Data, Text Mining, Interrelationships and Patterns.', '2013-04-19 14:39:59', 'PARAG AGRAWAL[a.parag]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('a.parolia', 'MARS - A Mobile Agent platform for Robotic Systems', 'parolia.pdf', '    A mobile agent is a process that can transport its state from one environment to another,
with its data intact. Mobile agents perform a users task by migrating and executing on
several hosts connected to the network. An agent platform is a technical structural design
providing the environment in which agents can actively exist and operate to achieve their
goals. Mobile agents provide the functionality of distributed computing paradigms and en-
ables a natural design philosophy for distributed computing systems. This provides robot
system developers with variety of options for initial development and future extension of
their systems, and an intuitive and robust design environment. Our goal is to design and
implement a software framework for multi-agent systems providing a common language and
a structured way that deals with the complexity of a robotic system.                                        ', '2013-04-20 20:40:59', 'AYUSH PAROLIA[a.parolia]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('a.sonker', 'Experimental Performance analysis of ARQs', 'BTP FINAL.pdf', '                                            The problem of errors in data communication and networks field is a growing concern. The
transmission errors caused by channel noise and channel bandwidth prevent the delivery of correct
data to the end user.
To solve this problem, a method of error correcting and error detecting codes is used. There are two
basic mechanisms to implement these methods: ARQ Schemes and forward error correction (FEC)
schemes. These schemes are used in different scenarios and in some situations even a hybrid
approach of these two are used.

Performance analysis and their pros and cons analysed
', '2013-04-19 15:53:52', 'ABHINAV SONKER[a.sonker]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('a.syal', 'Scalable Watermarking for Spatial Adaptations', '09010113.pdf', '     
With the development of the internet, digital media has got tremendous acceleration. One
can easily find and download large number of images and videos from internet. However,
these advancements demand copyright and content authorization to prevent media piracy and media tampering. Digital
watermarking has been used for copy control and media identification.

A scalable encoder encodes a video to its highest quality and the bitstream is adapted
according to the requirement of various communication channels and user-end display de-
vices. The content adaptation is done by scaling the resolution quality and frame rate
of the video. These content adaptations can corrupt content protection data. Content
adaptation can be considered as potential attack to the watermark .

In this report a new watermarking scheme is proposed which is robust to geometric distortions and can be used for securing watermark during content adaptation. We make use of scale-invariant feature transform(SIFT) for our watermarking scheme. We study the various pre-existing watermarking
methods that use SIFT. A new watermarking scheme is then proposed which is shown to be more robust than the existing schemes.                                       ', '2013-04-19 19:35:52', 'AYUSH SYAL[a.syal]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('aditya.k', 'Subgraph Mining and its application in Network Traffic Identification', 'thesis.pdf', '        The study of graph mining, and specically frequent subgraph mining, has generated con-
siderable interest due to its potential uses in numerous areas. Since most large-scale data
in elds like biology, networks, chemistry and many others can be modelled as a graph,
graph mining can be used to extract required information from large data. The problem is
challenging because there is an exponential number of possible subgraphs. Thus research on
new algorithms which can optimally nd frequent subgraphs is constantly ongoing. One of
the areas in which subgraph analysis can be used is network trac identication.                                    ', '2013-04-19 19:14:25', 'ADITYA KUMAR[aditya.k]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('akash.g', 'Emotional Control Over Situated Robots', 'BTP Report Akash Gupta(09010105).pdf', 'Many researchers have worked on to use artificial  human emotions on autonomous
agents. These emotions helps agents to improve their abilities and perform better in an
environment. They let agents to have good quality of life and perform more of high profile
tasks throughout its life. In this project, the experiment is conducted on a situated robot
which is made to survive in an artificial environment. The robot consumes the resources
present in the environment. It also has some decision making capabilities by which it selects some high and low profile tasks to perform in environment during its lifetime. Tasks
to perform are decided by its urge or need for doing it. Quality of life of robot in environment is decided by the comfort level, calculated based on fuzzy logic system. This comfort
level motivates robot to perform more of high profile tasks in the environment. The main
objective of this work is to come up with a hybrid model and find instances or situation in
robots life where emotions can be used such that quality of life of robot is much better and
it performs better.                                   ', '2013-04-19 17:31:54', 'AKASH GUPTA[akash.g]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('anchal', 'Load Balancing based Horizontal Handover in IEEE 802.11 Networks', 'thesis.pdf', 'In the present world of growing technology and smart phones, the user base of hand-held devices has increased enormously over the past few years. IEEE 802.11 is a widely used Wireless LAN technology that provides fast access to the internet. Wi-fi hot spots are deployed at various public places that enable users to access multimedia and other real-time internet applications. Mobile stations need to associate to an Access point(AP) to access internet and communicate to other mobile devices. Conventionally, mobile devices associate to the AP from which they receive maximum signal strength. Since the received signal strength depends on the distance of mobile node from AP, all mobile nodes associate to the closest available AP. It often happens that some regions are more crowded as compared to others. This leads to uneven distribution of load among the access points. An AP may be highly overloaded while there is spare bandwidth available in the neighboring AP. The mobile nodes associated to loaded access point experience degraded performance in terms of lower throughput and increased end-to-end delay.In this report, we propose a handover algorithm that distributes the load evenly among access points by associating mobile nodes to APs based on load in the network.                                            ', '2013-04-19 18:33:14', 'ANCHAL CHOUBEY[anchal]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('anik', 'Automated Interface Generation', 'thesis.pdf', '    In our context an interface for a component is dynamic in nature i.e. it refers to all
the sequence of legal method calls on that component. Typically an interface has to be both
safe and permissive. While safety property is achieved quite easily in polynomial time by
model-checkers, guaranteeing permissiveness is an inherently difficult problem. Since the
model of the component contains nondeterminism, the problem of checking permissivenss
becomes NP-hard and hence cannot easily be afforded. As a result different well known
heuristic based approaches are prevalent which do not necessary promise permissiveness.
In our work we propose an approach which is supposed to act as a benevolent check for
these heuristic based methods and is capable of supplying necessary counterexamples. We
construct an approximate all-unsafe interface and check if the complement of the interface
conjectured by these heuristics based methods are equivalent or not. But this check is not
guaranteed to be cost-efficent in all cases. So again we need to adopt this check heuristically
or let programmer manully handle this step.                                        ', '2013-04-19 17:52:06', 'ANIK CHATTOPADHYAY[anik]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('ankit.j', 'Creating 3-D Map of Buildings\' Interior', '09010108.pdf', '               To a very large degree, people experience and interact with their surroundings from a visual perspective. An often-cited advantage of maps of places or buildings is the ability to present information (paths, position of different objects) in a visual manner, easing the cognitive burden on respondents and allowing for richer, more meaningful responses. But these maps do not mimic the exact behaviour of the real world.
If the user is provided with a 3D map of a place, his experience of understanding and visualizing the environment can be made closer to the reality. With the help of such kind of maps, one can move around the place virtually in 360 degrees and can easily explore it without actually being there.
It would be great if one can save ones visit to different places in the form of a 3D map and can revisit these places virtually without actually being there.
The report describes some of the work already done in creating such experiences and my initial attempt in creating an application which can generate such a map.

                             ', '2013-04-19 17:26:12', 'ANKIT JAISWAL[ankit.j]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('apul', 'QoS in Multi-Channel Multi-Interface Wireless Mesh Networks', 'apul.pdf', 'In today\'s world we have wireless devices capable of working on multiple channels simul-
taneously. Network infrastructure supporting multiple channels can be utilized to provide
dierentiated service to the end users depending upon the quality of service and cost re-
quirements. For example, less delay and high throughput service is desired for real-time
voice and video communications despite their high cost of service whereas for less priority
requests like text-messaging, a low-cost channel can be used. QoS in multi-channel wireless
networks thus becomes an interesting area of research where we try to maximize the overall
throughput of the network satisfying the desired quality of service. Wireless standards
such as IEEE 802.11a/b already support multiple channels which can be leveraged to oer
such advantages. In this thesis work, we study the problem of 
ow-scheduling and quality
of service in wireless mesh networks. We propose and implement a novel solution which
provides soft guarantees of the desired QoS properties improving the overall performance
of the network. Performance of the proposed scheme is evaluated using the simulation in
NS-3.                                        ', '2013-04-20 20:42:24', 'APUL JAIN[apul]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('ayushi', 'Data Mining In Multi Database System', '9010114.pdf', '       Association rule mining is an important model in the data mining. Association rule
mining algorithm discovers all item association (or rules) in the data that satisfy the user-
specified minimum support (minsup) and minimum confidence (minconf ) constraints. Since
only one minsup is used for the whole database, the model implicitly assumes that all items
in the data are of the same nature and/or have similar frequencies in the data. This is ,
however, seldom the case in real life applications, interesting patterns often occurs at varied
levels of support. In this report we proposed one algorithm for association rule mining with
non-uniform support, which works on the notion of support constraints. We have also
discussed about finding global exceptional in Multi-Database systems. We have done some
optimizations on a existing algorithm. We found out that ordering the database in increasing
order of their minsup or size increase the performace. We have done a extensive graphical
analysis on our algorithm and it turns out to be very efficient.
                                        ', '2013-04-19 15:13:42', 'AYUSHI MATHUR[ayushi]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('b.juhi', 'Issues with TCP in Data Center Networks', 'btpthesis.pdf', 'We will discuss traffic characteristics of data center networks at macroscopic and microscopic level which can be used in optimizing traffic engineering techniques in data centers. We will see what kinds of problems TCP causes in data centers, mention TCP outcast[1] and TCP incast throughput collapse[4] problem in detail and highlight their possible solutions which can be used to mitigate the problem. In this report,we present experiment results that show the existence of TCP outcast problem across three different topologies - Fat Tree Network, Traditional 3-tier Topology, and Canonical 2-tier Topology. Using ns-2 simulations, we compare these three topologies on the basis of average throughput, jains fairness index and packet loss percentage. We vary all the relevant parameters such as traffic pattern, switch buffer size, number of senders, bottleneck locations and TCP parameters to characterize the conditions for the TCP Outcast problem and their impact on the degree of resulting throughput unfairness. We also evaluate the comparative performance of two different TCP variant- TCP NewReno and TCP Vegas.', '2013-04-19 15:11:07', 'JUHI BAGRODIA[b.juhi]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('b.khatri', 'Unsupervised Entailment Detection between Dependency Graph Fragments', 'BTP_khatri.pdf', '(Uploaded by shirshendu). I could not able to copy his abstarct from the pdf given.                                        ', '2013-04-21 17:09:00', 'BHARAT KHATRI[b.khatri]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('behara', 'Implementation of FIPA Specications in Typhon', '09010168-Shyam Patro.pdf', '   In this report we present Typhon 2.0 which is an extension to Typhon[MN11].Typhon[MN11]
which is based on LPA Prolog`s Chimera agent system. Typhon 2.0 is built according to
FIPA specications.This framework allows for typhlet mobility across heterogeneous FIPA
complaint mobile agent platforms.This is added as an extension so that the systems devel-
oped on Typhon[MN11] can be easily made compatible with Typhon 2.0.                                         ', '2013-04-20 20:43:47', 'BEHARA MANI SHYAM PATRO[behara]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('c.prakash', 'Deadlock Free Routing for 2D mesh topology', '08010113-btp-phase2-report.pdf', 'In this report, we are talking about deadlock free routing algorithm for 2D mesh without adding virtual channels. An implementation of this algorithm is done by me in C++ using some graphics library                                            ', '2013-04-19 13:08:29', 'CHETAN PRAKASH[c.prakash]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('c.pravin', 'Incorporating Fault Tolerance in LEACH  Protocol of Wireless Sensor Networks and Implementation  in NS2', '09010134.pdf', 'Arena for Wireless Sensor Network is increasing day-by-day. LEACH 
(LowEnergy Adaptive Clustering Hierarchy) protocol is one of the significant 
protocols for routing in WSN. It is a clustering based organization of nodes. In 
LEACH, sensor nodes are organized in several small clusters where there are 
cluster heads in each cluster. These CHs gather data from their local clusters 
aggregate them and send them to the base station. Incorporating fault tolerance in 
LEACH will further improve its reliability. We have tried to incorporate fault 
tolerance and tried to simulate its behavior in NS2                                 ', '2013-04-19 18:05:55', 'PRAVIN KUMAR CHATURVEDI[c.pravin]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('g.pranav', 'Multi Label Classification', 'btp_report-sem8.pdf', 'Multi Class \'Multi\' Label Classification classifies a single input instance into multiple labels/classes than just one label as in the case of Multi Class \'Single\' Label Classification. Most methods reduce the problem to existing single label classification techniques. The possible output space is the powerset of given labels, which is exponentially large. However, not all labels are correlated, or at least not significantly correlated, and can be considered independent of each other. The most important approaches differ mainly in the way they exploit this set of label correlations. We discuss various such approaches and related works. One of these methods prunes the output space itself, considering, for classification, sets of only those labels that are significantly correlated and thus, most relevant. We develop a new method using such an approach, compare its performance with state of the art and show its superiority.', '2013-04-19 17:28:40', 'PRANAV GUPTA[g.pranav]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('gundlapalli', 'Linear layouts of weakly triangulated graphs', 'to-do.pdf', '       A triangulated (chordal) graph is one in which there are no chordless cycles of length
4 or more. Damaschke [Dam03] showed how to compute all linear layouts of a chordal
graph, given a valid assignment of lengths to the edges of G. Through our project we try
to extend his result to weakly triangulated (chordal) graphs. Weakly triangulated graphs are
identified by the existence of a peripheral edge ordering, which will therefore be helpful to
find the number of linear layouts of such graphs. The time complexity of our algorithm to
determine the edge peripheral ordering of a graph is O(n2 Â· m), which is an improvement of
a factor of n from the obvious extension of the two-pair algorithm of [AR91]. Along with
the proposed algorithm, we discuss the implementation of the entire quad-tree algorithm to
determine the linear layouts for weakly chordal graphs within the time bound of O(n2 Â· m).
Further, we try to determine the minimum number of edge queries that will be required to
uniquely place a set of points in 2-dimensions by obtaining the asymptotic density of some
planar rigid graphs in 2-dimensions.
                                        ', '2013-04-19 17:39:20', 'GUNDLAPALLI SRINIVAS[gundlapalli]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('k.ankit', 'A weighted sum Ensemble approach for Ranking algorithms', 'thesis.pdf', 'Existing Algorithms for ranking can not be easily compared when talk about efficiency, it
just depend upon the data so this work uses machine learning approach and tries to combine
the existing algorithms for ranking in such a way that independent of what algorithm is
performing better, this combined algorithm will perform comparative to the best one among
them and often give good results. This approach of combining the algorithms is called
Ensembling. It uses simple combining function weighted sum and tries to predict the weights
using NDCG[JK00] measure as loss function and genetic algorithm to minimize it. It uses
yahoo Learning to Rank challenge set 2 dataset so tries ensembling on 700 conventional
ranking methods which includes TF.IDF, PageRank [CC11].
', '2013-04-19 18:19:04', 'ANKIT KUMAR[k.ankit]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('k.apoorv', 'Wireless Network on Chips', 'thesis.pdf', 'NoC is currently the many-core paradigm of the future, with many implementations already out in the wild showing promising prospects. The scaling issues however continue to bug the interconnect based architecture. In one of the most touted products, the Intel tera-flop processor for instance, sending data from one core to another might take as much as 75 cycles. As we reach a far more denser integration , with more elements on chip, the problem is only likely to aggravate.

In this report we look at some of the primary solutions that are being considered for replacing the wired interconnects. The ones include - RF Interconnects , optical/photonic interconnects and wireless interconnects. Out of these, wireless holds the greatest promise because of easy implementation, high level of reconfigurability, viability and available data-bandwidth.
Finally we propose a new wireless network on chip architecture and show how it, and varying various associated parameters, help alleviate congestion and improve performance through RTL simulations.', '2013-04-19 17:45:06', 'APOORV KUMAR[k.apoorv]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('k.gunjan', 'Energy Efficient algorithm', 'thesis.pdf', '    A modern processor can dynamically set it\'s speed while it\'s active, and can make a transition to sleep state when required. When the processor is active, the energy consumed per unit time when  a job is scheduled at speed $s$ is given by a strictly convex power function $P(s)$ with the property that $P(0) &gt; 0$. Therefore, some  energy is consumed  even if the processor is not scheduling any job in the active state. On the otherhand, no energy is consumed when the processor is in the sleep state. However, $C &gt;  0$ units of energy is required to make a transition from the sleep state to the active state and therefore it is not always fruitful to  go asleep when there is no work to be processed at some point of time. \\\\
% Jobs are specified by their arrival time, deadline and processing volume. We consider an optimization problem where each job has to be scheduled within their arrival time and deadline, and the goal is to minimize the total energy consumption.
In this thesis,  we consider  scheduling problem where $n$ jobs $J_1, J_2, \\ldots, J_n$
need to be executed such that the total energy usage of these jobs is minimized while ensuring that
each job is finished within it\'s deadline. First, we work
on an online setting where a job is known only at it\'s arrival time, along with
it\'s processing volume and deadline. In such a setting, the currently best-known algorithm by Han
et al. \\cite{han} provides a competitive ratio max $\\{4, 2 + {\\alpha}^{\\alpha}\\}$ 
of energy usage for the Power function of the form  $ s^\\alpha + g $. In this thesis, we
present a new online algorithm SqOA which provides a competitive ratio  
max $\\{4, 2 + (2-1/{\\alpha})^\\alpha 2^{\\alpha-1}\\}$ of energy usage.  We also extend the hardness result for the offline version of the problem. Albers.et.al. [1] proved that the problem is NP-hard when $P(s)$ and $C$ are taken as a part of input. However,  $P(s)$ and $C$ depends on processor and so are known to us.  We prove the problem remains NP-hard even when P(s) and C are fixed.                                        ', '2013-04-19 18:23:52', 'GUNJAN KUMAR[k.gunjan]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('k.kuldeep', 'QoS based Task Scheduling on Large Scale Chip Multiprocessor', '09010122.pdf', 'My work involves developing a scalable algorithm/heuristic so that tasks can be mapped
(allocated) on a multicore architecture in order to give better performance. Yet it have
not been tested on real computer, though we are able to simulate the algorithm to give
appropriate results. Performance measurement concerns not only time taken by a single
process, but together with number of process accepted. To fulfill it, we minimized CPU
fragmentation keeping reasonable network latency. To get input to be fed to my program,
Gaussian random distribution generator is used.
', '2013-04-19 16:12:19', 'KULDEEP[k.kuldeep]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('k.rajat', 'Improving Bioevent extraction with the help of Coreference Resolution', 'thesis.pdf', 'Biomedical event extraction has received a lot of attention lately because of easy availability of the suitable corpora. However, most work has been focused on extracting relations between entities within the same sentence. In this report, we discuss the use of coreference resolution to augment existing event extraction systems by making it feasible to capture relationships that span across a document. Due to the unavailability of a high quality coreference resolver suitable for biomedical domain, we focus on proposing such a system based on earlier approaches and observations in the field.  ', '2013-04-19 16:13:19', 'RAJAT KHANDUJA[k.rajat]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('k.sudhir', 'Virtual AdSpace', 'thesis.pdf', 'Augmented Reality (AR) is an emerging field and the past decade has seen many consumer
applications based on AR. With the advent of smartphones which bring enormous computing
power with mobility and data from numerous sensors, augmented reality(AR) applications
promise to become ubiquitous, and with the wide range of applications in which they can
be used, quite possibly irreplaceable. In this report we discuss about our project which uses
AR to enhance the human experience while providing advertisers a potential space to target
and reach out to consumers of AR applications.
Virtual AdSpace as the name suggests
provides a virtual advertising space for advertisers to connect to the customers through
advertisements which are placed on the buildings like virtual hoardings. Thus the app creates
a Virtual AdSpace in the environment and hence demonstrates a commercial aspect of
augmented reality navigation system. These ads are visible through an AR application which
can run on a smartphone or on headgears, in future may be on Google Glass1 . Keywords:
Augmented Reality, Mobile Apps, HCI, Location-based service
', '2013-04-19 17:35:51', 'KULKARNI ANAND SUDHIR[k.sudhir]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('karri', 'Steganographic Algorithm Based on Randomization of DCT Kernel', 'final_thesis.pdf', 'Calibration attack is one of the most important attacks specially on JPEG domain steganography.
Prediction of cover image statistics from its stego image is an important requirement
in calibration based attacks. Domain separation techniques are used as counter measures
against such attacks because they make the cover image prediction process rather difficult.
Most of the algorithms in the past are based on randomization of embedding locations. In
this thesis, we propose a new domain separation technique which is based on randomization
of DCT kernel matrix. A comprehensive set of experiments are done to validate that
proposed domain separation scheme performs better than the related existing schemes.                                            ', '2013-04-19 14:47:25', 'KARRI SWATHI[karri]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('m.narendra', 'Multicast Routing In 3D Networks On Chip', 'BtpReportFinal.pdf', 'Since for better interconnection communication between many IP cores in SoCs,NoCs provide a better performance and also the technology trends toward the increased number of processing elements with higher levels of integration and higher performance will require scalable and efficient communication infrastructure, that why 3D NoCs are becoming very important for designing better interconnection communication in System-On-Chips (SoCs). Multicast communication provide a better solution among many cache coherence protocols and parallel algorithms. A lot of research has been done so for in the field of multicasting in 2D and 3D NoCs. In this work we
summarize many multicasting technique and discuss their shortcomings and analyze the scope for a new efficient solution. We have proposed a New Recursive Partitioning Multicast Algorithm (3D-RPM) and optimized version of it a New Optimized Recursive Partitioning Multicast Algorithm (3D-ORPM) for 3D mesh networks, and implement them using our own C++ based simulator. We have achieved up to 8-13% reduction in %link utilization and total power consumed for our proposed approach compare to XYZ 3D multicast routing algorithm. Our results clearly shows that our approach is more scalable to larger network and larger destinations set than any previously proposed approach.                                  ', '2013-04-18 15:25:01', 'NARENDRA KUMAR MEENA[m.narendra]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('mayank.agl', 'kn', 'class 1 linux_cmd_reference.pdf', 'lkj.,m                                            ', '2013-11-15 09:15:19', 'Mayank Agarwal[mayank.agl]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('n.abhinandan', 'I/O Efficient Algorithms for Computing Minimum Spanning Trees(MST)', 'BTP_09010101.pdf', '                                            We present a new algorithm for computing the Minimum Spanning Tree of Massive Graphs. The proposed algorithm outperforms the current best one in most cases. We also document the many failed attempts we made while tackling the problem.', '2013-04-19 15:43:25', 'ABHINANDAN NATH[n.abhinandan]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('n.mehra', 'Learning to Rank: Comparative study of Pairwise and Listwise algorithms', 'my_final_thesis.pdf', 'This report presents a theoretical framework for learning to rank, and demonstrates how to
perform generalization analysis of pairwise and listwise learning to rank algorithms. Many
learning-to-rank algorithms have been proposed in recent years. Among them, some listwise
and pairwise algorithms has shown higher ranking performance when compared to others
approaches. We compare the performance of different algorithms on a representative dataset
using NDCG, MAP and Precision evaluation parameters. We then analyze the observations
and have shown that LambdaMART is performs better than RankNet, MART, RankBoost,
AdaRank.                                      ', '2013-04-19 17:29:09', 'NARESH MEHRA[n.mehra]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('n.prashanth', 'REDUCTION OF NON-SYMMETRIC MATRIX TO BANDED HESSENBERG FORM(TILE APPROACH)', '09010124.pdf', '                                            Bulk of the data resides in secondary memory for large data sets,which is much slower than
the main memory.Hence the complexity of algorithms on these datasets is judged by the number
of I/Os executed.There are e cient out of core algorithms that perform matrix computations
but very few of them are designed to be memory e cient.Here we discuss the memory e cient
algorithm for the reduction of a non-symmetric matrix to a banded hessenberg form using tile
approach.
', '2013-04-19 15:52:09', 'N ESWARA PRASHANTH[n.prashanth]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('n.teja', 'Incremental Clustering for the ROCK-Robust Clustering Algorithm for Categorical Attributes', '09010125.pdf', '                                            Clustering is an important technique which allows us to organize datasets containing millions of datapoints
and identify patterns in the data. Incremental clustering refers to modifying existing clusters on data to make
them suited to the newly added data.The ROCK clustering is a techinque that is used to cluster data which
is categorical in nature. ROCK maps points to clusters based on the concept of neighbors. In this report, the
exisitng ROCK algorithm is discussed and a new incremental version of the clustering algorithm is proposed.
In addition to this, an experimental study is conducted on real life datasets to demonstrate its viability. Our
new algorithm achieves a considerable speed up but trades oâ†µ accuracy in exchange for it.
', '2013-04-19 15:53:33', 'N. VISHNU TEJA[n.teja]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('nagendra', 'Support Vector Machine Algorithm', '09010127.pdf', '', '2013-04-19 17:30:25', 'NAGENDRA RAM[nagendra]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('pasunuri', 'Performance Analysis of Alternate Boosting Algorithms for Viola-Jones Object Detection', 'thesis.pdf', '                                            Viola and Jones proposed an object detection framework which can be used to process
images rapidly and also in achieving high detection rates at the same time. They proposed
a learning algorithm based on AdaBoost which selects a small critical number of features
and yields highly efficient classifiers. In this paper, I will be introducing you to two other
boosting algorithms proposed as alternatives to the original boosting algorithm which was
originally proposed by Viola and Jones[VJ01b]. The algorithms are then compared with the
native boosting algorithm and it can be clearly seen that these achieve better detection rates
and also reduce the number of false-negatives and classification speed. These algorithms
are designed realizing that the native algorithm mainly works on minimizing a quantity
related to classification error, rather than concentrating on minimizing the number of false-
negatives. The addition of two more alternatives to the boosting algorithm gives one a
flexibilty to choose the corresponding boosting algorithm based on the requirements.
', '2013-04-19 17:30:50', 'PASUNURI RAHUL[pasunuri]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('pooja', 'Virtual Memory Algorithms For Systems with Flash as Their Secondary Storage', 'btpreport _09010132.pdf', 'This report presents a case for using Flash memory as swap space for mobile devices. Flash offers very fast reads but much slower writes, which presents an interesting challenge for its use
as swap. After introducing Flash and virtual memory, we first present theoretical arguments in
favor of using low latency stores for swapping. Then we describe technologies in the current
Linux kernel which allow the use of Flash devices as swap. Finally, we describe the construction
of a virtual memory simulator and the results from our experiments on it.                  ', '2013-04-19 16:28:40', 'POOJA DUBEY[pooja]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('pragya', 'A Comparison of Search Methods for unstructured Peer-to-Peer Systems', 'report.pdf', 'Peer-to-Peer systems have become an important area of research over the past few years. In this
work, we present a brief overview of the Peer-to-Peer systems and their classification as well as the various problems associated with them. We then present a detailed comparison of the
various search algorithms for unstructured peer-to-peer networks. At the end we propose an
advanced search algorithm and compare and establish its superiority with some of the already
existing ones.', '2013-04-19 17:23:38', 'PRAGYA PARUL[pragya]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('purwar', 'Application of Discrete Event Systems for Detection Of Network Attacks', '09010135.pdf', '                                            Abstractâ€”Since preserving energy resources is a foremost
requirement of handheld devices like PDA, mobiles, smartphones
and laptops, 802.11 has provided a power management feature
that enables the station to enter into sleep mode so that they can
save energy without the fear of loosing packets. While a station
is asleep the access point (AP) buffers all the packets destined
for the station in sleep mode. The station in the sleep state wakes
up a pre-determined intervals and check for buffered data at the
access points (AP) by looking into the TIM of beacon frame. If
the AP has buffered packets for the station then it sends a PS-
Poll frame to retrive the buffered packets at AP. However since
the PS-Poll frame is sent un-encrypted, attackers can easily spoof
them and launch a Denial of Service (DoS) attack on the target
Wi-Fi networks.', '2013-04-19 17:25:37', 'PURWAR SANKETH KISHAN[purwar]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('r.akash', 'A critical study of Frama-C Program Slicing Tool\'s PDG and Slicing Plugin', 'AkashBtp.pdf', '                                            This work aims to contribute in the development of opensource Program Slicing tool Frama-C by providing insight into PDG and Slicing Plugin\'s software architecture. The goal of phase 1 of this work was to get familiar with various technical details related to Program Slicing and getting started with some previous work in the field. Chapter 1 of this report discusses Intraprocedural Slicing of programs with structs and pointers proposed and implemented by Aseem Rastogi . The work is an extension of Intraprocedural slicing algorithm for C programs containing only scalar variables, given by Kumar and Horwitz . The work used C Intermediate language(CIL) for transforming C programs to a simple intermediate form, control flow analysis,data flow analysis and Ocaml programming language for the implementation. 
Phase II of this work gives a Critical Insight into Frama-C\'s PDG and Slicing Plugins, both from application perspective as well as from software architecture perspective.', '2013-04-19 17:23:32', 'AKASH DEEP RAWAT[r.akash]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('r.anurag', 'Study of Implicit Rating using Latent Space', 'RamanAnurag09010139BTPThesis.pdf', 'There have been significant advances in the field of Implicit Rating as it is computationally
less expensive and less biased than Explicit Rating. Many techniques have
come up which try to predict user ratings based on history but there is still scope of improvement.
By observing and analysing the behavior of a user when he visits a web-page can be a possible way of predicting whether he likes it or not. Moreover, it is possible to predict what rating he might give to the page on a scale of one to five.
In the Implicit Rating system, in which only the past user activity is available but there are
no actual ratings, there is an uncertainty of interpretation. There are only few common implicit
rating based techniques and algorithms. This thesis focuses on learning the dataset to build different classifiers and analyse their performance values. We also explore latent space to observe if the performance increases by selecting best features and compare them with other results.
                                            ', '2013-04-19 17:03:21', 'RAMAN ANURAG[r.anurag]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('r.barua', 'Knowledge Discovery in Cricket using Relational Learning Methods', 'thesis.pdf', '      In this work, we focus on analyzing the cricket text commentary related to &quot;test cricket
matches&quot;. In particular we are interested in those test matches in which India has featured.
Our objective of this study is to identify the weakness of players (both batsmen and bowlers)
from the text commentary and suggest team strategies for winning.
We have identied batting specic and bowling specic features by examining over one
lakh of deliveries of text commentary. The key contribution of this work is in identifying
that the data points do not follow the usual assumption of &quot;independent and identically
distributed&quot;.
Here we present two cricket data mining strategies using relational model namely Rela-
tional Bayesian Classier(RBC), Probabilistic Relational Neighbor Classier(PRNC). We
consider Naive Bayes estimation as a measure for our comparison, and show how the strate-
gies compete against each other.
We also compare two batting partnership combinations namely Left-Right and Right-
Right batting combinations and show their correlation with team winning strategies.
  
Keywords:Knowledge Discovery in Cricket, Sports Data Mining, Relational Bayesian
Classier, Relational Neighbor Classier                ', '2013-04-19 15:27:09', 'RISHI BARUA[r.barua]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('r.borah', 'ROI Based Reversible watermarking Scheme', '09010142.pdf', '               Watermarking in the recent years has become an important area of research in the eld of
data security, condentiality and image integrity. The important facet of watermarking in
medical images requires extreme care when embedding additional data in them as the extra
information must not aect image quality. We are using a scheme where we are using LSB
watermarking which is a fragile watermarking technique and embedding it into the Region of
Interest(ROI) and embed in Region of Non Interest(RONI) using a robust algorithm. This
scheme ensures both the authenticity and can check image tempering. A comprehensive set
of experiments have been conducted to evaluate the performance of the proposed scheme.                             ', '2013-04-19 17:30:50', 'RISHI RAJ BORAH[r.borah]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('r.sethia', 'Virtual AdSpace', 'thesis.pdf', '                                            Augmented Reality (AR) is an emerging field and the past decade has seen many consumer
applications based on AR. With the advent of smartphones which bring enormous computing
power with mobility and data from numerous sensors, augmented reality(AR) applications
promise to become ubiquitous, and with the wide range of applications in which they can
be used, quite possibly irreplaceable. In this report we discuss about our project which uses
AR to enhance the human experience while providing advertisers a potential space to target
and reach out to consumers of AR applications.
Virtual AdSpace as the name suggests
provides a virtual advertising space for advertisers to connect to the customers through
advertisements which are placed on the buildings like virtual hoardings. Thus the app creates
a Virtual AdSpace in the environment and hence demonstrates a commercial aspect of
augmented reality navigation system. These ads are visible through an AR application which
can run on a smartphone or on headgears, in future may be on Google Glass1 . Keywords:
Augmented Reality, Mobile Apps, HCI, Location-based service
', '2013-04-19 17:35:04', 'RAVI SETHIA[r.sethia]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('rahul.br', 'Distributed Lock Managers: Implementing and analyzing scalable Services that provide locking primitives distributed applications', 'Rahul_Bhatnagar_09010136.pdf', 'The creation of tightly-connected clusters requires a great deal of supporting infrastructure. One
of the necessary pieces is a lock manager - a system which can arbitrate access to resources
which are shared across the cluster. The lock manager provides functions similar to those found
in the locking calls on a single-user system - it can give a process read-only or write access to
parts of files. The lock management task is complicated by the cluster environment, though; a
lock manager must operate correctly regardless of network latencies, cope with the addition and
removal of nodes, recover from the failure of nodes which hold locks, etc. It is a non-trivial
problem. There are various approaches towards constructing Distributed Locking Managers.
Here we implement 2 of them, using various frameworks that allow us to work with distributed
applications. The first one, is a DLM that uses Apache ZooKeeper, a distributed coordination
service and passes information about lock ownership change to Clients using messages. The
Second one is a modification of the famous Lamportâ€™s Bakery Algorithm, which runs on
Cassandra, a distributed database, where clients repeatedly query the database to get
information about lock data.                                          ', '2013-04-21 16:49:31', 'RAHUL BHATNAGAR[rahul.br]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('rohit.raj', 'Incorporating Fault Tolerance in LEACH   Protocol of Wireless Sensor Networks and Implementation in NS2    ', '09010143.pdf', '', '2013-04-19 18:05:45', 'ROHIT RAJ[rohit.raj]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('rovin', 'Constructing Orthogonal Convex Hull in the External Memory Model ', 'Thesis.pdf', 'We consider the problem of finding the orthogonal convex hull of a â€œlargeâ€ point-set, i.e., one which cannot fully fit into the main memory. We took into consideration the external memory model as the computational model. Also, the  dimensionality of the point-set considered was 2 and 3. This report deals with studying the viability of external memory model for the problem and then developing algorithms for (2D and) 3D orthoconvex hull(s) in the external memory model. To our best knowledge, the study of 3D orthoconvex hulls has not been previously done in the external
memory model; the algorithm we describe here generates a 3D orthoconvex hull in O((f N ) log_{min(f,M/B)} (N)) I/O operations, where N is the number of points in the input set.
', '2013-04-19 17:45:10', 'ROVIN BHANDARI[rovin]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('s.pardeshi', 'Linear layouts of weakly triangulated graphs', '04358260.pdf', '   A triangulated (chordal) graph is one in which there are no chordless cycles of length
4 or more. Damaschke [Dam03] showed how to compute all linear layouts of a chordal
graph, given a valid assignment of lengths to the edges of G. Through our project we try
to extend his result to weakly triangulated (chordal) graphs. Weakly triangulated graphs are
identified by the existence of a peripheral edge ordering, which will therefore be helpful to
find the number of linear layouts of such graphs. The time complexity of our algorithm to
determine the edge peripheral ordering of a graph is O(n2 Â· m), which is an improvement of
a factor of n from the obvious extension of the two-pair algorithm of [AR91]. Along with
the proposed algorithm, we discuss the implementation of the entire quad-tree algorithm to
determine the linear layouts for weakly chordal graphs within the time bound of O(n2 Â· m).
Further, we try to determine the minimum number of edge queries that will be required to
uniquely place a set of points in 2-dimensions by obtaining the asymptotic density of some
planar rigid graphs in 2-dimensions.', '2013-04-19 17:34:53', 'SIDHARTH CHANDRASHEKHAR PARDESHI[s.pardeshi]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('s.rajkumar', 'I/O Efficient QR-Decomposition', 'thesis.pdf', '    We analyse Tile Based QR decomposition algorithm and implemented this tile based QR
decomposition algorithm using Standard Template library for extremely large Data(STXXL).
We Implemented the algorithm considering two cases, one when only two tiles can fit into
the main memory, and another case is when only one tile can fit into the main memory.
', '2013-04-19 16:24:54', 'RAJKUMAR SINGH[s.rajkumar]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('s.singla', 'Academic Section Automation', 'Thesis_09010146.pdf', '                       This project aims at the study of automation of Academic Section of IIT Guwahati, to design and make changes to the present software. Software Designed is web based multi-tier architecture. It is designed to provide paperless functioning of various processes done by academic section like course registration, minor registration, grade management, course management etc. Software is comprehensive, covering most of the processes of academic section.                     ', '2013-04-19 17:09:31', 'SAURABH SINGLA[s.singla]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('s.sumeet', 'Incremental Shared Nearest Neighbor Density Based Clustering', '09010153-BTP-Report.pdf', 'Traditional clustering algorithms need to start from scratch as soon as there are changes in data. This is unacceptable in the scenario where data set is huge and changes are frequent, like crawling documents on the web. We must be able to find the clusters in the updated data using minimal computations while incorporating the prior results. Shared Nearest Neighbor
Density-based clustering is a robust graph-based clustering algorithm capable of handling clusters of different sizes, shapes and densities. We propose an incremental extension to this algorithm
capable of finding clusters on a dataset to which frequent inserts are being made. We identified the area affected due to an insert and re-clustered only a limited portion of the entire dataset. The clusters found are identical to the ones found by the original non-incremental version on the resultant dataset. Our algorithm
is hence truly incremental unlike most of the other incremental algorithms which are order-dependent. The fact that clusters would exactly match has been established by a proof inspired
from for IncDBSCAN (Incremental DBSCAN).  Alongwith the backing of this proof, we have performed experiments on 5000 inserts and shown that without compromising the exactness of
clusters we could achieve speed up close to 360 times.                                         ', '2013-04-18 10:53:42', 'SUMEET KUMAR SINGH[s.sumeet]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('shah', 'Automation of Medical Section of IIT Guwahati', 'BTP_09010147.PDF', 'The aim of this project is to study requirements for automation of Medical Section of IIT Guwahati, to design comprehensive software that covers all aspects of management and operations of hospital and to implement and integrate the software with Administrative and Finance and Accounts section of IIT Guwahati. The designed software needs to provide immediate access to clinical, administrative and billing data required by various entities for efficient functioning of the hospital.                                        ', '2013-04-19 18:14:25', 'SHAH AKHILESH KAILASHCHANDRA[shah]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('snehlata', 'Incremental Association Rule Mining from Dynamic Database', 'Snehlata_BTP.pdf', '                                               Association rule mining from large dataset provides us valuable information and associa-
tion rules are one of the important tools of data mining for analyzing transactional database.
As time advances, since our database is dynamic, association rules will also gets updated
and hence maintaining association rules in large dataset is another problem. We can map
the problem of maintaining association rules into problem of maintaining frequent item
sets. In this report a new algorithm has been proposed which scans only the incremental
portion of database and updates the set of frequent item sets and outputs same result as by
rerunning apriori and takes less time than apriori.
', '2013-04-19 16:11:08', 'SNEHLATA[snehlata]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('sunil.k', 'Scheduling Multiphase Applications on Heterogenous Multiprocessors', 'thesis.pdf', 'Heterogeneous Multiprocessor provide great opportunity to improve  system throughput  and reduction in power consumption. Task scheduling in heterogeneous held great importance for utilization of asymmetry in cores. We have studied and implemented some heuristic for task scheduling for specific type of tasks. We have implemented heuristic for scheduling chain application. During this project we have considered random chain applications and adapted the Successor Concerned List Scheduling  proposed by Y. Wang for scheduling chains. We have found that SCLS provide better application efficiency than CTF and EAF for chain application when the ratio of number of application and number of cores is higher and similar result when the ratio is less.                                          ', '2013-04-19 15:14:16', 'SUNIL KUMAR[sunil.k]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('t.shubham', 'A novel random walk based method for associating genes with diseases', '09010148.pdf', 'A lot of effort has gone into development of methods for identification of genes associated with a disease. It has been recognized that diseases are consequences of perturbations in cellular systems. Most of the attention has been given to the molecular networks for the purpose of studying the cellular systems. Based on observations, it has been hypothesized that genes involved in similar phenotypes are located close to one another in the molecular networks. Current methods utilize this locality of disease genes in molecular networks for ranking candidate genes with respect to a disease. In the first phase of our project, we outlined a detailed framework for development of disease gene prioritization methods.  Here, we present a new ranking algorithm that draws upon the idea of a random walk but gives much better results than some of the well known existing methods, including other random walk based methods. We shall also demonstrate a new method for exploiting disease-disease similarity information and its effect on our proposed algorithm. For the sake of completeness, we will also present two other ranking algorithms that we developed before formulating the random walk based method.', '2013-04-19 14:10:43', 'SHUBHAM TRIPATHI[t.shubham]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('v.goyal', 'Automatic Speaker Recognition', 'VikramGoyal_BTPReport_2.pdf', 'With the advent of modern technology, the need for devising sophisticated methods that can give access to individuals to various facilities based on their unique identification has increasingly grown.
From traditional methods such as password based identification, this area has grown by leaps and
bounds, with each new method decreasing the chances of an imposter gaining access to a system by masquerading as someone else. Some of these techniques include fingerprint recognition, face
recognition, speech recognition.
In the following report, I will discuss in detail an HMM based speaker recognition system that on the basis of observation sequences corresponding to cepstral and delta coefficients tries to identify the speaker. Various components that go into the building of HMM are discussed. The recognition rates are viewed stand alone for the cepstral and delta coefficients respectively. Then, a combination of them is taken to see if it improves the recognition accuracy. Finally, the conclusions drawn from the above experiments are reported.
', '2013-04-19 15:21:09', 'VIKRAM KUMAR GOYAL[v.goyal]');
insert into `projects` (`user_nm`, `thesis_title`, `report_file_name`, `abstract`, `submitted_at`, `submitted_by`) values ('vibhuti', 'Web Service Car Broker System', 'FINAL_BTP_09010157.pdf', '  A web service is a method of communication between two electronic devices over the World Wide Web. A web service is a software function provided at a network address over the web or the cloud, it is a service that is &quot;always on&quot; as in the concept of utility computing. Applications access Web services via ubiquitous Web protocols and data formats such as HTTP, XML, WSDL and SOAP, XML is used to tag the data, SOAP is used to transfer the data, WSDL is used for describing the services available and UDDI is used for listing what services are available. Other systems interact with the Web service in a manner prescribed by its interface using messages, which may be enclosed in a SOAP envelope, or follow a RESTful approach. These messages are typically conveyed using HTTP, and normally comprise XML in conjunction with other Web-related standards.                                            ', '2013-04-19 02:59:32', 'VIBHUTI KUMAR[vibhuti]');
 
drop table if exists `schedule`; 
CREATE TABLE `schedule` (
  `class` varchar(10) NOT NULL,
  `last_date` date NOT NULL,
  PRIMARY KEY (`class`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `schedule` (`class`, `last_date`) values ('BT', '2014-10-19');
insert into `schedule` (`class`, `last_date`) values ('MT', '2014-11-19');
 
drop table if exists `security_question`; 
CREATE TABLE `security_question` (
  `security_question_id` int(11) NOT NULL,
  `security_ques` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `security_question` (`security_question_id`, `security_ques`) values ('5', 'What was the name of your elementary / primary school?');
insert into `security_question` (`security_question_id`, `security_ques`) values ('4', 'Where were you when you had your first kiss?');
insert into `security_question` (`security_question_id`, `security_ques`) values ('3', 'What was your childhood nickname?');
insert into `security_question` (`security_question_id`, `security_ques`) values ('2', 'What is your maternal grandmother\'s maiden name?');
insert into `security_question` (`security_question_id`, `security_ques`) values ('1', 'In what city did you meet your spouse/significant other?');
 
drop table if exists `student`; 
CREATE TABLE `student` (
  `roll_number` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(200) NOT NULL,
  `user_nm` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `class` varchar(3) DEFAULT NULL,
  `pass_changed` varchar(4) NOT NULL,
  `pass_changed_at` datetime DEFAULT NULL,
  `pass_created_at` datetime DEFAULT NULL,
  `last_modified_by` varchar(250) DEFAULT NULL,
  `advisor_id` varchar(100) NOT NULL,
  `permission` varchar(4) NOT NULL,
  `security_question_id` int(11) DEFAULT NULL,
  `security_question_ans` varchar(60) DEFAULT NULL,
  `password_hashed` text NOT NULL,
  PRIMARY KEY (`roll_number`),
  UNIQUE KEY `user_id` (`user_nm`),
  KEY `advisor_id` (`advisor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('05010137', 'SHASHI KANT KUNAL1', 'shashi', 'pintu07KUMAR', 'BT', 'YES', '2013-10-10 00:00:00', '2013-04-11 12:16:56', 'SHASHI KANT KUNAL1[shashi]', 'santosh_biswas', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('06010133', 'NAPOLEAN DANG', 'n.dang', 'uMubu6ugy', 'BT', 'NO', NULL, '2013-04-11 12:16:56', 'thesisadmin', 'pkdas', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('08010129', 'KURAKULA VENKATA NARENDRA', 'n.kurakula', 'yLeQunuru', 'BT', 'NO', NULL, '2013-04-11 12:16:56', 'thesisadmin', 'jatin', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('08010154', 'YAMBEM PUSKIN SINGH', 'y.singh', 'y8aDyJaqy', 'BT', 'NO', NULL, '2013-04-11 12:16:56', 'thesisadmin', 'pinaki', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('10610112', 'Mayank Agarwal', 'mayank.agl', 'abc123', 'BT', 'YES', '2013-11-11 00:00:00', '2013-10-01 00:00:00', 'Mayank Agarwal[mayank.agl]', 'santosh_biswas', 'YES', '2', 'Guwahati', '3b6beb51e76816e632a40d440eab0097');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('8010106', 'ANUBHAV JEPH', 'a.jeph', 'a2a2aHuWa', 'BT', 'NO', NULL, '2013-04-12 00:00:00', 'thesisadmin', 'ranbir', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('8010113', 'CHETAN PRAKASH', 'c.prakash', 'uphack123', 'BT', 'YES', '2013-04-15 00:00:00', '2013-04-12 00:00:00', 'thesisadmin', 'asahu', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010101', 'ABHINANDAN NATH', 'n.abhinandan', 'sajith', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'thesisadmin', 'sajith', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010102', 'ABHINAV SONKER', 'a.sonker', 'abhi786', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'thesisadmin', 'pinaki', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010103', 'ADITYA KUMAR', 'aditya.k', 'EqS3putm', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'ADITYA KUMAR[aditya.k]', 'saradhi', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010104', 'AKASH DEEP RAWAT', 'r.akash', 'sanabanatana', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'dgoswami', 'dgoswami', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010105', 'AKASH GUPTA', 'akash.g', 'better0307', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'AKASH GUPTA[akash.g]', 'sbnair', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010106', 'AKSHAY MADROSIYA', 'a.madrosiya', 'akshayuiu', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'AKSHAY MADROSIYA[a.madrosiya]', 'samit', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010107', 'ANCHAL CHOUBEY', 'anchal', 'jasmine', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'sukumar', 'sukumar', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010108', 'ANKIT JAISWAL', 'ankit.j', 'friends', 'BT', 'YES', '2013-04-18 00:00:00', '2013-04-11 12:16:56', 'ANKIT JAISWAL[ankit.j]', 'samit', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010109', 'ANKIT KUMAR', 'k.ankit', '42269782a', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'ranbir', 'ranbir', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010110', 'ANURAG ANSHU', 'a.anshu', 'p1uldir1c', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'ANURAG ANSHU[a.anshu]', 'saswata.sh', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010111', 'APOORV KUMAR', 'k.apoorv', 'ark11811', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'APOORV KUMAR[k.apoorv]', 'hemangee', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010112', 'APUL JAIN', 'apul', 'alchems123', 'BT', 'YES', '2013-04-14 00:00:00', '2013-04-11 12:16:56', 'sukumar', 'sukumar', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010113', 'AYUSH SYAL', 'a.syal', 'x2tLJude31', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'arijit', 'arijit', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010114', 'AYUSHI MATHUR', 'ayushi', 'Filmstar14', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'AYUSHI MATHUR[ayushi]', 'pinaki', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010115', 'DEEPAK SINGH NEGI', 'd.negi', 'uHa2ahype', 'BT', 'NO', NULL, '2013-04-11 12:16:56', 'Main Admin User[thesisadmin]', 'ben', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010116', 'GAURAV RATHI', 'g.rathi', 'priyarathi', 'BT', 'YES', '2013-04-18 00:00:00', '2013-04-11 12:16:56', 'GAURAV RATHI[g.rathi]', 'ranbir', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010117', 'GUNJAN KUMAR', 'k.gunjan', 'fuckuocddco', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'GUNJAN KUMAR[k.gunjan]', 'saswata.sh', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010118', 'JASVINDAR SINGH SINGARIYA', 'jasvindar', 'yhumyruWy', 'BT', 'NO', NULL, '2013-04-11 12:16:56', 'Main Admin User[thesisadmin]', 'deepkesh', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010119', 'JUHI BAGRODIA', 'b.juhi', 'jeenmata22', 'BT', 'YES', '2013-04-18 00:00:00', '2013-04-11 12:16:56', 't.venkat', 't.venkat', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010120', 'K TEJA', 'k.teja', '9000699458', 'BT', 'YES', '2013-04-14 00:00:00', '2013-04-11 12:16:56', 'K TEJA[k.teja]', 'asahu', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010121', 'KARTIKEY GUPTA', 'kartikey', 'sachkasamna1', 'BT', 'YES', '2013-04-30 00:00:00', '2013-04-11 12:16:56', 'KARTIKEY GUPTA[kartikey]', 'ben', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010122', 'KULDEEP', 'k.kuldeep', 'kd5534kd', 'BT', 'YES', '2013-04-15 00:00:00', '2013-04-11 12:16:56', 'thesisadmin', 'asahu', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010123', 'KULKARNI ANAND SUDHIR', 'k.sudhir', 'abc123', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'thesisadmin', 'samit', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010124', 'N ESWARA PRASHANTH', 'n.prashanth', 'nlatha', 'BT', 'YES', '2013-04-15 00:00:00', '2013-04-11 12:16:56', 'sajith', 'sajith', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010125', 'N. VISHNU TEJA', 'n.teja', 'phaseshift', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'N. VISHNU TEJA[n.teja]', 'awekar', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010126', 'NAGA ROHIT S', 's.naga', 'Passw0rd', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'sukumar', 'sukumar', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010127', 'NAGENDRA RAM', 'nagendra', 'nagendra', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'NAGENDRA RAM[nagendra]', 'pkdas', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010128', 'NARENDRA KUMAR MEENA', 'm.narendra', 'btp0205', 'BT', 'YES', '2013-04-18 00:00:00', '2013-04-11 12:16:56', 'NARENDRA KUMAR MEENA[m.narendra]', 'hemangee', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010129', 'NARESH MEHRA', 'n.mehra', 'nancymyluv', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'ranbir', 'ranbir', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010130', 'PARAG AGRAWAL', 'a.parag', 'KRfN1Z5w', 'BT', 'YES', '2013-04-18 00:00:00', '2013-04-11 12:16:56', 'PARAG AGRAWAL[a.parag]', 'saradhi', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010131', 'PASUNURI RAHUL', 'pasunuri', 'awzYRIcuzm', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'PASUNURI RAHUL[pasunuri]', 'pkdas', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010132', 'POOJA DUBEY', 'pooja', 'nice123', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'gb', 'gb', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010133', 'PRAGYA PARUL', 'pragya', 'manorama', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'PRAGYA PARUL[pragya]', 'dgoswami', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010134', 'PRAVIN KUMAR CHATURVEDI', 'c.pravin', 'pkn232', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'santosh_biswas', 'santosh_biswas', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010135', 'PURWAR SANKETH KISHAN', 'purwar', 'FRTDES', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'PURWAR SANKETH KISHAN[purwar]', 'santosh_biswas', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010136', 'RAHUL BHATNAGAR', 'rahul.br', 'rahul123', 'BT', 'YES', '2013-04-21 00:00:00', '2013-04-11 12:16:56', 'RAHUL BHATNAGAR[rahul.br]', 'dgoswami', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010137', 'RAJAT KHANDUJA', 'k.rajat', 'dnGSoC12', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'RAJAT KHANDUJA[k.rajat]', 'anand.ashish', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010138', 'RAJKUMAR SINGH', 's.rajkumar', 'jaimatakisa', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'sajith', 'sajith', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010139', 'RAMAN ANURAG', 'r.anurag', '9AgguSVc13', 'BT', 'YES', '2013-04-18 00:00:00', '2013-04-11 12:16:56', 'ranbir', 'ranbir', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010140', 'RAVI SETHIA', 'r.sethia', 'btpdupc1', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'RAVI SETHIA[r.sethia]', 'samit', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010141', 'RISHI BARUA', 'r.barua', 'glassy12', 'BT', 'YES', '2013-04-17 00:00:00', '2013-04-11 12:16:56', 'saradhi', 'saradhi', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010142', 'RISHI RAJ BORAH', 'r.borah', 'stmcTGYw0', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'RISHI RAJ BORAH[r.borah]', 'arijit', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010143', 'ROHIT RAJ', 'rohit.raj', '9508419037', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'ROHIT RAJ[rohit.raj]', 'santosh_biswas', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010144', 'ROVIN BHANDARI', 'rovin', 'rainyb', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'ROVIN BHANDARI[rovin]', 'svrao', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010145', 'SAURABH SAXENA', 'saurabh.s', 'saurabh123', 'BT', 'YES', '2013-04-15 00:00:00', '2013-04-11 12:16:56', 'pbhaduri', 'pbhaduri', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010146', 'SAURABH SINGLA', 's.singla', '9254001196', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'SAURABH SINGLA[s.singla]', 'gb', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010147', 'SHAH AKHILESH KAILASHCHANDRA', 'shah', 'abhushah1', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'SHAH AKHILESH KAILASHCHANDRA[shah]', 'gb', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010148', 'SHUBHAM TRIPATHI', 't.shubham', 'kvothe123', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'SHUBHAM TRIPATHI[t.shubham]', 'anand.ashish', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010149', 'SHYAM SUNDER SINGH', 'shyam.ss', 'priyanka', 'BT', 'YES', '2013-04-14 00:00:00', '2013-04-11 12:16:56', 'SHYAM SUNDER SINGH[shyam.ss]', 'ranbir', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010150', 'SNEHLATA', 'snehlata', 'takeiteasy', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'SNEHLATA[snehlata]', 'awekar', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010151', 'SRIKAKULAPU SATYA VARA PRASAD', 'srikakulapu', 'evaWyBahe', 'BT', 'NO', NULL, '2013-04-11 12:16:56', 'Main Admin User[thesisadmin]', 'jatin', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010152', 'SUHAIL SHERIF', 'suhail', 'y2aTaTeZy', 'BT', 'NO', NULL, '2013-04-11 12:16:56', 'Main Admin User[thesisadmin]', 'ben', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010153', 'SUMEET KUMAR SINGH', 's.sumeet', 'wnc72992009', 'BT', 'YES', '2013-04-16 00:00:00', '2013-04-11 12:16:56', 'thesisadmin', 'awekar', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010154', 'SUNIL KUMAR', 'sunil.k', 'sunil3688', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'SUNIL KUMAR[sunil.k]', 'asahu', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010155', 'SUNIL RATNU', 's.ratnu', 'jaimaakarni', 'BT', 'YES', '2013-04-18 00:00:00', '2013-04-11 12:16:56', 'SUNIL RATNU[s.ratnu]', 'pinaki', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010156', 'TEJINDER SINGH', 'tejinder', 'abeveheGa', 'BT', 'NO', NULL, '2013-04-11 12:16:56', 'pkdas', 'pkdas', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010157', 'VIBHUTI KUMAR', 'vibhuti', 'jaihanumanji', 'BT', 'YES', '2013-04-15 00:00:00', '2013-04-12 00:00:00', 'VIBHUTI KUMAR[vibhuti]', 'hemangee', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010158', 'VIRENDRA KUMAR', 'k.virendra', 'chrombtp', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'VIRENDRA KUMAR[k.virendra]', 'saradhi', 'YES', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010159', 'VULLI KRISHNA CHAITANYA', 'vulli', 'u3uge5ene', 'BT', 'NO', NULL, '2013-04-11 12:16:56', 'Main Admin User[thesisadmin]', 'svrao', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010160', 'ANIK CHATTOPADHYAY', 'anik', 'onixendu', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'ANIK CHATTOPADHYAY[anik]', 'pbhaduri', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010161', 'PRANAV GUPTA', 'g.pranav', 'jmpgaafb', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'PRANAV GUPTA[g.pranav]', 'anand.ashish', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010162', 'SIDHARTH CHANDRASHEKHAR PARDESHI', 's.pardeshi', 'BY9MKEfD', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'SIDHARTH CHANDRASHEKHAR PARDESHI[s.pardeshi]', 'svrao', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010163', 'KARRI SWATHI', 'karri', 'naidu1', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'KARRI SWATHI[karri]', 'arijit', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010164', 'BHARAT KHATRI', 'b.khatri', 'khatri123', 'BT', 'YES', '2013-04-21 00:00:00', '2013-04-11 12:16:56', 'thesisadmin', 'anand.ashish', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010165', 'AYUSH PAROLIA', 'a.parolia', 'pyarAyush91', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'thesisadmin', 'sbnair', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010166', 'GUNDLAPALLI SRINIVAS', 'gundlapalli', 'wanted9421', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'GUNDLAPALLI SRINIVAS[gundlapalli]', 'svrao', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010167', 'VIKRAM KUMAR GOYAL', 'v.goyal', 'vikr2624', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'VIKRAM KUMAR GOYAL[v.goyal]', 'pkdas', 'NO', '1', NULL, '');
insert into `student` (`roll_number`, `name`, `user_nm`, `password`, `class`, `pass_changed`, `pass_changed_at`, `pass_created_at`, `last_modified_by`, `advisor_id`, `permission`, `security_question_id`, `security_question_ans`, `password_hashed`) values ('9010168', 'BEHARA MANI SHYAM PATRO', 'behara', 'beharasushma', 'BT', 'YES', '2013-04-19 00:00:00', '2013-04-11 12:16:56', 'BEHARA MANI SHYAM PATRO[behara]', 'sbnair', 'NO', '1', NULL, '');
 
drop table if exists `users`; 
CREATE TABLE `users` (
  `user_nm` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(12) NOT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`user_nm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `users` (`user_nm`, `name`, `password`, `role`, `created_at`) values ('shirshendu', 'Shirshendu Das', 'TIMDPWINFIMWL', 'admin', '2011-11-02');
insert into `users` (`user_nm`, `name`, `password`, `role`, `created_at`) values ('thesisadmin', 'Main Admin User', 'adminadmin', 'admin', '2011-10-31');

ALTER TABLE `permission_log` ADD   CONSTRAINT `permission_log_ibfk_1` FOREIGN KEY (`advisor_id`) REFERENCES `advisor` (`advisor_id`) ON DELETE CASCADE;
ALTER TABLE `permission_log` ADD   CONSTRAINT `permission_log_ibfk_2` FOREIGN KEY (`permitted_to`) REFERENCES `student` (`user_nm`) ON DELETE CASCADE;

ALTER TABLE `projects` ADD   CONSTRAINT `projects_ibfk_3` FOREIGN KEY (`user_nm`) REFERENCES `student` (`user_nm`);

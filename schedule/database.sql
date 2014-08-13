CREATE TABLE IF NOT EXISTS `event_calendar` (
  `id` int(11) NOT NULL auto_increment,
  `event_date` date NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`id`)
);

INSERT INTO `event_calendar` (`id`, `event_date`, `title`, `description`) VALUES
(1, '2013-09-17', 'test event 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec volutpat aliquet diam non tincidunt. Vivamus vitae ipsum ac justo elementum tempus.'),
(2, '2013-09-19', 'test event 2', 'Aenean iaculis bibendum ullamcorper. In vulputate velit eu leo aliquet eu auctor magna vestibulum.');
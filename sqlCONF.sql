-- phpMyAdmin SQL Dump
-- version 4.4.14.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 14, 2016 at 03:12 AM
-- Server version: 5.6.26
-- PHP Version: 5.5.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ResearchHelper`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `linkId` int(10) NOT NULL,
  `content` varchar(200) NOT NULL,
  `poster` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `linkId`, `content`, `poster`, `created_at`, `updated_at`) VALUES
(3, 22, 'asd', 'Chenghao Lu', '2016-02-13 04:13:46', '2016-02-13 04:13:46'),
(4, 22, 'asd', 'Chenghao Lu', '2016-02-13 04:14:24', '2016-02-13 04:14:24'),
(6, 1, 'qwe', 'Chenghao Lu', '2016-02-13 04:56:40', '2016-02-13 04:56:40'),
(17, 1, '123', 'Chenghao Lu', '2016-02-13 05:07:56', '2016-02-13 05:07:56'),
(18, 17, '123', 'Chenghao Lu', '2016-02-13 05:09:29', '2016-02-13 05:09:29'),
(19, 17, '123', 'Chenghao Lu', '2016-02-13 05:10:09', '2016-02-13 05:10:09'),
(20, 17, '123', 'Chenghao Lu', '2016-02-13 05:10:28', '2016-02-13 05:10:28'),
(21, 16, '123', 'Chenghao Lu', '2016-02-13 05:10:44', '2016-02-13 05:10:44'),
(22, 16, '123', 'Chenghao Lu', '2016-02-13 05:12:16', '2016-02-13 05:12:16'),
(23, 16, '123', 'Chenghao Lu', '2016-02-13 05:19:49', '2016-02-13 05:19:49'),
(24, 15, '123', 'Chenghao Lu', '2016-02-13 05:20:38', '2016-02-13 05:20:38'),
(25, 15, 'good article', 'Chenghao Lu', '2016-02-13 05:21:01', '2016-02-13 05:21:01'),
(26, 13, '123', 'Chenghao Lu', '2016-02-13 05:23:06', '2016-02-13 05:23:06'),
(27, 23, '123', 'Chenghao Lu', '2016-02-13 05:29:30', '2016-02-13 05:29:30'),
(28, 23, '123', 'Chenghao Lu', '2016-02-13 05:29:34', '2016-02-13 05:29:34'),
(29, 1, 'handsome', 'Chenghao Lu', '2016-02-13 18:55:35', '2016-02-13 18:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `linkpreview`
--

CREATE TABLE IF NOT EXISTS `linkpreview` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `image` text NOT NULL,
  `title` text NOT NULL,
  `canonicalUrl` varchar(300) NOT NULL,
  `url` varchar(500) NOT NULL,
  `pageUrl` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `videoIframe` text NOT NULL,
  `votes` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `linkpreview`
--

INSERT INTO `linkpreview` (`id`, `text`, `image`, `title`, `canonicalUrl`, `url`, `pageUrl`, `description`, `videoIframe`, `votes`) VALUES
(1, 'http://www.imdb.com/list/ls015186022/?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=2248695062&pf_rd_r=03S3DKWA4WBJZY9Q8Z2X&pf_rd_s=center-1&pf_rd_t=15061&pf_rd_i=homepage&ref_=hm_osc_cr_hd&pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=2248695062&pf_rd_r=03S3DKWA4WBJZY9Q8Z2X&pf_rd_s=center-1&pf_rd_t=15061&pf_rd_i=homepage#1', 'http://ia.media-imdb.com/images/M/MV5BMTgyNDk2NTE0MV5BMl5BanBnXkFtZTYwMDQ1NDg0._V1._SX266_SY400_.jpg', 'IMDb: Six Facts You Might Not Know About Oscars Host Chris Rock - a list by IMDb-Editors', 'www.imdb.com', 'http://www.imdb.com/list/ls015186022/?pf_rd_m=A2FGELUUNOQJNL', 'http://www.imdb.com/list/ls015186022/?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=2248695062&pf_rd_r=03S3DKWA4WBJZY9Q8Z2X&pf_rd_s=center-1&pf_rd_t=15061&pf_rd_i=homepage&ref_=hm_osc_cr_hd&pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=2248695062&pf_rd_r=03S3DKWA4WBJZY9Q8Z2X&pf_rd_s=center-1&pf_rd_t=15061&pf_rd_i=homepage', 'Chris Rock has been named host of the 88th Annual Academy Awards™, airing Sunday, Feb. 28, 2016. Rock is best known for his stand-up comedy and acting. He is also a writer, producer, and director — which gives him experience in numerous Academy Awards™ categories. His background as a filmmaker makes him well-qualified to host the movie industry''s biggest night. Here are a half-dozen facts you might not know about Chris Rock''s career. — Sara Bibel', '', 4),
(2, 'http://web.media.mit.edu/~mres/', '', 'Mitchel Resnick', 'web.media.mit.edu', 'http://web.media.mit.edu/~mres/', 'http://web.media.mit.edu/~mres/', 'To support my work, please consider making a donation to the Code-to-Learn Foundation or the Resnick Teacher Scholarship Fund.', '', 0),
(3, 'http://25.media.tumblr.com/076d514bbf5a5387f24a5896c26805af/tumblr_mlhc0rjpIc1rp499go2_400.gif', 'http://25.media.tumblr.com/076d514bbf5a5387f24a5896c26805af/tumblr_mlhc0rjpIc1rp499go2_400.gif', 'Just a minion gif!', '25.media.tumblr.com', 'http://25.media.tumblr.com/076d514bbf5a5387f24a5896c26805af/tumblr_mlhc0rjpIc1rp499go2_400.gif', 'http://25.media.tumblr.com/076d514bbf5a5387f24a5896c26805af/tumblr_mlhc0rjpIc1rp499go2_400.gif', ':D', '', 0),
(4, 'http://www.nationalgallery.org.uk/', 'http://www.nationalgallery.org.uk/upload/img/N-6589-homepage_208x184.jpg', 'The National Gallery, London', 'www.nationalgallery.org.uk', 'http://www.nationalgallery.org.uk/', 'http://www.nationalgallery.org.uk/', 'The National Gallery houses one of the greatest collections of paintings in the world. Enjoy free entrance 361 days a year.', '', 0),
(5, '', 'https://i.kinja-img.com/gawker-media/image/upload/s--OqAhAoNZ--/c_fill,fl_progressive,g_center,h_200,q_80,w_200/u0939doeuioaqhspkjyc.png', 'Lifehacker - Tips and downloads for getting things done', 'lifehacker.com', 'http://lifehacker.com/', 'http://lifehacker.com/', 'Tips and downloads for getting things done', '', 0),
(6, 'Youtube >> http://www.youtube.com/watch?v=cv2mjAgFTaI', 'http://i2.ytimg.com/vi/cv2mjAgFTaI/hqdefault.jpg', 'Mutemath - Blood Pressure [Official Music Video]', 'www.youtube.com', 'https://www.youtube.com/watch?v=cv2mjAgFTaI', 'https://www.youtube.com/watch?v=cv2mjAgFTaI', 'Â© 2011 Teleprompt/Warner Bros. Records Inc. "Blood Pressure" by Mutemath from Odd Soul, available now. Written, directed, and filmed in less than 24 hours du...', '<div class="embed-responsive embed-responsive-16by9"><iframe id="20151023121242cv2mjAgFTaI" class="embed-responsive-item" width="499" height="368" src="http://www.youtube.com/embed/cv2mjAgFTaI" frameborder="0" allowfullscreen></iframe></div>', 0),
(7, 'http://www.warnerchannel.com/br/series/', 'http://cdn.warnerestrenos.com/img/share/shared_link_series_por.jpg', 'Series | Warner Channel', 'www.warnerchannel.com', 'http://www.warnerchannel.com/br/series/', 'http://www.warnerchannel.com/br/series/', 'As melhores séries só pra você. Porque #WarnerEstreia', '', 0),
(8, 'My own url with no thumb! http://lab.leocardz.com/facebook-link-preview-php--jquery/', '', 'Facebook Link Preview: PHP + jQuery • Lab • LeoCardz', 'lab.leocardz.com', 'http://lab.leocardz.com/facebook-link-preview-php--jquery/', 'http://lab.leocardz.com/facebook-link-preview-php--jquery/', 'All of us know about the big phenomenon that Facebook is. And since they have always to keep inovating, new super interesting features appear. And the liking of Facebook Link Preview is almost ...', '', 0),
(9, 'http://theverge.com/', 'https://cdn2.vox-cdn.com/uploads/network/placeholder_image/2/default-new.12.jpg', 'The Verge', 'www.theverge.com', 'http://www.theverge.com/', 'http://www.theverge.com/', 'The Verge was founded in 2011 in partnership with Vox Media, and covers the intersection of technology, science, art, and culture. Its mission is to offer in-depth reporting and long-form feature stories, breaking news coverage, product information, and community content in a unified and cohesive manner. The site is powered by Vox Media''s Chorus platform, a modern media stack built for web-native news in the 21st century.', '', 0),
(10, 'http://mashable.com/2015/10/22/instagram-boomerang/#h27f1ql3Uaq4', 'http://rack.1.mshcdn.com/media/ZgkyMDE1LzEwLzIyLzA5L1NjcmVlblNob3QyLjMwNTZmLnBuZwpwCXRodW1iCTEyMDB4NjI3IwplCWpwZw/9073089e/1c1/Screen-Shot-2015-10-22-at-10.18.38-AM.jpg', 'Instagram launches Boomerang, an app for 1-second videos', 'mashable.com', 'http://mashable.com/2015/10/22/instagram-boomerang/', 'http://mashable.com/2015/10/22/instagram-boomerang/', 'Instagram has blessed the world with its version of short, looping videos. And it''s serious about short.', '', 0),
(11, 'Tech news...', 'http://cdn1.tnwcdn.com/wp-content/blogs.dir/1/files/2015/10/Screen-Shot-2015-10-22-at-10.21.45-AM.png', 'The Next Web - International technology news, business and culture', 'thenextweb.com', 'http://thenextweb.com/', 'http://thenextweb.com/', 'The Next Web is one of the worldâs largest online publications that delivers an international perspective on the latest news about Internet technology, business and culture.', '', 0),
(12, 'A Vimeo video: https://vimeo.com/141041381', 'http://i.vimeocdn.com/video/540550689_640.jpg', 'DARKLIGHT - 4K Full Film by Sweetgrass Productions', 'vimeo.com', 'https://vimeo.com/141041381', 'https://vimeo.com/141041381', 'Presented by Philips Ambilight TV In Association with Specialized and TomTom Bandit ActionCam Supported by Freefly Systems (MOVI), Bike Magazine, and CLIF Bar…', '<div class="embed-responsive embed-responsive-16by9"><iframe id="20151023121213141041381" class="embed-responsive-item" width="499" height="280" src="http://player.vimeo.com/video/141041381" width="654" height="368" frameborder="0" webkitallowfullscreen mozallowfullscreen allowFullScreen ></iframe></div>', 0),
(13, 'http://stackoverflow.com/questions/21930748/parse-error-syntax-error-unexpected-t-string-expecting-variable-t-variable', 'http://cdn.sstatic.net/stackoverflow/img/apple-touch-icon@2.png?v=73d79a89bded&a', 'Parse error: syntax error, unexpected (T_STRING), expecting variable (T_VARIABLE)', 'stackoverflow.com', 'http://stackoverflow.com/questions/21930748/parse-error-syntax-error-unexpected-t-string-expecting-variable-t-variable', 'http://stackoverflow.com/questions/21930748/parse-error-syntax-error-unexpected-t-string-expecting-variable-t-variable', 'I will be grateful if someone can point out where the error is occurring. class hotel extends WishDBxyz{ public nomhotel; protected idhotel, ile_idile, pays_idpays, chainehotel_idchainehotel, a...', '', 0),
(14, 'http://www.investopedia.com/ask/answers/062215/how-expected-market-return-determined-when-calculating-market-risk-premium.asp', 'http://i.investopedia.com/facebook/investopedia-facebook-image.gif', 'How is the expected market return determined when calculating market risk premium? | Investopedia', 'www.investopedia.com', 'http://www.investopedia.com/ask/answers/062215/how-expected-market-return-determined-when-calculating-market-risk-premium.asp', 'http://www.investopedia.com/ask/answers/062215/how-expected-market-return-determined-when-calculating-market-risk-premium.asp', 'Find out how the expected market return rate is determined when calculating market risk premium and how these figures are used to estimate investment returns.', '', 0),
(15, 'https://ntulearn.ntu.edu.sg/images/ci/NTUlearn/index.html', 'http://www.ntu.edu.sg/cits/lsa/PublishingImages/gtg_2016.jpg', 'NTULearn', 'ntulearn.ntu.edu.sg', 'https://ntulearn.ntu.edu.sg/images/ci/NTUlearn/index.html', 'https://ntulearn.ntu.edu.sg/images/ci/NTUlearn/index.html', 'At NTU it has been an integral part of the student learning experience as it provides a blended learning environment to complement face-to-face teaching.', '', 0),
(16, 'https://www.kickstarter.com/projects/ericclifton/orison-rethink-the-power-of-energy?ref=category', 'https://ksr-ugc.imgix.net/projects/2248163/photo-original.jpg?v=1453337717&w=1536&h=1152&fit=crop&auto=format&q=92&s=cd8086429b5071f72c8656835522e959', 'Orison â Rethink the Power of Energy', 'www.kickstarter.com', 'https://www.kickstarter.com/projects/ericclifton/orison-rethink-the-power-of-energy?ref=category', 'https://www.kickstarter.com/projects/ericclifton/orison-rethink-the-power-of-energy?ref=category', 'The First Home Battery System You Simply Plug in to Install', '', 0),
(17, 'https://www.kickstarter.com/projects/ericclifton/orison-rethink-the-power-of-energy?ref=category', 'https://ksr-ugc.imgix.net/projects/2248163/photo-original.jpg?v=1453337717&w=1536&h=1152&fit=crop&auto=format&q=92&s=cd8086429b5071f72c8656835522e959', 'Orison â Rethink the Power of Energy', 'www.kickstarter.com', 'https://www.kickstarter.com/projects/ericclifton/orison-rethink-the-power-of-energy?ref=category', 'https://www.kickstarter.com/projects/ericclifton/orison-rethink-the-power-of-energy?ref=category', 'What is orison special about', '', 0),
(18, 'https://www.kickstarter.com/projects/myndgazer/myndgazer-worlds-first-neurofeedback-in-virtual-re?ref=category', 'https://ksr-ugc.imgix.net/projects/1479643/photo-original.jpg?v=1427504689&w=1536&h=1152&fit=crop&auto=format&q=92&s=3cf73a96ebf6fd6e544ab8833296a12e', 'MyndGazer - World''s First Neurofeedback In Virtual Reality', 'www.kickstarter.com', 'https://www.kickstarter.com/projects/myndgazer/myndgazer-worlds-first-neurofeedback-in-virtual-re?ref=category', 'https://www.kickstarter.com/projects/myndgazer/myndgazer-worlds-first-neurofeedback-in-virtual-re?ref=category', 'MyndGazer is a brain-computer interface platform that renders the users brain waves in real time as a Virtual Reality 3D visualization.', '', 1),
(19, 'http://www.zara.com/sg/en/man/trousers/view-all-c719514.html', 'http://static.zara.net/stdstatic/1.2.0-b.17/images/zara-logo-s.png', 'View all-TROUSERS-MAN | ZARA Singapore', 'www.zara.com', 'http://www.zara.com/sg/en/man/trousers/view-all-c719514.html', 'http://www.zara.com/sg/en/man/trousers/view-all-c719514.html', 'View all', '', 0),
(20, '', 'http://static.zara.net/stdstatic/1.2.0-b.17/images/zara-logo-s.png', 'View all-TROUSERS-MAN | ZARA Singapore', 'www.zara.com', 'http://www.zara.com/sg/en/man/trousers/view-all-c719514.html', 'http://www.zara.com/sg/en/man/trousers/view-all-c719514.html', 'test123', '', 0),
(21, 'http://www.andrewng.org', 'http://cs.stanford.edu/people/ang/wp-content/uploads/2013/04/photo_about_w211.jpg', 'Home - Andrew Ng', 'www.andrewng.org', 'http://www.andrewng.org/', 'http://www.andrewng.org/', 'ABOUT ANDREW NG Andrew Ng is an Associate Professor at Stanford; Chief Scientist of Baidu; and Chairman and Co-Founder of Coursera. In 2011 he led the development of Stanford University’s main MOOC (Massive Open Online Courses) platform and also taught an online Machine Learning class that was offered to over 100,000 students, leading to the founding of Coursera. more > VIDEO INTRODUCTION TO O2O There is a rise of O2O (online to offline) services, in which users are using their cellphones to get their cars washed, make last-minute restaurant reservations, find discounted deals, order prescription medicine, and more. Cellphones are becoming a “remote control” for the physical environment around us. O2O’s rise has been rapid in China, because of its high population density. On a recent trip there, I ...', '', 0),
(22, 'http://www.andrewng.org', 'http://cs.stanford.edu/people/ang/wp-content/uploads/2013/04/photo_about_w211.jpg', 'Home - Andrew Ng', 'www.andrewng.org', 'http://www.andrewng.org/', 'http://www.andrewng.org/', 'Inside this link, we can use the data 80% of his contribution is in harvard.', '', 4),
(23, 'https://www.youtube.com/watch?v=WNW7rndkkTw', 'http://i2.ytimg.com/vi/WNW7rndkkTw/hqdefault.jpg', 'LA Lakers vs Cleveland Cavaliers - Full Game Highlights | February 10, 2016 | NBA 2015-16 Season', 'www.youtube.com', 'https://www.youtube.com/watch?v=WNW7rndkkTw', 'https://www.youtube.com/watch?v=WNW7rndkkTw', 'NBA February Feb 10 10th 2016 Full Game Highlights NBA 2015 2016 Season 15-16 10.02.2016 02.10.2016 Warriors Clippers Cavaliers Spurs Games HD Official Recap...', '<div class="embed-responsive embed-responsive-16by9"><iframe id="20160213121039WNW7rndkkTw" class="embed-responsive-item" width="499" height="368" src="http://www.youtube.com/embed/WNW7rndkkTw" frameborder="0" allowfullscreen></iframe></div>', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `linkId` (`linkId`);

--
-- Indexes for table `linkpreview`
--
ALTER TABLE `linkpreview`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `linkpreview`
--
ALTER TABLE `linkpreview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `linkTOComments` FOREIGN KEY (`linkId`) REFERENCES `linkpreview` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

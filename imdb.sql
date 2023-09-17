SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `imdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `picture`, `contact_no`) VALUES
(1, 'kamal hassan', 'kamal.jpeg', '980'),
(2, 'Rajnikanth', 'rajnikanth.jpeg', '70879');

-- --------------------------------------------------------

--
-- Table structure for table `artist_skills`
--

CREATE TABLE `artist_skills` (
  `id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist_skills`
--

INSERT INTO `artist_skills` (`id`, `artist_id`, `skill_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Animation'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Fantasy'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Romance'),
(9, 'Science fiction'),
(10, 'Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `name`) VALUES
(1, 'Vikram'),
(2, 'Jailer');

-- --------------------------------------------------------

--
-- Table structure for table `movie_artists`
--

CREATE TABLE `movie_artists` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_artists`
--

INSERT INTO `movie_artists` (`id`, `movie_id`, `artist_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `movie_genre`
--

CREATE TABLE `movie_genre` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_genre`
--

INSERT INTO `movie_genre` (`id`, `movie_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `movie_medias`
--

CREATE TABLE `movie_medias` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `image_video` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_medias`
--

INSERT INTO `movie_medias` (`id`, `movie_id`, `image_video`) VALUES
(1, 1, 'vikram_poster'),
(2, 2, 'jailer_poster');

-- --------------------------------------------------------

--
-- Table structure for table `movie_reviews`
--

CREATE TABLE `movie_reviews` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reviews` text NOT NULL,
  `created_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_reviews`
--

INSERT INTO `movie_reviews` (`id`, `movie_id`, `user_id`, `reviews`, `created_datetime`) VALUES
(1, 1, 1, 'good movie', CURRENT_TIMESTAMP),
(2, 1, 2, 'not bad', CURRENT_TIMESTAMP),
(3, 1, 3, 'nice movie', CURRENT_TIMESTAMP);


-- --------------------------------------------------------

--
-- Table structure for table `movie_roles`
--

CREATE TABLE `movie_roles` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_roles`
--

INSERT INTO `movie_roles` (`id`, `movie_id`, `artist_id`, `role_id`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 2),
(3, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Producer'),
(2, 'Director'),
(3, 'Assistant Director'),
(4, 'Photography'),
(5, 'Camera Operator'),
(6, 'Assistant Camera'),
(7, 'art designer'),
(8, 'music director'),
(9, 'actor -Hero'),
(10, 'actress -Heroine'),
(11, 'villain'),
(12, 'comedian');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`) VALUES
(1, 'can sing'),
(2, 'can do music'),
(3, 'can play emotional character'),
(4, 'can play as villain');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'balu', 'balu@gmail.com', '12346'),
(2, 'raji', 'raji@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artist_skills`
--
ALTER TABLE `artist_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_artists`
--
ALTER TABLE `movie_artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_medias`
--
ALTER TABLE `movie_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_reviews`
--
ALTER TABLE `movie_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_roles`
--
ALTER TABLE `movie_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `artist_skills`
--
ALTER TABLE `artist_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `movie_artists`
--
ALTER TABLE `movie_artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movie_genre`
--
ALTER TABLE `movie_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `movie_medias`
--
ALTER TABLE `movie_medias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `movie_reviews`
--
ALTER TABLE `movie_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `movie_roles`
--
ALTER TABLE `movie_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
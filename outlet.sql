-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2018 at 12:48 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `house_of_fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producttype` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `description`, `image`, `producttype`) VALUES
(1, 'Bluza w różowe wzorki', '20.00', 'If you need a new layering piece to transition the seasons, this paisley print blouse is an eye-catching solution. In lightweight fabric with a notch neck, it’s comfy and versatile enough to wear from work to the weekend.', 'paisley_print_blouse.jpg', 'women'),
(2, 'Czarna koszula w białe motyle', '22.50', 'If you need a new layering piece to transition the seasons, this butterfly print blouse is a solution that will set your heart aflutter. In lightweight fabric and a monochrome colour scheme, it’s comfy and versatile enough to wear from work to the weekend.', 'butterfly_print_blouse.jpg', 'women'),
(3, 'Jasna koszula z krótkim rękawem', '8.00', 'Sharpen your casual style with this button-down shirt. Crafted from pure-cotton fabric with a button-down collar and short sleeves, it’s long-lasting and a firm favourite for year-round dressing.', 'poplin_short_sleeve_shirt.jpg', 'men'),
(4, 'Jasna koszula w zestawie z t-shirtem', '4.50', 'When it comes to casual days, we’ve got your top half sorted with this long-sleeved shirt and striped tee combo. Each item contains cotton for improved comfort and is easy to mix and match with other casual separates.', 'textured_shirt_and_t_shirt_set.jpg', 'men'),
(5, 'Granatowa sukienka', '6.00', 'Your little star will be ready to shine in an instant, with this easy-wear dress in their wardrobe. The pure cotton fabric and elasticated waist ensure comfort as they play, and the star graphic has slogan detail reminding them that ‘girls are awesome’. ', 'star_graphic_jersey_dress.jpg', 'kids'),
(6, 'Biała sukienka w zebry', '8.00', 'They might be running wild (or crawling), but this zebra print dress still has them looking adorable at family gatherings or birthday parties. Created in lightweight pure cotton fabric for comfort, it’s the easiest way to get animal lovers styled up.', 'zebra_print_dress.jpg', 'baby'),
(7, 'Żółta koszula', '22.50', 'Delicate in hue and detailing, this woven stripe shirt is an elegant piece that will revive wardrobes in need. Crafted in pure-cotton, it’s breathable and lightweight finish is perfect for popping on over a vest on warm days. ', 'woven_stripe_long_sleeve_shirt.jpg', 'women'),
(8, 'Czerwona koszula lniana', '12.50', 'Say hello to the shirt of your dreams – crafted in linen blend fabric, its and easy-breezy option for long beach walks and city escapes. With a button-down front fastening and adjustable long sleeves, it’s a year-round staple we’re digging.', 'linen_blend_lightweight_shirt.jpg', 'women'),
(9, 'Kombinezon niemowlęcy', '5.00', 'Your little deer will soon be dreaming of Bambi’s adventures in the forest with this pack of 2 sleepsuits. Each piece is made from pure-cotton for added comfort and features adorable Bambi character graphics. ', 'disney_bambi_sleepsuits.jpg', 'baby'),
(10, 'Sukienka jeansowa', '9.00', 'Your mini-me will be ready to go from playing hopscotch and chase at the park to twirling on the dancefloor at birthday parties, with this lovely denim dress. The flared fit allows freedom of movement and all-day comfort, plus the light blue wash makes it effortless to style up or down.', 'denim_dress.jpg', 'kids'),
(11, 'Różowa sukienka', '15.00', 'pink_polka_dot_dress.jpg', 'pink_polka_dot_dress.jpg', 'kids'),
(12, 'Koszula w krate', '25.00', 'Opt for the eternally cool appeal with this short sleeve check shirt. In versatile hues and soft pure-cotton fabric, it couldn’t make weekend dressing any easier.', 'short_sleeve_check_shirt.jpg', 'men'),
(13, 'Ciemna koszula', '14.00', 'Sharpen your casual style with the subtle print of this button-down shirt. Crafted from pure-cotton fabric with a button-down collar and short sleeves, it’s long-lasting and a firm favourite for year-round dressing.', 'short_sleeve_printed_shirt.jpg', 'men'),
(14, 'Biała koszula', '15.00', 'Delicate in hue and detailing, this woven stripe shirt is an elegant piece that will revive wardrobes in need. Crafted in pure-cotton, it’s breathable and lightweight finish is perfect for popping on over a vest on warm days. ', 'cotton_woven_stripe_shirt.jpg', 'women'),
(15, 'Piżama komiksowa', '14.50', 'Let TDM and his skeletal wolf companion join them on their dream adventures with these awesome pyjamas. Shooting them straight into TDM’s Diamond Dimension, you’d think he’d invented these awesome PJ’s himself, they’re crafted in soft fabric with an extra cool print.', 'tube_heroes_tdm_pyjamas.jpg', 'kids'),
(16, 'Sukienka irlandzka', '5.00', 'They’ll turn heads when they’re in this Irish tutu bodysuit and tights set. Featuring a ruffled tutu, a printed 4 leaf clover emblem and long sleeves, this set is completed with matching tights.', 'irish_tutu_bodysuit.jpg', 'baby'),
(17, 'Body dzieciece', '5.00', 'Get set up for the week ahead with this bumper pack of soft cotton bodysuits. With seven blue and yellow designs featuring pretty floral prints and sweet slogans, they’ll make an adorable addition to your baby bag. ', 'assorted_floral_bodysuit.jpg', 'baby'),
(18, 'Body czarne', '8.00', 'An essential pack for quick-dressing days, this 7 pack of bodysuits offers a different design for everyday of the week. With pretty florals, sweet slogans and bunny rabbit prints, they’ll look best dressed day in day out. ', 'floral_slogan_bodysuit.jpg', 'baby'),
(19, 'Piżama żółta', '4.00', 'Whether they’re learning the ABC’s or obsessed with underwater sea life, this colourful PJ set will add a fun twist to their night time routine. Crafted from soft and durable pure-cotton, the short sleeve and short leg design is printed in just a handful of our favourite deep-sea friends – they’re a great way to start exciting bedtime stories! ', 'deep_sea_friends_pyjamas.jpg', 'kids'),
(20, 'Sukienka niebieska', '10.00', 'Dressing up or down is a simple task in this amazing denim shirt dress, ready styled with a matching self-tie waist belt. Embroidered with colourful detailing and finished with an elasticated waistband, this comfy party option is made in cotton-rich fabric, meaning it’s easily cleaned and dried ready for the next day. ', 'belted_embroidered_denim_dress.jpg', 'kids'),
(21, 'Spodenki', '10.00', 'In a durable twill construction and versatile hue, these cargo shorts are a reliable pick for your weekend activities. The subtle leaf print adds some personal style and the multiple pockets will store your wallet or phone easily.', 'printed_cargo_shorts.jpg', 'men');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

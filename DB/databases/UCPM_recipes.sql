-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Host: 10.246.16.112:3306
-- Generation Time: Jun 05, 2014 at 05:20 PM
-- Server version: 5.1.73-1
-- PHP Version: 5.3.3-7+squeeze15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jellevandevelde`
--

-- --------------------------------------------------------

--
-- Table structure for table `UCPM_recipes`
--

CREATE TABLE IF NOT EXISTS `UCPM_recipes` (
  `recipeID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `yield` int(11) NOT NULL,
  `ingredients` text NOT NULL,
  `recipe` text NOT NULL,
  `cookingtime` int(11) NOT NULL,
  `picture` varchar(64) NOT NULL,
  PRIMARY KEY (`recipeID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `UCPM_recipes`
--

INSERT INTO `UCPM_recipes` (`recipeID`, `title`, `yield`, `ingredients`, `recipe`, `cookingtime`, `picture`) VALUES
(1, 'Orecchiette with Shrimp and Dressing', 4, '8 ounces uncooked orecchiette pasta,\n1 cup shelled green peas (about 1 pound unshelled green peas) or frozen green peas,\n1/2 pound medium shrimp, peeled and deveined,\n1 cup thinly sliced radishes,\n1/3 cup reduced-fat mayonnaise,\n1/4 cup fat-free buttermilk,\n3 tablespoons minced fresh chives,\n1 tablespoon chopped fresh dill,\n1/2 teaspoon salt,\n1/2 teaspoon grated lemon rind,\n1 tablespoon fresh lemon juice,\n1/4 teaspoon freshly ground black pepper,\n1/8 teaspoon ground red pepper,\n2 garlic cloves, minced', 'Cook pasta according to package directions, omitting salt and fat. Add peas and shrimp during last 2 minutes of cooking. Drain and rinse with cold water; drain.\n\nCombine pasta mixture and radishes in a large bowl. Combine mayonnaise and remaining ingredients in a small bowl; stir well with a whisk. Pour over pasta mixture, tossing to coat. Cover and let stand 20 minutes. Serve at room temperature, or cover and chill until ready to serve.', 30, 'orecchiete.jpg'),
(2, 'Burgers with Cheese', 4, '1/2 cup (2 ounces) crumbled blue cheese\r\n1/4 cup canola mayonnaise \r\n2 teaspoons chopped fresh thyme, divided\r\n1/4 teaspoon hot pepper sauce (such as Tabasco)\r\n1 pound lean ground sirloin \r\n1 teaspoon freshly ground black pepper, divided\r\n1/8 teaspoon kosher salt\r\n1/2 teaspoon extra-virgin olive oil \r\n4 (1/4-inch-thick) slices Vidalia or other sweet onion \r\nCooking spray\r\n2 teaspoons sherry vinegar\r\n4 (1 1/2-ounce) 100% whole-wheat hamburger buns with sesame seeds, toasted\r\n4 (1/4-inch-thick) slices tomato \r\n2 cups loosely packed arugula\r\n', 'Preheat grill to medium-high heat.\r\n\r\nCombine 1/2 cup blue cheese, mayonnaise, 1 teaspoon thyme, and hot pepper sauce in a small bowl; stir well.\r\n\r\nDivide beef into 4 equal portions, shaping each portion into a 1/2-inch-thick patty. Sprinkle beef evenly with 1/2 teaspoon black pepper and salt.\r\n\r\nBrush oil evenly over both sides of onion slices; sprinkle with remaining 1/2 teaspoon pepper. Place the patties and onions on grill rack coated with cooking spray; cover and grill for 3 minutes on each side. Set patties aside; keep warm. Place onion slices in a zip-top plastic bag; seal. Let stand 5 minutes; toss with remaining 1 teaspoon thyme and vinegar.\r\n\r\nSpread cut sides of buns evenly with mayonnaise mixture. Arrange 1/2 cup arugula on bottom half of each bun; top with 1 patty, 1 onion slice, and bun top.\r\n', 45, 'burgers.jpg'),
(3, 'Linguine with Sweet Pepper Sauce', 4, '8 ounces uncooked linguine \r\n1 pound red bell peppers, halved and seeded \r\n1 pound yellow bell peppers, halved and seeded\r\n3 tablespoons extra-virgin olive oil \r\n6 garlic cloves, thinly sliced\r\n3/4 teaspoon kosher salt\r\n1/4 teaspoon freshly ground black pepper\r\n1/4 cup small basil leaves\r\n1 (4-ounce) ball Burrata cheese\r\n', 'Preheat broiler to high.\r\n\r\nCook pasta according to package directions until al dente, omitting salt and fat. Drain pasta, reserving 1/4 cup cooking liquid.\r\n\r\nWhile pasta cooks, place bell peppers, skin sides up, on a foil-lined baking sheet; flatten with hand. Broil 8 minutes or until blackened. Wrap peppers in foil. Let stand 10 minutes; peel. Set aside half of 1 of each color bell pepper. Puree remaining peppers in a food processor.\r\n\r\nHeat a large skillet over medium-low heat. Add oil to pan; swirl. Add garlic; cook 2 minutes or until fragrant and soft, stirring occasionally. Add reserved 1/4 cup cooking liquid, pureed bell pepper, salt, and black pepper; stir with a whisk. Simmer 5 minutes or until thickened. Add pasta; cook 1 minute, tossing to combine.\r\n\r\nThinly slice reserved bell pepper. Place about 1 cup pasta mixture in each of 4 bowls; top each serving with sliced bell peppers, 1 tablespoon basil, and 1 ounce cheese. Serve immediately.\r\n', 33, 'linguini.jpg'),
(4, 'Creamy basil chicken dinner', 4, '9 ounces fresh fettuccine (found in the refrigerated section of most grocery stores)\r\n1 can (18 ounce) can Progresso Recipes Starters, Creamy Parmesan Basil flavor\r\n1 cup water\r\n1/4 cup fresh Parmesan, shaved or shredded\r\n2 cups arugula\r\n1 cup cooked rotisserie chicken, diced', 'Place pasta in a large, deep skillet or wok. Pour Recipe Starters over the pasta. Fill the can halfway with water (about 1 cup) and add it to the skillet. Stir to combine. Turn stove burner to medium heat and cook until pasta is tender, about 4-5 minutes.\r\n\r\nAdd chicken and cook until heated through. Remove from stove. Transfer to serving bowls. Top with fresh arugula and parmesan\r\n', 25, 'basil.jpg'),
(5, 'Italian dinner frittata', 4, '2 tablespoons butter or margarine\r\n1/2 cup sliced green onions (8 medium)\r\n8 eggs, beaten\r\n1 cup shredded mozzarella cheese (4 oz)\r\n1/2 cup chopped seeded tomato (1 small)\r\n2 tablespoons chopped fresh parsley\r\n1/8 teaspoon pepper\r\n1/2 cup shredded Parmesan cheese (2 oz)\r\nAdditional chopped tomato, if desired\r\nAdditional chopped fresh parsley, if desired\r\n', 'In 10-inch nonstick skillet, melt butter over medium heat. Add onions; cook 2 to 3 minutes, stirring frequently, until tender.\r\n\r\nStir in eggs, mozzarella cheese, tomato, parsley and pepper. Reduce heat to medium-low; cover and cook 9 to 11 minutes or until eggs are set around edge and light brown on bottom.\r\n\r\nSprinkle Parmesan cheese over top. Cover; remove from heat and let stand 3 to 4 minutes or until cheese is melted. If desired, garnish with additional chopped tomato and parsley.\r\n', 30, 'frittata.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

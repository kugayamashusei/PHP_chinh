/*
 Navicat Premium Data Transfer

 Source Server         : PHP_HaNoi
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : blogs

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 25/04/2020 11:05:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for authors
-- ----------------------------
DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT NULL,
  `position_notification` int(11) NULL DEFAULT NULL COMMENT 'admin_notification',
  `position_infomation` int(11) NULL DEFAULT NULL COMMENT 'admin_infomation',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `position_notification`(`position_notification`) USING BTREE,
  INDEX `position_infomation`(`position_infomation`) USING BTREE,
  CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`position_notification`) REFERENCES `notification_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `authors_ibfk_2` FOREIGN KEY (`position_infomation`) REFERENCES `infomation_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authors
-- ----------------------------
INSERT INTO `authors` VALUES (1, 'Bùi Huy Hoàng', 'buihuyhoang9a3@gmail.com', '123456', 1, 1, NULL);
INSERT INTO `authors` VALUES (13, 'Kugayama Shusei', 'kugayamashusei@yahoo.com.vn', '123123', 1, 2, NULL);

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Mask Sheet\r\n', 'Product Mask Sheet');
INSERT INTO `categories` VALUES (2, 'Cleansing', 'Product Cleansing');
INSERT INTO `categories` VALUES (3, 'Toner', 'Product Toner');
INSERT INTO `categories` VALUES (4, 'Emulsion', 'Product Emulsion');
INSERT INTO `categories` VALUES (5, 'Moisturizer', 'Product Moisturizer');

-- ----------------------------
-- Table structure for infomation_customer
-- ----------------------------
DROP TABLE IF EXISTS `infomation_customer`;
CREATE TABLE `infomation_customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_customer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of infomation_customer
-- ----------------------------
INSERT INTO `infomation_customer` VALUES (1, 'Nguyễn Văn A ', '0911784363', '91/8 Nguyễn Khoái Quận 4 ,TPHCM', 'nguyenvana@yahoo.com.vn', 1, '888888');
INSERT INTO `infomation_customer` VALUES (2, 'Nguyễn Văn B', '1283719283', '123 Lê Tấn Phát Quận 7, TP HCM', 'nguyenvanb@yahoo.com.vn', 1, '123123');
INSERT INTO `infomation_customer` VALUES (31, '123', NULL, NULL, 'buihuyhoang9a3@gmail.com', 1, '456');

-- ----------------------------
-- Table structure for notification_customer
-- ----------------------------
DROP TABLE IF EXISTS `notification_customer`;
CREATE TABLE `notification_customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_id` int(11) NULL DEFAULT NULL,
  `email_customer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `promotion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notification_customer
-- ----------------------------
INSERT INTO `notification_customer` VALUES (1, 2, 'toilaai@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (2, 2, 'toilaai@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (25, 2, 'sd11111', '125r452345');
INSERT INTO `notification_customer` VALUES (26, 2, 'sd11111', '125r452345');
INSERT INTO `notification_customer` VALUES (27, 2, 'sd11111', '125r452345');
INSERT INTO `notification_customer` VALUES (28, 2, 'sd11111', '125r452345');
INSERT INTO `notification_customer` VALUES (29, 2, 'sd11111', '125r452345');
INSERT INTO `notification_customer` VALUES (30, 2, 'sd11111', '125r452345');
INSERT INTO `notification_customer` VALUES (31, 2, 'toilaai@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (32, 2, 'toilaai@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (33, 2, 'toilaai@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (34, 2, 'sdfsfsf@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (35, 2, 'sdfsfsf@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (36, 2, 'toilaai@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (37, 2, 'toilaai@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (38, 2, 'toilaai@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (39, NULL, 'sdfsfsf@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (40, NULL, 'toilaai@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (41, NULL, 'toilaai@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (42, NULL, 'toilaai@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (43, NULL, 'toilaai@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (44, NULL, 'sdfsfsf@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (45, NULL, 'toilaai@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (46, NULL, 'sdfsfsf@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');
INSERT INTO `notification_customer` VALUES (47, NULL, 'toilaai@yahoo.com.vn', 'Be the first to know about new products, offers and promos. Plus,\r\n    get 20% off!');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contents` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author_id` int(11) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `price` double(30, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `author_id`(`author_id`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 'Beauty In A Food Mask Sheet (Aloe) (5 Pcs)', 'Containing aloe vera leaf juice, this beauty food mask sheet intensively hydrates and soothes sun stressed skin.', 'Extract mask and tightly apply on facial skin, following the contours of your face. After about 10-15 minutes, remove the sheet and pat face to absorb the remaining essence. Apply any remaining essence in the pouch to your neck and body.', 'Beauty_in_a_Food_Mask_Sheet_Aloe.png', 1, 1, 1, '2020-04-21 09:30:51', 13.22);
INSERT INTO `posts` VALUES (2, 'Beauty In A Food Mask Sheet (Aloe) (5 Pcs)', 'Containing aloe vera leaf juice, this beauty food mask sheet intensively hydrates and soothes sun stressed skin.', 'Extract mask and tightly apply on facial skin, following the contours of your face. After about 10-15 minutes, remove the sheet and pat face to absorb the remaining essence. Apply any remaining essence in the pouch to your neck and body.', 'Beauty_in_a_Food_Mask_Sheet_Gins.png', 1, 1, 1, '2020-04-21 09:30:51', 13.22);
INSERT INTO `posts` VALUES (3, 'Beauty in a Food Mask Sheet (Green Tea) (5 Pcs)', 'A mask sheet containing green tea extract that gently wraps stressed skin and helps form a skin protective barrier for healthy skin and reduces sebum production.', 'After cleansing & toning, remove mask and tightly apply on facial skin, following the contours of your face. After about 10-15 minutes, remove the sheet and pat face to absorb the remaining essence. Apply any remaining essence in the pouch to your neck and body.', '1627-22_Beauty_in_a_Food_Mask_Sh.png', 1, 1, 1, '2020-04-21 09:30:51', 13.22);
INSERT INTO `posts` VALUES (4, 'Beauty in a Food Mask Sheet (Lemon) (5 Pcs)', 'A mask sheet containing lemon extract that helps clear and brighten dark and dull skin.', 'After cleansing & toning, remove mask and tightly apply on facial skin, following the contours of your face. After about 10-15 minutes, remove the sheet and pat face to absorb the remaining essence. Apply any remaining essence in the pouch to your neck and body.', '1627-20_Beauty_in_a_Food_Mask_Sh.png', 1, 1, 1, '2020-04-21 09:30:51', 13.22);
INSERT INTO `posts` VALUES (5, 'Beauty In A Food Mask Sheet (Propolis&Bee Venom) (5 Pcs)', 'A mask sheet containing propolis extract & bee venom to nourish & hydrate skin for a moist and smooth complexion.', 'Extract mask and tightly apply on facial skin, following the contours of your face. After about 10-15 minutes, remove the sheet and pat face to absorb the remaining essence. Apply any remaining essence in the pouch to your neck and body.', 'Beauty_in_a_Food_Mask_Sheet_Prop.png', 1, 1, 1, '2020-04-21 09:30:51', 13.22);
INSERT INTO `posts` VALUES (6, 'Beauty In A Food Mask Sheet (Snail) (5 Pcs)', 'A hydrating mask sheet containing snail mucin that moisturizes and protects rough and dry skin for smooth and bouncy skin.', 'After cleansing & toning, remove mask and tightly apply on facial skin, following the contours of your face. After about 10-15 minutes, remove the sheet and pat face to absorb the remaining essence. Apply any remaining essence in the pouch to your neck and body.', '1627-13_Beauty_in_a_Food_Mask_Sh.png', 1, 1, 1, '2020-04-21 09:30:51', 13.22);
INSERT INTO `posts` VALUES (7, 'Vege Garden Basil Mask Sheet (5 Pcs)', 'Mask sheet soaked in a refreshing water formula infused with a refreshing touch of freshly picked basil to purify the pores.', 'Remove mask and tightly apply on skin, following the contours of your face. After about 10-20 minutes, remove the sheet and pat face to absorb the remaining essence. Apply any remaining essence in the pouch to your neck and body.', 'SKINFOOD_VEGE_GARDEN_BASIL_MASK.png', 1, 1, 1, '2020-04-21 09:30:51', 13.22);
INSERT INTO `posts` VALUES (8, 'Vege Garden Carrot Mask Sheet (5 Pcs)', 'Mask sheet soaked in moist ampoule infused with the freshness of brightly colored carrots to enhance vitality and energy in your skin.', 'Remove mask from package and tightly apply on skin, following the contours of your face. After 10-20 minutes, remove the sheet and pat face to absorb the remaining essence. Apply any remaining essence in the pouch to your neck and body.', 'SKINFOOD_VEGE_GARDEN_CARROT_MASK.png', 1, 1, 1, '2020-04-21 09:30:51', 13.00);
INSERT INTO `posts` VALUES (9, 'Vege Garden Cherry Tomato Mask Sheet (5 Pcs)', 'Mask sheet soaked in moist ampoule infused with healthy and vitamin-rich cherry tomatoes for clear and bright skin.', 'Remove mask from package and tightly apply on skin, following the contours of your face. After 10-20 minutes, remove the sheet and pat face to absorb the remaining essence. Apply any remaining essence in the pouch to your neck and body.', 'SKINFOOD_VEGE_GARDEN_CHERRY_TOMA.png', 1, 1, 1, '2020-04-21 09:30:51', 13.22);
INSERT INTO `posts` VALUES (10, 'Vege Garden Eggplant Mask Sheet (5 Pcs)', 'Mask sheet soaked in moist ampoule infused with concentrate made from well-ripened plump eggplants for radiant ski', 'Remove mask from package and tightly apply on skin, following the contours of your face. After 10-20 minutes, remove the sheet and pat face to absorb the remaining essence. Apply any remaining essence in the pouch to your neck and body.', 'SKINFOOD_VEGE_GARDEN_EGGPLANT_MA.png', 1, 1, 1, '2020-04-21 09:30:51', 13.22);
INSERT INTO `posts` VALUES (11, 'Vege Garden Kidney Bean Mask Sheet (5 Pcs)', 'Mask sheet soaked in an intensive moisturizing emulsion infused with the highly concentrated nutrition from kidney beans to help restore the skin to a healthy, energized condition.', 'Remove mask from pouch and tightly apply on skin, following the contours of your face. After about 10-20 minutes, remove the sheet and pat face to absorb the remaining essence. Apply any remaining essence in the pouch to your neck and body.', 'Vege_Garden_Kidney_Bean_Mask_She.png', 1, 1, 1, '2020-04-21 09:30:51', 13.22);
INSERT INTO `posts` VALUES (12, 'Vege Garden Mugwort Mask Sheet (5 Pcs)', 'Mask sheet soaked in a refreshing water formula infused with healthy moisture from the excellent purifier mugwort for a clear complexion', 'Remove mask and tightly apply on skin, following the contours of your face. After about 10-20 minutes, remove the sheet and pat face to absorb the remaining essence. Apply any remaining essence in the pouch to your neck and body.', 'SKINFOOD_VEGE_GARDEN_MUGWORT_MAS.png', 1, 1, 1, '2020-04-21 09:30:51', 13.00);
INSERT INTO `posts` VALUES (13, 'Black Sugar Perfect Bubble Foam', 'A perfect bubble foam that softly removes impurities and provides a moist finish with its resilient foam.', 'Apply the product onto wet skin, gently massage and rinse thoroughly with lukewarm water. Finish routine with cold water.', '3483_Vege_Garden_Peanut_Mask_She.png', 1, 1, 1, '2020-04-21 09:30:51', 13.22);
INSERT INTO `posts` VALUES (14, 'Black Sugar Perfect Cleansing Cream', 'A deep cleansing cream that transforms from a rich creamy texture to a silky oil to remove heavy makeup and impurities.', 'Take an adequate amount in palm and smooth over dry face. Massage and add water to emulsify. Rinse with lukewarm water or remove with a damp wash cloth.', '1907_BLACKSUGARPERFECTCLEANSINGC.png', 1, 2, 1, '2020-04-21 09:30:51', 25.99);
INSERT INTO `posts` VALUES (15, 'Black Sugar Perfect Scrub Foam', 'A gentle and effective scrub foam featuring black sugar granules, refined rice wine, and botanical oils. It works to remove dead skin cells and leave a smooth, flawless complexion. Fine black sugar granules gently remove impurities, while creamy foam soothes any irritation for the perfect cleanse.', 'Dispense a few pumps into wet palms, lather and rinse thoroughly with lukewarm water. Focus on areas with blackheads and flaky skin for better results.', '1906_BLACK_SUGAR_PERFECT_SCRUB_F.png', 1, 2, 1, '2020-04-21 09:30:51', 25.99);
INSERT INTO `posts` VALUES (16, 'Egg White Perfect Pore Cleansing Foam', 'A fresh cleansing foam that removes impurities and excessive oils for a smooth poreless complexion.', 'Dispense ample amount onto wet palm and massage onto face avoiding eye and mouth area. Rinse off with warm water.', 'Egg-White-Perfect-Pore-Cleansing.png', 1, 2, 1, '2020-04-21 09:30:51', 25.99);
INSERT INTO `posts` VALUES (17, 'Egg White Perfect Pore Cleansing Oil', 'A lightweight cleansing oil that effectively removes stubborn makeup and purifies pores leaving skin feeling fresh and soft.', 'Dispense 2-3 pumps into hands and massage onto your dry face, concentrating on areas with blackheads or impurities. Wet hands and continue massaging until the cleansing oil emulsifies into a milky texture, and rinse off with lukewarm water.', 'BANANAMOND-SHAKING-POINT-MAKEUP.png', 1, 2, 1, '2020-04-21 09:30:51', 25.99);
INSERT INTO `posts` VALUES (18, 'Egg White Perfect Pore Meringue Foam', 'A bubble foam that refreshingly clings to pores and creates clean skin with its fluffy, moist meringue bubbles.', 'After dampening your face with water, dispense on hands and apply generously to face, massaging it into skin. Thoroughly rinse with lukewarm water and finish with cold water.', 'Egg-White-Perfect-Pore-Meringue.png', 1, 2, 1, '2020-04-21 09:30:51', 25.99);
INSERT INTO `posts` VALUES (19, 'Egg White Pore Foam', 'A pore-refining cleanser with egg white extract that deep-cleanses pores. Enriched with albumin, it promotes firmer skin and minimizes pores.', 'Dispense an ample amount onto wet palms and lather. Rub face thoroughly in gentle massaging motions, and then wash off with lukewarm water. Splash on cold water for astringent effects.', '83-8_EGG_WHITE_PORE_FOAM_large.png', 1, 2, 1, '2020-04-21 09:30:51', 25.99);
INSERT INTO `posts` VALUES (20, 'Fresh Green Pure Broccoli Cleansing Foam', 'A gentle fluffy foaming cleanser enriched with 40.58% broccoli extract to minimize irritation and wash away oil and impurities.', 'Take an adequate amount and massage to lather. Rinse off with lukewarm water.', '71303_FRESH_GREEN_PURE_BROCCOLI.png', 1, 2, 1, '2020-04-21 09:30:51', 25.99);
INSERT INTO `posts` VALUES (21, 'Rice Brightening Scrub Foam', 'A micro-fine facial scrub foam made with rice bran water from the pristine Cheorwon region that cleanses and exfoliates.', 'Dispense an ample amount onto wet palms and lather. Rub face thoroughly in gentle massaging motions, and then wash off with lukewarm water. Splash on cold water for astringent effects.', '1819_RICE_BRIGHTENING_SCRUB_FOAM.png', 1, 2, 1, '2020-04-21 09:30:51', 25.99);
INSERT INTO `posts` VALUES (22, 'Rice Daily Brightening Cleansing Foam', 'A bouncy cleansing foam infused with Cheorwon Odae rice bran water that removes impurities and cleanses without stripping skin leaving it bright and soft.', 'Dispense an ample amount onto wet palms and lather to a foam. Gently massage on the face and wash off with lukewarm water.', 'Rice_Daily_Brightening_Cleansing.png', 1, 2, 1, '2020-04-21 09:30:51', 25.99);
INSERT INTO `posts` VALUES (23, 'Rice_Daily_Brightening_Cleansing.png', 'A cleansing tissue containing rice bran water that removes makeup while leaving skin bright and refreshed.', 'Lift the sticker and take out a tissue. Gently wipe off makeup and impurities from face. When cleansing around the eyes, close your eyes and gently wipe, keeping the product out of your eyes. After use, close the cover to prevent the contents from drying out.', '3556_Rice_Daily_Brightening_Clea.png', 1, 2, 1, '2020-04-21 09:30:51', 25.99);
INSERT INTO `posts` VALUES (24, 'Rice Daily Brightening Cleansing Water', 'A mild cleansing water that purifies skin without leaving it feeling stripped. Using micelle technology, it absorbs impurities while retaining skin\'s natural moisture.\r\n', 'Dampen a cotton pad with the cleansing water and lightly wipe to remove makeup and impurities.', 'Rice_Daily_Brightening_Cleasing.png', 1, 2, 1, '2020-04-21 09:30:51', 25.00);
INSERT INTO `posts` VALUES (25, 'Rice Daily Brightening Scrub Foam', 'A gentle scrub foam that helps to clear & brighten skin with Cheorwon Odae rice bran water and exfoliates with fine natural rice powder.', 'Dispense an ample amount onto wet palms and lather to a foam. Gently massage on the face and wash off with lukewarm water.', 'Rice_Daily_Brightening_Scrub_Foa.png', 1, 2, 1, '2020-04-21 09:30:51', 25.99);
INSERT INTO `posts` VALUES (26, 'Tea Tree Skin Clearing Bubble Foam', 'Non-irritating bubble foam containing 8% tea tree leaf extract, tea tree oil, and soothing herb extracts that gently cleanses sensitive and troubled skin with soft cushiony bubbles for a clear complexion.', 'Dispense a few pumps into wet palms and massage gently on entire face. Rinse off thoroughly with lukewarm water.', 'Tea_Tree_Skin_Clearing_Bubble_Fo.png', 1, 2, 1, '2020-04-21 09:30:51', 25.99);
INSERT INTO `posts` VALUES (27, 'Black Pomegranate Toner', 'A hydrating toner enriched with Black Pomegranate extract and hyaluronic acid to moisturize and plump skin, that balances and preps skin for the next layers of hydration.', 'After cleansing, pour an ample amount into palms and smooth onto the entire face and neck. Or pour on a cotton pad and wipe face & neck gently in outward motions.', 'Black_Pomegranate_Toner_1_large.png', 1, 3, 1, '2020-04-21 09:30:51', 11.35);
INSERT INTO `posts` VALUES (28, 'Gold Caviar Toner', 'A luxurious toner formulated with visible pure gold, which softens the skin, and caviar, which counteracts wrinkles to fortify, nourish, and firm the skin.', 'After cleansing, apply and gently pat the toner into the skin to help it fully absorb.', 'Gold_Caviar_Toner_1_large.png', 1, 3, 1, '2020-04-21 09:30:51', 11.35);
INSERT INTO `posts` VALUES (29, 'Peach Sake Toner', 'This lightweight, refreshing toner contains rice sake and peach extract, both rich in vitamins A and C, which work to minimize shine and the appearance of pores.', 'After cleansing face, apply product using a cotton pad or palms. Pat gently until the toner is completely absorbed.', '31049_PEACH_SAKE_TONER_1_large.png', 1, 3, 1, '2020-04-21 09:30:51', 11.35);
INSERT INTO `posts` VALUES (30, 'Premium Avocado Rich Toner', 'This moisture-rich emulsion features 15% avocado extract, avocado oil, and essential oils for maximum nutrition and instantly hydrates and locks in moisture for brighter, healthier skin.', 'After cleansing, apply product using a cotton pad or palms. Pat gently until the toner is completely absorbed.', 'Premium_Avocado_Rich_Toner_large.png', 1, 3, 1, '2020-04-21 09:30:51', 11.35);
INSERT INTO `posts` VALUES (31, 'Premium Lettuce & Cucumber Watery Toner', 'A cooling watery toner containing moisturizing lettuce and cucumber extract that deeply hydrate skin.', 'After cleansing face, apply product using a cotton pad or palms. Pat gently until the toner is completely absorbed.', 'Premium_Lettuce___Cucumber_Water.png', 1, 3, 1, '2020-04-21 09:30:51', 11.35);
INSERT INTO `posts` VALUES (32, 'Premium Peach Cotton Toner', 'A powder-in-toner that replenishes moisture to skin while controlling sebum for a smooth and shine-free complexion.', 'Shake well. After cleansing face, apply product using a cotton pad or palms. Pat gently until the toner is completely absorbed.', 'Premium_Peach_Cotton_Toner_large.png', 1, 3, 1, '2020-04-21 09:30:51', 11.35);
INSERT INTO `posts` VALUES (33, 'Premium Tomato Whitening Toner', 'A brightening toner containing 10% sun-kissed tomato extract and vitamin-C to enhance complexion.', 'After cleansing face, apply product using a cotton pad or palms. Pat gently until the toner is completely absorbed.', '70601_Premium_Tomato_Whitening_T.png', 1, 3, 1, '2020-04-21 09:30:51', 11.35);
INSERT INTO `posts` VALUES (34, 'Royal Honey Essential Toner', 'A toner featuring royal aged honey that creates a foundation for soft, glowing skin.', 'After cleansing, dispense onto a cotton pad and wipe face in an outward motion.', 'Royal_Honey_Essential_Toner_larg.png', 1, 3, 1, '2020-04-21 09:30:51', 11.35);
INSERT INTO `posts` VALUES (35, 'Royal Honey Moisture Toner', 'An ultra-moisturizing toner made with gentle & nourishing ingredients like royal black honey extract, that is safe on sensitive skin. Free of mineral oils, silicone oils, artificial fragrances & artificial colorants!', 'After cleansing, pump into palm and smooth over the entire face. Or use with a cotton pad to wipe face gently in outward motions.', 'Royal_Honey_Moisture_Toner_large.png', 1, 3, 1, '2020-04-21 09:30:51', 11.35);
INSERT INTO `posts` VALUES (36, 'Royal Honey Propolis Enrich Toner', 'An intense moisturizing toner with 15% matured propolis that hydrates layer by layer with a soft milky texture.', 'After cleansing face, apply product using a cotton pad or palms. Pat gently until the toner is completely absorbed.', 'Royal_Honey_Propolis_Enrich_Tone.png', 1, 3, 1, '2020-04-21 09:30:51', 11.35);
INSERT INTO `posts` VALUES (37, 'Yuja Water C Toner', 'An intensely hydrating toner that contains organic Goheung yuja extract and oil to brighten the skin from the inside out.', 'After cleansing, dispense onto a cotton pad and wipe face in an outward motion.', 'Yuja_Water_C_Whitening_Toner_lar.png', 1, 3, 1, '2020-04-21 09:30:51', 11.35);
INSERT INTO `posts` VALUES (38, 'Black Pomegranate Emulsion', 'A lightweight hydrating & firming emulsion enriched with Black Pomegranate extract and hyaluronic acid to moisturize and plump skin for a soft and supple complexion.', 'After toner/serum application, pour into palm and smooth onto the entire face and neck.', 'Black_Pomegranate_Emulsion_1_lar.png', 1, 4, 1, '2020-04-21 09:30:51', 18.22);
INSERT INTO `posts` VALUES (39, 'Gold Caviar Emulsion', 'An anti-aging and softening emulsion made with caviar and pure gold to moisturize and revitalize the skin for a firm and smooth complexion.', 'After toner or serum, apply and gently pat the emulsion into skin to help it fully absorb.', 'Gold_Caviar_Emulsion_1_large.png', 1, 4, 1, '2020-04-21 09:30:51', 18.22);
INSERT INTO `posts` VALUES (40, 'Peach Sake Emulsion', 'This lightweight, refreshing emulsion contains rice sake and peach extract, both rich in vitamins A and C, which work to minimize shine and the appearance of pores.', 'After applying the Peach Sake Toner, dispense an ample amount onto palms. Smooth gently over entire face until completely absorbed.', '31059_PEACH_SAKE_EMULSION_1_larg.png', 1, 4, 1, '2020-04-21 09:30:51', 18.22);
INSERT INTO `posts` VALUES (41, 'Premium Avocado Rich Emulsion', 'This moisture-rich emulsion features 15% avocado extract, avocado oil, and essential oils for maximum nutrition and instantly hydrates and locks in moisture for brighter, healthier skin.', 'After toner/essence application, dispense an ample amount onto palms. Smooth gently over entire face until completely absorbed.', 'Premium_Avocado_Rich_Emulsion_la.png', 1, 4, 1, '2020-04-21 09:30:51', 18.22);
INSERT INTO `posts` VALUES (42, 'Premium Lettuce & Cucumber Watery Emulsion', 'A watery emulsion containing moisturizing lettuce and cucumber extract that deeply hydrate skin.', 'After toner/serum application, dispense an ample amount onto palms. Smooth gently over entire face until completely absorbed.', 'Premium_Lettuce___Cucumber_Water (1).png', 1, 4, 1, '2020-04-21 09:30:51', 18.22);
INSERT INTO `posts` VALUES (43, 'Premium Peach Cotton Emulsion', 'An essence-type moisturizing lotion that replenishes essential moisture and smooths skin for a soft matte and shine-free complexion.', 'After toner/serum application, dispense an ample amount onto palms. Smooth gently over entire face until completely absorbed.', 'Premium_Peach_Cotton_Emulsion_la.png', 1, 4, 1, '2020-04-21 09:30:51', 18.22);
INSERT INTO `posts` VALUES (44, 'Premium Tomato Whitening Emulsion', 'A brightening emulsion containing 20% sun-kissed tomato extract and vitamin-C to enhance complexion.', 'After toner/serum application, dispense an ample amount onto palms. Smooth gently over entire face until completely absorbed.', 'Premium_Tomato_Whitening_Emulsio.png', 1, 4, 1, '2020-04-21 09:30:51', 18.22);
INSERT INTO `posts` VALUES (45, 'Royal Honey Essential Emulsion', 'A luxurious royal honey emulsion that hydrates skin for a soft, radiant complexion.', 'After toner or serum, pour adequate amount into palms and smooth onto face in an outward motion.', 'Royal_Honey_Essential_Emulsion_l.png', 1, 4, 1, '2020-04-21 09:30:51', 18.22);
INSERT INTO `posts` VALUES (46, 'Royal Honey Moisture Emulsion', 'An ultra-moisturizing emulsion made with gentle & nourishing ingredients like royal black honey extract, that is safe on sensitive skin. Free of mineral oils, silicone oils, artificial fragrances & artificial colorants!', 'After using toner, take an adequate amount on palm then apply on the face and neck. ', 'Royal_Honey_Moisture_Emulsion_la.png', 1, 4, 1, '2020-04-21 09:30:51', 18.22);
INSERT INTO `posts` VALUES (47, 'Royal Honey Propolis Enrich Emulsion', 'A hydrating emulsion with 15% matured propolis that thoroughly penetrates into the skin to maintain the oil-moisture balance.', 'After toner or essence application, apply an adequate amount to palms and gently massage on face in outward circular motions.', 'Royal_Honey_Propolis_Enrich_Emul.png', 1, 4, 1, '2020-04-21 09:30:51', 18.22);
INSERT INTO `posts` VALUES (48, 'Yuja Water C Emulsion', 'A hydrating emulsion that contains Goheung yuja extract and oil to restore skin\'s oil-moisture balance.', 'After toner or serum, pour an adequate amount into palms and smooth onto face in an outward motion.', 'Yuja_Water_C_Whitening_Emulsion.png', 1, 4, 1, '2020-04-21 09:30:51', 18.22);
INSERT INTO `posts` VALUES (49, 'Black Pomegranate Cream', 'A hydrating and plumping cream enriched with Black Pomegranate extract and hyaluronic acid that illuminates and softens rough skin for firm and glowing complexion.', 'After serum or emulsion application, apply an ample amount to entire face and neck.', 'Black_Pomegranate_Cream_2_large.png', 1, 5, 1, '2020-04-21 09:30:51', 20.25);
INSERT INTO `posts` VALUES (50, 'Black Sugar Perfect Reset Cream', 'A soft cream that comfortably wraps skin with moist 30% black sugar extract, refined rice wine, and PHA to smooth and clear skin. Made with niacinamide, it helps to brighten and reset skin for an even complexion.', 'After using serum, take a sufficient amount, and apply evenly all over your face. Lightly pat to absorb.', '1903-1_BLACK_SUGAR_PERFECT_RESET.png', 1, 5, 1, '2020-04-21 09:30:51', 20.25);
INSERT INTO `posts` VALUES (51, 'Gold Caviar Cream', 'A nourishing anti-aging cream made with caviar and gold to moisturize and revitalize the skin for a firm and smooth complexion.', 'As final step of skincare, apply on face in circular motions and pat to absorb.', 'Gold_Caviar_Cream_2_large.png', 1, 5, 1, '2020-04-21 09:30:51', 20.25);
INSERT INTO `posts` VALUES (52, 'Peach Jelly Soothing Gel 90', 'A soothing gel formulated with 90% of peach extract to refresh dehydrated skin. This multi-use gel can be used on the body & face.', 'Apply liberally to face and other skin areas that need soothing moisture relief. Pat gently to absorb', 'Peach_Jelly_Soothing_Gel_90_EDIT.png', 1, 5, 1, '2020-04-21 09:30:51', 20.25);
INSERT INTO `posts` VALUES (53, 'Premium Avocado Rich Cream', 'This moisture-rich cream features 35% avocado extract, avocado oil, and essential oils for maximum nutrition and instantly hydrates and locks in moisture for brighter, healthier skin.', 'After serum/emulsion application, take an ample amount onto palms. Smooth gently over entire face until completely absorbed.', 'Premium_Avocado_Rich_Cream_large.png', 1, 5, 1, '2020-04-21 09:30:51', 20.25);
INSERT INTO `posts` VALUES (54, 'Premium Lettuce & Cucumber Watery Cream', 'A water gel cream containing moisturizing lettuce and cucumber extract that deeply hydrate skin.', 'After serum/emulsion application, dispense an ample amount onto palms. Smooth gently over entire face until completely absorbed.', 'Premium_Lettuce___Cucumber_Water (2).png', 1, 5, 1, '2020-04-21 09:30:51', 20.25);
INSERT INTO `posts` VALUES (55, 'Premium Peach Cotton Fuzzy Cream', 'A brightening cream infused with peach extract and calamine for an added pink tint to complexion that looks soft & matte as a peach. Helps to brighten complexion and control sebum throughout the day. \r\n\r\n*This tone-up cream creates a pink tint that is best suited for those with fair to light skin. Can be used as a brightening cream/primer, but can create a light cast on those with medium to dark skin tones.', 'During the day, after emulsion application, apply a sufficient amount of product all over skin in a circular motion and patting on areas of the face with excessive sebum production.', 'Premium_Peach_Cotton_Fuzzy_Cream.png', 1, 5, 1, '2020-04-21 09:30:51', 20.25);
INSERT INTO `posts` VALUES (56, 'Premium Peach Cotton Juicy Cream', 'A fresh gel cream that keeps skin hydrated on the inside and feeling soft and smooth on the outside. It replenishes moisture with its juicy texture and controls sebum with a non-greasy finish.', 'After serum/emulsion application, apply a sufficient amount of product all over skin in a circular motion. Pat until completely absorbed.', 'Premium_Peach_Cotton_Juicy_Cream.png', 1, 5, 1, '2020-04-21 09:30:51', 20.25);
INSERT INTO `posts` VALUES (57, 'Premium Tomato Whitening Cream', 'A brightening cream containing 20% sun-kissed tomato extract and vitamin C to nourish and enhance complexion.', 'After serum/emulsion application, dispense an ample amount onto palms. Smooth gently over entire face until completely absorbed.', 'Premium_Tomato_Whitening_Cream_2.png', 1, 5, 1, '2020-04-21 09:30:51', 20.25);
INSERT INTO `posts` VALUES (58, 'Royal Honey 100 Hour Moisture Cream', 'An ultra-moisturizing cream made with gentle & nourishing ingredients like royal black honey extract, that is safe on sensitive skin. Free of mineral oils, silicone oils, artificial fragrances & artificial colorants!', 'After using toner, take an adequate amount on palm then apply on the face and neck. Can also be used on the rest of the body for gentle and soothing hydration. ', 'Royal_Honey_100_Hour_Moisture_Cr.png', 1, 5, 1, '2020-04-21 09:30:51', 20.25);
INSERT INTO `posts` VALUES (59, 'Royal Honey Essential Queen\'s Cream', 'A deep moisturizing cream featuring Queen’s Multi Nutri™ (a nourishing blend of propolis extract & royal jelly) and rich aged honey for a glowing, honey-glazed complexion.', 'After serum or emulsion, smooth onto face in circular motions.', 'Royal_Honey_Essential_Queen_s_Cr.png', 1, 5, 1, '2020-04-21 09:30:51', 20.25);
INSERT INTO `posts` VALUES (60, 'Royal Honey Propolis Enrich Cream', 'Skin barrier enhancing cream with 40% matured propolis that strengthens the moisture barrier layer by layer from the inside out.', 'After serum/emulsion application, apply a sufficient amount of product all over skin in a circular motion. Pat until completely absorbed.', 'Royal_Honey_Propolis_Enrich_Crea.png', 1, 5, 1, '2020-04-21 09:30:51', 20.25);
INSERT INTO `posts` VALUES (61, 'Yuja Water C Whitening Ampoule In Cream 2X', 'A brightening cream containing 60% Goheung yuja extract and bursting ampoule capsules that reduces the appearance of dark spots and hyperpigmentation. Vitamin C rich yuja extract & niacinamide work synergistically for a clear and even complexion.', 'After serum or emulsion, apply and smooth onto face in circular motions.', 'Yuja_Water_C_Whitening_Ampoule_i.png', 1, 5, 1, '2020-04-21 09:30:51', 20.25);

SET FOREIGN_KEY_CHECKS = 1;

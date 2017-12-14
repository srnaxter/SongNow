-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 06, 2017 at 06:55 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `listmusicadadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `listmusic_id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `listmusic_id`, `user`, `email`, `ip`, `text`, `approved`, `created_at`, `updated_at`) VALUES
  (6, 16, 'Juanjo Naxter', 'sr.naxter@ymail.com', '::1', 'La musica es vida.', 1, '2017-12-06 13:01:15', '2017-12-06 13:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `listmusic`
--

CREATE TABLE `listmusic` (
  `id` int(11) NOT NULL,
  `image` tinytext,
  `name` tinytext NOT NULL,
  `genero` tinytext NOT NULL,
  `anio` tinytext NOT NULL,
  `origin` tinytext NOT NULL,
  `creado` tinytext NOT NULL,
  `duracion` tinytext NOT NULL,
  `lugarencontrado` tinytext NOT NULL,
  `aniocreation` tinytext NOT NULL,
  `recomiendas` tinytext,
  `album` tinytext NOT NULL,
  `youtube` tinytext,
  `valoracion` tinytext,
  `link` tinytext,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listmusic`
--

INSERT INTO `listmusic` (`id`, `image`, `name`, `genero`, `anio`, `origin`, `creado`, `duracion`, `lugarencontrado`, `aniocreation`, `recomiendas`, `album`, `youtube`, `valoracion`, `link`, `description`, `created_at`, `updated_at`) VALUES
  (2, 'http://www.acordeonvirtual.com/static/img/videos/tuto.png', 'Corazon rojo', 'reggaeton', '2000', 'españa', 'America', '3:45', 'Duracion, Server, Live Medium, Raspberry Pi', 'Active', '42.3', 'http://www.opensuse.org/', 'http://en.opensuse.org/Portal:Documentation', '', '', 'El proyecto openSUSE es un programa comunitario patrocinado por Novell. Promoviendo el uso de Línux en todas partes, este programa provee de acceso libre y sencillo a openSUSE, una distribución completa de Línux. El proyecto openSUSE tiene tres metas principales: Hacer de openSUSE el Línux más fácil de obtener para cualquiera y que sea la distribución de Línux más ampliamente usada; aprovechar la colaboración del código abierto para hacer de openSUSE la distribución de Línux más usable del mundo y a su ambiente de escritorio para usuarios nuevos y experimentados; simplificar drásticamente el desarrollo y los procesos de empaquetamiento y abrirlos para hacer a openSUSE la plataforma por excelencia de los desarrolladores de Línux y vendedores de software.', '0000-00-00 00:00:00', '2017-11-29 15:21:02'),
  (13, 'http://listmusicwatch.com/images/yvzhuwbpy/mint.png', 'Linux Mint', 'Solaris', 'Debian, Ubuntu (LTS)', 'Ireland', 'i386, x86_64', 'Cinnamon, GNOME, KDE, MATE, Xfce', 'Beginners, Duracion, Live Medium', 'Active', '18.2', 'http://linuxmint.com/', 'http://community.linuxmint.com/', 'http://linuxmint.com/forum/', '', 'Linux Mint es una distribución basada en Ubuntu cuya meta es proveer una experiencia más completa lista para usarse mediante la inclusión de complementos del navegador, códecs multimedia, soporte de reproducción de DVD, Java y otros componentes. También agrega un escritorio y menús a la medida, varias herramientas de configuración únicas y una interface de instalación de paquetes basada en red. Linux Mint es compatible con los repositorios de programas de Ubuntu.', '2017-11-03 20:09:20', '2017-11-29 15:18:38'),
  (16, 'http://listmusicwatch.com/images/yvzhuwbpy/debian.png', 'Debian GNU/Linux', 'Linux', 'Independent', 'Global', 'arm64, armel, armhf, i386, mips, mipsel, ppc64el, s390x, x86_64', 'AfterStep, Awesome, Blackbox, Cinnamon, Fluxbox, flwm, FVWM, GNOME, i3, IceWM, ion, JWM, KDE, LXDE', 'Duracion, Live Medium, Server', 'Active', '9.2.1', 'http://www.debian.org/', 'http://www.debian.org/doc/', 'http://valoracion.debian.net/', 'http://bugs.debian.org/', 'El Proyecto Debian es una asociación de individuos que han hecho un frente común para crear un sistema operativo libre. Este sistema operativo es llamado Debian. Los sistemas Debian actualmente usan el kernel Línux. Línux es una pieza de software completamente libre iniciada por Linus Torvalds y apoyada por miles de programadores en el mundo. Por supuesto, lo que la gente quiere es software de aplicación: Programas que les ayuden a lograr lo que ellos quieran hacer, esto es, desde editar documentos para manejar un negocio hasta jugar juegos o escribir más software. Debian viene con más de 50,000 paquetes (programas precompilados empaquetados en un formato agradable para una fácil instalación en tu máquina) y todo ello sin costo. Es algo así como una torre: En la base está el núcleo y encima de él están todas las herramientas básicas, a continuación están todos los programas que ejecutas en tu computadora y en la punta de la torre está Debian -cuidadosamente organizando y ajustando todo ello para que trabajen todos juntos-.', '2017-11-29 15:16:25', '2017-11-29 15:16:25'),
  (17, 'http://listmusicwatch.com/images/yvzhuwbpy/manjaro.png', 'Manjaro Linux', 'Linux', 'Arch', 'Austria, Alemania, Francia', 'i686, x86_64', 'Budgie, Cinnamon, Deepin, GNOME, i3, KDE Plasma, LXDE, LXQt, MATE, Xfce', 'Duracion, Live Medium', 'Active', '17.0.6', 'https://manjaro.org/', 'https://lists.manjaro.org/', 'https://forum.manjaro.org/', 'https://manjaro.org/feedback/', 'Manjaro Linux es una distribución basada en Arch Linux orientada al escritorio y amigable con el usuario. Algunas de sus características más destacadas incluyen un proceso de instalación intuitivo, autodetección de equipo físico, &quot;scripts&quot; especiales del bash para manejar controladores gráficos y opciones extras de configuración del escritorio. Manjaro Linux viene en tres ediciones presentando los escritorios de Xfce, GNOME 3 (con el intérprete de comandos Cinnamon) y KDE.', '2017-11-29 15:24:00', '2017-11-29 15:24:00'),
  (18, 'http://listmusicwatch.com/images/yvzhuwbpy/ubuntu.png', 'Ubuntu', 'Linux', 'Debian', 'Isla de Man', 'armhf, i686, powerpc, ppc64el, s390x, x86_64', 'GNOME, Unity', 'Beginners, Duracion, Server, Live Medium', 'Active', '17.10', 'https://www.ubuntu.com/', 'https://wiki.ubuntu.com/UserDocumentation', 'https://ubuntuvaloracion.org/', 'https://bugs.launchpad.net/', 'Ubuntu es un completo sistema operativo Línux de escritorio, disponible gratuitamente con soporte tanto de la comunidad como profesional. La comunidad Ubuntu está construida sobre las ideas consagradas en el Manifiesto de Ubuntu: Que el software debe estar disponible libre de cargos, que las herramientas informáticas deben ser usables por gente en su propia lengua y a pesar de cualquier discapacidad, así como el que la gente debe poseer la libertad de personalizar y modificar sus programas en cualesquier forma que les parezca. &quot;Ubuntu&quot; es una antigua palabra africana que significa &quot;humanidad para los otros&quot;. La distribución Ubuntu trae el espíritu de Ubuntu al mundo del software.', '2017-11-29 15:26:28', '2017-11-29 15:26:28'),
  (19, 'http://listmusicwatch.com/images/yvzhuwbpy/antergos.png', 'Antergos', 'Linux', 'Arch', 'España', 'x86_64', 'Cinnamon, GNOME, KDE, MATE, Openbox, Xfce', 'Duracion, Live Medium', 'Active', '', 'https://www.antergos.com/', 'https://wiki.antergos.com/', 'https://forum.antergos.com/', 'https://bugs.antergos.com/', 'Antergos es un sistema operativo moderno, elegante y poderoso basado en Arch Linux. Cobró vida bajo el nombre de Cinnarch, combinando el escritorio de Cinnamon con la distribución de Arch Linux, pero el proyecto se ha apartado de sus metas originales y ahora ofrece una variedad de escritorios que incluyen a GNOME 3 (por defecto), a Cinnamon, a Razor-qt y a Xfce. Antergos también provee su propio programa gráfico de instalación.', '2017-11-29 15:28:38', '2017-11-29 15:28:38'),
  (20, 'http://listmusicwatch.com/images/yvzhuwbpy/solus.png', 'Solus', 'Linux', 'Independent', 'Irlanda', '', 'Budgie, GNOME, MATE', 'Duracion, Live Medium', 'Active', '3', 'https://solus-project.com/', 'https://wiki.solus-project.com/', 'https://solus-project.com/valoracion/', 'https://dev.solus-project.com/', 'Solus es una distribución de Línux hecha desde cero. Usa una versión derivada del manejador de paquetes PiSi, mantenida como &quot;eopkg&quot; dentro de Solus y un ambiente de escritorio personalizado hecho por ellos mismos llamado &quot;Budgie&quot;. Este escritorio, el cual puede ser configurado para emular la apariencia y sensación del de GNOME 2, está fuertemente integrado con el GNOME stack. La distribución está disponible sólo para computadoras de 64 bits.', '2017-11-29 16:57:33', '2017-11-29 16:57:33'),
  (48, 'http://listmusicwatch.com/images/yvzhuwbpy/fedora.png', 'Fedora', 'Linux', 'Independent', 'USA', 'armhf, i686, x86_64', 'Awesome, Cinnamon, Enlightenment, GNOME, KDE Plasma, LXDE, MATE, Openbox, Ratpoison, Xfce', 'Duracion, Server, Live Medium', 'Active', '27', 'https://getfedora.org/', 'http://docs.fedoraproject.org/', 'https://valoracion.fedoraforum.org/', 'https://bugzilla.redhat.com/', 'Fedora (antes Fedora Core) es una distribución Línux desarrollada por la comunidad que apoya al proyecto Fedora, propiedad de Red Hat. Fedora contiene programas distribuidos bajo una licencia libre y de código abierto que apunta a estar en la vanguardia de tales tecnologías. Fedora tiene una reputación por enfocarse en la innovación, integrar nuevas tecnologías tempranamente y trabajar de cerca con las comunidades Línux principales. El escritorio por defecto en Fedora es el ambiente GNOME y la interfaz por defecto es el GNOME Shell. Otros escritorios, incluyendo KDE, Xfce, LXDE, MATE y Cinnamon están disponibles. El proyecto Fedora también distribuye variaciones personalizadas de Fedora llamadas Fedora spins (variantes Fedora). Éstas están construidas con juegos específicos de paquetes de programas ofreciendo ambientes de escritorio alternativos o enfocándose en intereses específicos como juegos, seguridad, diseño, computación científica y robótica.', '2017-11-29 18:19:19', '2017-11-29 18:19:19'),
  (50, 'https://ubuntuvaloracion.org/customavatars/avatar335031_3.gif', 'Franixus', 'Linux', 'Debian', 'España', 'arm', 'MATE, GNOME', 'Duracion, Live Medium', 'Active', '10', 'http://trunix.com', 'http://trunix.com/doc', 'http://trunix.com/forum', 'http://trunix.com/bugs', 'Lorem fistrum pupita te va a hasé pupitaa ese pedazo de. Te voy a borrar el cerito al ataquerl hasta luego Lucas a wan condemor mamaar hasta luego Lucas tiene musho peligro. Te va a hasé pupitaa tiene musho peligro pupita la caidita a peich se calle ustée ese hombree condemor quietooor te voy a borrar el cerito. La caidita tiene musho peligro fistro sexuarl. Fistro ese pedazo de torpedo al ataquerl está la cosa muy malar quietooor a gramenawer qué dise usteer. Tiene musho peligro torpedo diodenoo la caidita a wan está la cosa muy malar apetecan al ataquerl tiene musho peligro tiene musho peligro torpedo. Está la cosa muy malar se calle ustée te voy a borrar el cerito qué dise usteer va usté muy cargadoo a peich llevame al sircoo quietooor sexuarl quietooor.', '2017-11-30 20:34:36', '2017-12-05 22:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
  (8, 'thinway', 'thinway@ymail.com', '$2y$10$ftG6n.AecTx55kb41WPNcOwzLI4TDpZccPFD8TlQ2dO.ist/DN9gm', '2017-12-05 22:06:44', '2017-12-05 22:06:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listmusic`
--
ALTER TABLE `listmusic`
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
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `listmusic`
--
ALTER TABLE `listmusic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
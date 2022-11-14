-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-08-2022 a las 18:52:28
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `oes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

DROP TABLE IF EXISTS `recommendations`;
DROP TABLE IF EXISTS `results`;
DROP TABLE IF EXISTS `rules`;
DROP TABLE IF EXISTS `scales`;
DROP TABLE IF EXISTS `scales_users`;


CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(1, 'Atencion en salud materno perinatal'),
(2, 'Deteccion temprana de enfermedades cardiovasculares'),
(3, 'Deteccion temprana de cancer'),
(4, 'Integracion del enfoque diferencial en las atenciones del prestador');

-- --------------------------------------------------------


CREATE TABLE `recommendations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recommendation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recommendations`
--

INSERT INTO `recommendations` (`id`, `recommendation`, `type`, `category`, `created_at`, `updated_at`) VALUES
(1, 'La estrategia y el nivel directivo de la organización (IPS) reconocen a las mujeres en edad fértil como sujetos de la atención en salud y orientan las acciones de gestión para la  implementación efectiva de las intervenciones individuales y colectivas, cuando sea el caso, definidas en la RIA materno perinatal, que demuestran impacto en su oferta de valor, en la operación de los procesos de atención y en los resultados de efectividad, seguridad y calidad de su Modelo de Atención y de prestación de servicios. Lo anterior incluye:\r\n', 'Estructura', 1, NULL, NULL),
(2, 'Con los lineamientos y políticas emanadas por la alta dirección, el gobierno clínico de la organización (IPS): define, lidera y promueve el diseño, despliegue e implementación de los procesos, procedimientos y mecanismos de monitoreo y mejoramiento necesarios para garantizar el despliegue y ejecución de la RIA materno perinatal, Lo anterior implica:', 'Estructura', 1, NULL, NULL),
(3, 'Muestra estrategias para fortalecer y desplegar acciones e intervenciones colectivas entendidas como la red de apoyo con la que cuenta la mujer gestante al interior de su comunidad. Lo anterior incluye:', 'Proceso', 1, NULL, NULL),
(4, 'Muestra estrategias para garantizar la atención a las familias y el acceso a las intervenciones dirigidas a la familia en la ruta de atención materno perinatal. Lo que incluye:', 'Proceso', 1, NULL, NULL),
(5, 'Cuenta con estrategias y procesos estandarizados en el marco de la APS, para brindar asesoría y atención preconcepcional a la mujer o la familia con intención \r\nreproductiva a corto plazo lo que incluye:', 'Proceso', 1, NULL, NULL),
(6, 'Cuenta con estrategias y procesos estandarizados en el marco de la APS, para garantizar el derecho a la interrupción voluntaria del embarazo IVE, lo que incluye:', 'Proceso', 1, NULL, NULL),
(7, 'Cuenta con procesos, de atención, idealmente programas diferenciales para la atención integral materno perinatal, considerando en su despliegue las características y necesidades del binomio madre hijo, dadas por los determinantes sociales y entornos. Lo anterior incluye:', 'Proceso', 1, NULL, NULL),
(8, 'Cuenta con procesos que muestran la articulación con los prestadores complementarios, lo anterior incluye:', 'Proceso', 1, NULL, NULL),
(9, 'Muestra seguimiento continuo y sistemático de los indicadores que dan cuenta del logro de los resultados en salud materno y perinatal; incluyendo actividades tales como: identificación, notificación de eventos, recolección, consolidación y análisis de la información por parte de los diferentes agentes, según el alcance de sus obligaciones (IPS, EAPB, DTS, MSPS, Superintendencia de Salud). Incluye:', 'Resultado', 1, NULL, NULL),
(10, 'Muestra seguimiento a las actividades de atención preconcepcional. Lo anterior incluye:', 'Resultado', 1, NULL, NULL),
(11, 'Seguimiento a las personas atendidas en el proceso Interrupción voluntaria del embarazo en el marco de la RIA materno perinatal.', 'Resultado', 1, NULL, NULL),
(12, 'Disminución de la morbilidad y mortalidad materna y perinatal. Lo anterior incluye:', 'Resultado', 1, NULL, NULL),
(13, 'Medición y evaluación de la experiencia del paciente alrededor de la ruta de atención materno perinatal. Lo anterior incluye:', 'Resultado', 1, NULL, NULL),
(14, 'La estrategia y el nivel directivo de la organización (IPS) orientan las acciones para la ejecución de los procesos de atención integral en salud en la población y la gestión del riesgo que permite incidir en el riesgo cardiovascular metabólico,  a través de la gestión y entrega efectiva de las intervenciones individuales y colectivas definidas en la RPMS y las guías de práctica clínica adoptadas e implementadas en la institución, que demuestran impacto en su oferta de valor, en la operación de los procesos de atención y en los resultados de efectividad, seguridad y calidad de su Modelo de Atención y de prestación de servicios.  Lo anterior incluye:', 'Estructura', 2, NULL, NULL),
(15, 'Siguiendo los lineamientos y políticas emanadas por la alta dirección, el gobierno clínico de la organización (IPS): define, lidera y promueve el diseño, despliegue e implementación de los procesos, procedimientos y mecanismos de monitoreo y mejoramiento necesarios, para garantizar la ejecución de una atención integral a la población adulta y adulta mayor en el marco de la gestión del riesgo cardio -vascular-metabólico.  Lo anterior implica:', 'Estructura', 2, NULL, NULL),
(16, 'Cuenta con estrategias para brindar información, en el marco de la promoción, prevención, detección, gestión y atención de las enfermedades relacionadas con el riesgo cardio vascular metabólico, a la población asignada a la IPS, de manera coherente con la caracterización, determinantes sociales, entornos y necesidades de los individuos, familias, comunidades objeto de atención de la IPS. Lo anterior incluye:', 'Proceso', 2, NULL, NULL),
(17, 'Cuenta con procesos de educación y comunicación para promover la salud, la incorporación de prácticas de cuidado y la adherencia al tratamiento, en la población con riesgo cardiovascular metabólico identificada por la IPS en el marco de la RPMS y la Atención primaria en salud. Lo anterior incluye:', 'Proceso', 2, NULL, NULL),
(18, 'Cuenta con estrategias y procesos estandarizados en el marco de la APS, para la identificación, confirmación diagnóstica de los riesgos y enfermedades manifiestas asociadas al desarrollo de enfermedades cardiovasculares, entre las que se incluyen:', 'Proceso', 2, NULL, NULL),
(19, 'Cuenta con estrategias e Intervenciones para la gestión de los riesgos o enfermedades manifiestas asociadas al desarrollo de las enfermedades cardiovasculares. Lo anterior incluye:', 'Proceso', 2, NULL, NULL),
(20, 'Puede mostrar estrategias de valoración integral para la detección temprana de lesión de órgano blanco en los pacientes con diagnóstico de diabetes mellitus. Lo anterior incluye:', 'Proceso', 2, NULL, NULL),
(21, 'Cuenta con procesos, de atención, idealmente programas diferenciales para la atención integral de los pacientes con Diabetes mellitus, que permitan lograr los objetivos de adherencia a tratamiento, control de la enfermedad y la identificación temprana de complicaciones y lesión de órgano blanco, considerando en su despliegue las características y necesidades de los pacientes, dadas por los determinantes sociales y entornos. Lo anterior incluye:', 'Proceso', 2, NULL, NULL),
(22, 'Cuenta con procesos que muestran la articulación con los prestadores complementarios, lo anterior incluye:', 'Proceso', 2, NULL, NULL),
(23, 'Implementa las intervenciones individuales definidas en el marco de la RPMS para los momentos de curso de vida de adulto y adulto mayor. Incluye:', 'Proceso', 2, NULL, NULL),
(24, 'Cuenta con procesos, de atención, idealmente programas diferenciales para la atención integral de los pacientes con HTA, que permitan lograr los objetivos de adherencia a tratamiento, control de la enfermedad y la identificación temprana de complicaciones y lesión de órgano blanco, considerando en su despliegue las características y necesidades de los pacientes, dadas por los determinantes sociales y entornos. Lo anterior incluye:', 'Proceso', 2, NULL, NULL),
(25, 'Muestra seguimiento de Personas identificadas con riesgo comportamental, metabólico, hipertensión arterial, diabetes mellitus, dislipidemia o enfermedad renal crónica en los que se evitó o retraso la progresión del riesgo y la enfermedad. Lo anterior incluye:', 'Resultado', 2, NULL, NULL),
(26, 'Seguimiento de Personas identificadas con riesgo cardio vascular y metabólico que mejoran sus condiciones de riesgo. Lo anterior incluye:', 'Resultado', 2, NULL, NULL),
(27, 'Disminución de la morbilidad y mortalidad por enfermedad cerebrovascular. Lo anterior incluye:', 'Resultado', 2, NULL, NULL),
(28, 'Medición y evaluación de la experiencia del paciente entorno a la atención en el eje cardio-cerebro-vascular-metabólico. Lo anterior incluye:', 'Resultado', 2, NULL, NULL),
(29, 'La estrategia y el nivel directivo de la organización (IPS) orientan las acciones para la promoción, detección temprana y gestión de la atención integral para cáncer de: (mama, cuello uterino y próstata), que demuestran impacto en su oferta de valor, en la operación de los procesos de atención y en los resultados de efectividad, seguridad y calidad de su Modelo de Atención y de prestación de servicios. Lo anterior incluye:', 'Estructura', 3, NULL, NULL),
(30, 'Siguiendo los lineamientos y políticas emanadas por la alta dirección, el gobierno clínico de la organización (IPS): define, lidera y promueve el diseño, despliegue e implementación de los procesos, procedimientos y mecanismos de monitoreo y mejoramiento necesarios para garantizar el despliegue y ejecución de las intervenciones para la detección temprana y gestión de la atención para cáncer de: (mama, cuello uterino y próstata), Lo anterior implica:\r\n', 'Estructura', 3, NULL, NULL),
(31, 'Cuenta con estrategias de información y educación en el marco de la promoción de la salud, prevención y gestión para la detección temprana de cáncer, a la población de influencia de la IPS, que consideran y son coherentes con la caracterización, determinantes sociales, entornos y necesidades de los individuos, familias, comunidades objeto de atención de la IPS. Lo anterior incluye:', 'Proceso', 3, NULL, NULL),
(32, 'La IPS cuenta con procesos estandarizados para fomentar la demanda inducida y/o espontánea de las personas correctas, según criterios de riesgo, a las intervenciones de prevención y detección temprana de cáncer. Lo anterior incluye:', 'Proceso', 3, NULL, NULL),
(33, 'Cuenta con procesos, de atención integral, idealmente programas diferenciales para la detección temprana y gestión de cáncer, que trazan la ruta del paciente de cada tipo de cáncer: cuello uterino, mama y próstata, en las que se identifican los elementos clave, basados en la evidencia, para guiar la aproximación del paciente a las intervenciones de prevención, tamizaje, diagnóstico, tratamiento, derivación a niveles de atención complementarios, seguimiento, monitoreo y vigilancia, entorno a equipos multidisciplinarios que responden de manera cohesionada a las necesidades del paciente. Lo anterior incluye:', 'Proceso', 3, NULL, NULL),
(34, 'Cuenta con procesos que muestran la articulación con los prestadores complementarios, lo anterior incluye:', 'Proceso', 3, NULL, NULL),
(35, 'Seguimiento a la atención en cáncer de cuello uterino', 'Resultado', 3, NULL, NULL),
(36, 'Seguimiento a la atención en cáncer de mama.', 'Resultado', 3, NULL, NULL),
(37, 'Seguimiento a la atención en cáncer de próstata.', 'Resultado', 3, NULL, NULL),
(38, 'Medición y evaluación de la experiencia del paciente alrededor de la atención en cáncer, lo anterior incluye:', 'Resultado', 3, NULL, NULL),
(39, 'La estrategia y el nivel directivo de la organización (IPS) orientan las acciones para la promoción y ejecución de una política integral en igualdad de género, inclusión social y etnicidad, lo anterior incluye:', 'Estructura', 4, NULL, NULL),
(40, 'Siguiendo los lineamientos y políticas emanadas por la alta dirección, el gobierno clínico de la organización (IPS): define, lidera y promueve el diseño, despliegue e implementación de intervenciones ajustadas al enfoque diferencial, igualdad de género, inclusión social y etnicidad garantizando una atención humanizada y de calidad dentro del marco de los\r\nderechos, la no discriminación y la equidad en el acceso a los servicios de salud. implica:', 'Estructura', 4, NULL, NULL),
(41, 'La IPS cuenta con información documentada de las actividades y procedimientos que se realizan en el servicio, acordes con su objetivo, alcance y enfoque diferencial, mediante guías de práctica clínica (GPC), procedimientos de atención, protocolos de atención y otros documentos que el prestador de servicios de salud determine, dicha información incluye talento humando, equipos biomédicos, medicamentos y dispositivos médicos e insumos requeridos', 'Estructura', 4, NULL, NULL),
(42, 'Cuenta con estrategias para dar información, en el marco de la promoción, prevención, gestión alrededor de una política de igualdad de género, inclusión social y etnicidad, a la población atendida por la IPS, que considere y sea coherente con la caracterización, determinantes sociales, entornos y necesidades de los individuos, familias, comunidades objeto de atención de la IPS. Lo anterior incluye:', 'Proceso', 4, NULL, NULL),
(43, 'Cuenta con procesos de educación y comunicación para promover la salud frente a temas de inclusión social y equidad de género y etnicidad, en la población identificada por la IPS en el marco de la Atención primaria en salud. Lo anterior incluye:', 'Proceso', 4, NULL, NULL),
(44, 'En el enfoque diferencial de la atención, la organización puede mostrar los siguientes resultados:', 'Resultado', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `porcentaje_estructura_perinatal` double NOT NULL,
  `porcentaje_proceso_perinatal` double NOT NULL,
  `porcentaje_resultado_perinatal` double NOT NULL,
  `porcentaje_estructura_cardio` double NOT NULL,
  `porcentaje_proceso_cardio` double NOT NULL,
  `porcentaje_resultado_cardio` double NOT NULL,
  `porcentaje_estructura_cancer` double NOT NULL,
  `porcentaje_proceso_cancer` double NOT NULL,
  `porcentaje_resultado_cancer` double NOT NULL,
  `porcentaje_estructura_enfoque` double NOT NULL,
  `porcentaje_proceso_enfoque` double NOT NULL,
  `porcentaje_resultado_enfoque` double NOT NULL,
  `PorcentajeEstructura` double DEFAULT NULL,
  `PorcentajeProceso` double DEFAULT NULL,
  `PorcentajeResultado` double DEFAULT NULL,
  `porcentaje_perinatal` double NOT NULL,
  `porcentaje_cardio` double NOT NULL,
  `porcentaje_cancer` double NOT NULL,
  `porcentaje_enfoque` double NOT NULL,
  `PorcentajeTotal` double DEFAULT NULL,
  `User` bigint(20) UNSIGNED NOT NULL,
  `Cinturon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `results`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rules`
--

CREATE TABLE `rules` (
  `id` bigint(20) NOT NULL,
  `rule` text NOT NULL,
  `recommendation` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rules`
--

INSERT INTO `rules` (`id`, `rule`, `recommendation`) VALUES
(1, 'Definición, despliegue y evaluación de una estrategia institucional que integre la RIA materno perinatal orientando las intervenciones y acciones a implementar y mejorar en los procesos organizacionales y en el modelo de atención, donde las gestantes y sus familias estén en el centro de la atención.	 ', 1),
(2, 'Ajustar la estrategia institucional, a las características, situación y determinantes de salud de la población materno-perinatal sujeto de la atención por parte de la IPS.	 ', 1),
(3, 'Desarrollo de las acciones de gestión y de las intervenciones individuales de la RIA materno perinatal en el marco de la política institucional de calidad, seguridad del paciente, atención centrada en el paciente, humanización y gestión de talento humano.	  ', 1),
(4, 'Formular, ejecutar y realizar seguimiento al plan integral de cuidado primario en salud, el cual debe incluir las intervenciones colectivas e individuales que contribuyen a los resultados en salud de las gestantes y el recién nacido.	 ', 1),
(5, 'Promocionar el desarrollo y participación de las gestantes y sus familias para ser agentes activos del cuidado de su salud, así como el desarrollo del plan integral y los mecanismos para acceder de manera efectiva a las intervenciones definidas en la RIAMP con adecuación sociocultural. 	 ', 1),
(6, 'Alinear la estrategia institucional a los diferentes modelos de atención donde se presten los servicios de salud a la mujer en etapas del ciclo reproductivo sin incurrir en conductas que configuren violencia contra la mujer; ello implica erradicar conductas institucionales como el trato indigno, violencia psicológica, omisión en la atención, negligencia, discriminación por razones de género, clase social, etnia, discapacidad u otra condición o situación.	 ', 1),
(7, 'Desarrollo e implementación de mecanismos institucionales de demanda inducida efectiva para las atenciones individuales y colectivas incluidos en la RIA materno perinatal.	 ', 1),
(8, 'Definición y empoderamiento de los líderes clínicos responsables de diseñar el modelo de atención en el marco de la RIA materno perinatal al interior de la organización. 	 ', 2),
(9, 'Definición de perfiles, competencias, roles y responsabilidades de los líderes necesarios para el despliegue y ejecución de la RIA materno- perinatal.\r\nContar con estrategias de referenciación, mejoramiento y búsqueda de las mejores prácticas disponibles en la evidencia científica que faciliten el despliegue y ejecución de la RIA materno-perinatal.', 2),
(10, 'Definir los procesos, procedimientos y mecanismos como una estrategia integral que garantiza el continuo de la atención dentro del marco de la RIA materno perinatal. 	  ', 2),
(11, 'Crear herramientas para armonizar los medios y recursos necesarios para garantizar la estandarización de los procesos de atención, la integración de procesos, escenarios, servicios y disciplinas clínicas necesarias para responder de manera efectiva a los objetivos y metas definidas para el abordaje, gestión de despliegue y ejecución de la RIA materno-perinatal.	 ', 2),
(12, 'En el marco de la gobernanza clínica, y como resultado de las definiciones estratégicas, la organización puede mostrar una estrategia organizacional para el despliegue y ejecución de la RIA materno perinatal estandarizado y formalmente constituido, que cuenta con:\r\n•	Visibilidad en la estructura funcional de la organización y articulación con los procesos institucionales tanto a líderes del proceso como colaboradores de la organización.\r\n•	Procesos de atención estandarizados, que siguen la ruta del usuario, están soportados en la mejor y más actualizada evidencia científica y que cuenta con estrategias e intervenciones claramente definidas para garantizar, que las mejores prácticas para la prevención y gestión de la RIA materno perinatal se implementan y suceden en la atención del mundo real.\r\n•	Definición, conformación y gestión de un equipo Interdisciplinario responsable de la operación de los procesos de atención, que tiene:\r\n\r\no	Perfiles, competencias, roles y responsabilidades claramente definidos para la operación de los procesos de atención de cara al usuario.\r\no	Programas de capacitación, entrenamiento y educación para soportar, mantener las competencias, fomentar el trabajo en equipo y el desarrollo de equipos de alto desempeño, enfocados en derechos sexuales y reproductivos, derechos de la mujer, enfoque de género, enfoque interseccional. Roles y estereotipos frente a la sexualidad y reproducción de hombres y las mujeres. \r\no	Sistemas de comunicación efectiva.\r\no	Evaluación sistemática y periódica del desempeño del equipo Interdisciplinario.	 ', 2),
(13, 'Un sistema de Información de permite la consolidación de la información para la medición y evaluación de los indicadores definidos por la RIA materno-perinatal.		 ', 2),
(14, 'Estrategias para desplegar, evaluar y generar una cultura organizacional por la gestión de la RIA materno perinatal en toda la organización.	 ', 2),
(15, 'Procesos de referenciación y de aprendizaje colaborativo que permite generar relaciones de confianza y articular otras instituciones y actores en el propósito común de impactar los resultados de salud en el marco de la RIA materno perinatal.	 ', 2),
(16, 'Contar con estrategias de referenciación, mejoramiento y búsqueda de las mejores prácticas disponibles en la evidencia científica que faciliten el despliegue y ejecución de la RIA materno-perinatal.	  ', 2),
(17, 'Mecanismos o estrategias para el fortalecimiento de la red familiar, social y comunitaria de las gestantes, a fin de desarrollar capacidades para el cuidado de la salud de las gestantes y los recién nacidos. 	 ', 3),
(18, 'Desarrollo de conciencia comunitaria en relación con los derechos humanos y sexuales y reproductivos; la participación del hombre y otros actores con poder de decisión (conocimiento de necesidades de la mujer, signos de peligro, comunicación, apoyo y paternidad); y la vigilancia comunitaria.  	  ', 3),
(19, 'Fortalecimiento de los vínculos como medio para reforzar el apoyo social no solo de los diferentes actores familiares y comunitarios, sino también con la institucionalidad, transporte comunitarios, creación o fortalecimiento de hogares maternos y articulación de los Agentes de la Medicina Tradicional (AMT), como las parteras.	 ', 3),
(20, 'Favorecer espacios de dialogo participativo entre las instituciones sectoriales EAPB, IPS, DTS y la comunidad que fomenten la exigibilidad de los derechos sexuales y reproductivos.	 ', 3),
(21, 'Creación y mantenimiento de los entornos favorables (enfoque eficaz que persigue la creación de un conjunto integral de intervenciones en un contexto físico definido) entendidos desde entorno hogar, entorno comunitario, entorno laboral asegurándose la creación de espacios de: \r\n•	Información de la salud para aumentar el conocimiento sobre un tema, en este caso lo concerniente a la prevención de complicaciones durante la gestación, cuidados posparto y del recién nacido. \r\n•	Educación y comunicación para la salud: La educación para la salud se orienta al desarrollo de capacidades (a nivel cognitivo, valorativo o práctico) de las personas, familias y comunidades, que les permita comprender y transformar la realidad).\r\n•	Canalización: La canalización pretende orientar y direccionar a las personas, familias y comunidades a los servicios sociales o de salud disponibles en el territorio, en este caso a las gestantes y sus recién nacidos. 	 ', 3),
(22, 'Educación para la salud orientada al desarrollo de capacidades y fortalecimiento de los vínculos, redes y relaciones de cuidado, orientados a promover relaciones de cuidado mutuo, disposición sensible para el apoyo y acompañamiento a las mujeres gestantes y sus familias. Esto implica promover reconocimiento de los vínculos de cuidado inmediato que se encuentran en la familia, vecinos, comunidad – barrio- vereda-.	 ', 4),
(23, 'Fortalecer las capacidades de la familia para el cuidado de la gestante y del recién nacido (conocimiento de necesidades de la mujer, signos de peligro, comunicación, apoyo y paternidad responsable entre otros).	  ', 4),
(24, 'Atención básica, orientación y consejería integral para la promoción de la participación de las familias en el cuidado de las gestantes. Entendiéndose como: \r\n•	Profundizar en la identificación de capacidades y condiciones de funcionalidad de las familias, así como de factores protectores y detección de factores de riesgo de la salud familiar que inciden en el estado de salud de la gestante, \r\n•	Brindar orientaciones básicas que aporten a la dinámica y equilibrio de las familias en función del logro en salud materna y perinatal, y derivar a atención especializada o a otras rutas de atención de acuerdo con los hallazgos. \r\n•	Crear estructuras de apoyo que permitan el despliegue e implementación para la adaptabilidad y progresividad de criterios poblaciones y criterios territoriales descritos en la RIAMP.	 ', 4),
(25, 'Talento humano formado, interdisciplinario con competencias para desplegar cada una de las intervenciones de la atención preconcepcional, considerando las características, determinantes y necesidades de la población objeto de la IPS.	 ', 5),
(26, 'Estrategias para inducir y facilitar el acceso a la atención preconcepcional.	  ', 5),
(27, 'Procedimientos y protocolos para la valoración, identificación de riesgos y formulación de un plan integral de atención y asesoría que incluye:\r\n•Valoración clínica estandarizada (lista chequeo) de:\r\no	Antecedentes personales.\r\no	Antecedentes ginecológicos y reproductivos.\r\no	Antecedentes genéticos y familiares.\r\no	Hábitos de alimentación y nutrición.\r\no	Consumo de tabaco, alcohol y otras sustancias psicoactivas.\r\no	Valoración de condiciones psicológicas y sociales.\r\n•Valoración paraclínica:\r\no	Antígeno superficie hepatitis B\r\no	Tamizaje para detección temprana de cáncer de cuello uterino \r\no	Glicemia\r\no	Hemoclasificación\r\no	Hemograma\r\no	Hemoparásitos (en zonas endémicas)\r\no	IgG G toxoplasma\r\no	IgG G rubéola\r\no	IgG G varicela\r\no	Prueba treponémica rápida para sífilis\r\no	Urocultivo con concentración mínima inhibitoria (CMI)\r\no	VIH (prueba rápida), con asesoría pre y pos-test.\r\n\r\n•Plan de tratamiento primario que incluye asesoría y provisión de un método anticonceptivo, de acuerdo con los criterios de elegibilidad y el deseo de la mujer y derivación a consultas de odontología, nutrición, psicología, trabajo social y especializadas según riesgos identificados. ', 5),
(28, 'Procesos de educación y apoyo para el cuidado ajustados a las características, individualidades y necesidades de los usuarios.	  ', 5),
(29, 'Talento humano formado, interdisciplinario con competencias para desplegar cada una de las intervenciones de los procesos de IVE, considerando las características, determinantes y necesidades de la población objeto de la IPS.	 ', 6),
(30, 'Procedimientos y protocolos estandarizados que incluyen:\r\n•	Consulta inicial y valoración integral de la salud de la mujer, que incluye la valoración de la salud mental y del estado emocional. \r\n•	Orientación y asesoría para la toma de decisiones frente a las causales previstas por la sentencia C-355 de 2006.\r\n•	Interrupción farmacológica y/ no farmacológica del embarazo.\r\n•	Provisión anticonceptiva (según criterio médico o a solicitud de la mujer).\r\n•	Control post aborto.', 6),
(31, 'Procesos de educación y apoyo para el cuidado ajustados a las características, individualidades y necesidades de los pacientes.	', 6),
(32, 'Talento humano formado, interdisciplinario con competencias para desplegar cada una de las intervenciones de los procesos para la atención de la ruta materno perinatal. 	 ', 7),
(33, 'Procesos para garantizar la captación temprana de gestantes a primera consulta prenatal (antes de la semana 10).	 ', 7),
(34, 'Procesos y protocolos estandarizados para el control prenatal:\r\n•	Consulta de control y seguimiento con las frecuencias definidas y por la especialidad(es) determinadas por la RIA, incluyendo consulta odontológica, consulta de nutrición, y demás que se consideren necesarias para hacer una evaluación holística multidisciplinaria.\r\n•	Valoraciones clínicas y paraclínicas en cada consulta de control prenatal, para evaluar, clasificar y reclasificar el riesgo obstétrico e identificar complicaciones maternas y fetales, con las frecuencias y especificaciones definidas por la RIA.\r\no	Urocultivo de seguimiento en gestantes que reciben tratamiento para bacteriuria asintomática.\r\no	Prueba para toxoplasma según recomendación de la RIA.\r\no	Prueba para VIH\r\no	Prueba para sífilis según indicación de la RIA.\r\no	Antígeno superficie hepatitis B\r\no	IgG G rubéola\r\no	IgG G varicela\r\no	Ecografía obstétrica.\r\no	Ecografía obstétrica para la detección de anomalías estructurales. \r\no	Prueba de tolerancia oral a la glucosa (PTOG) con 75 gramos (g) de glucosa. \r\no	Hemograma. \r\no	Tamización para estreptococo del grupo B.\r\no	Gota gruesa en zonas endémicas de malaria.\r\n•	Plan integral de cuidado acorde con la edad gestacional, el riesgo y estado de salud de la gestante. (Micronutrientes, vacunación, prevención de eventos trombóticos, prevención y manejo infecciones y parasitosis).\r\n•	Plan de parto según riesgo y estado de salud de la gestante, incluye proceso de derivación a una unidad de cuidado obstétrico de mayor complejidad para lo cual deben existir criterios bien definidos, basados en la evidencia científica.', 7),
(35, 'Procesos y protocolos para la atención del parto incluyendo:\r\n•	Parámetros estandarizados de evaluación clínica y paraclínica al ingreso a la atención del parto. (definidos en la RIA).\r\n•	Atención del primer periodo del parto:\r\no	Monitoreo y vigilancia: signos vitales, fetocardia y partograma.\r\no	Manejo de dolor.\r\no	Acompañamiento por persona que la gestante defina (atención humanizada).\r\no	Apoyo físico, emocional y psicológico.\r\n•	Expulsivo\r\n•	Alumbramiento.', 7),
(36, 'Procesos y protocolos para la atención del puerperio.\r\n•	Estrategias para identificación y gestión temprana de complicaciones: hemorragia e infección.\r\n•	Puericultura y promoción de lactancia materna.\r\n•	Asesoría y apoyo en métodos de anticoncepción.\r\n•	Criterios de alta e información en salud sobre signos de alarma para consultar.', 7),
(37, 'Procesos y protocolos para el manejo de complicaciones obstétricas:\r\n•	Hemorragia obstétrica posparto.\r\n•	Urgencias y emergencias hipertensivas del embarazo\r\n•	Sepsis.', 7),
(38, 'Procesos y protocolos para la atención del recién nacido\r\n•	Enfoque antenatal de riesgo. \r\n•	Atención integral del recién nacido en sala de partos/nacimientos.\r\no	Limpieza de vía aérea, secado.\r\no	Pinzamiento oportuno del cordón umbilical.\r\no	Clasificación de Apgar y reanimación. Guías de Soporte Vital Avanzado Neonatal (NALS)\r\no	Silverman si hay dificultad respiratoria.\r\no	Profilaxis ocular y umbilical y aplicación Vit K.\r\no	Toma sangre de cordón: hemoclasificación, TSH neonatal y sífilis, esta última según riesgo.\r\no	Identificación del RN (manilla).\r\no	Promover contacto piel a piel y lactancia materna.\r\n•	Cuidados del RN\r\no	Vacunación: BCG, Hepatitis B.\r\no	Tamizaje para hipotiroidismo (obligatorio) y otros errores innatos del metabolismo (según normatividad y/o necesidad identificada)\r\no	Tamizaje cardiopatías congénitas.\r\no	Tamizaje visual y auditivo.\r\n•	Decisión del egreso hospitalario\r\no	Entrega de recomendaciones previas al egreso hospitalario: Certificado RN vivo.  Expedición y registro en el carné único de salud infantil y diligenciamiento de la Historia Clínica Perinatal Simplificada. \r\no	Plan de control y seguimiento ambulatorio del RN.\r\nProcesos, guías y protocolos para la atención de las complicaciones perinatales y/o postnatales del Recién nacido y procesos de referenciación efectivos al nivel de complejidad adecuado.\r\n•	Manejo peri y postnatal del recién nacido deprimido\r\n•	Manejo peri y postnatal del recién nacido meconiado\r\n•	Manejo peri y postnatal del recién nacido con Restricción del Crecimiento Intrauterino (Pequeño para la Edad Gestacional)\r\n•	Manejo peri y postnatal del recién nacido hijo de madre diabética\r\n•	Manejo peri y postnatal del recién nacido hijo de madre con enfermedad hipertensiva del embarazo\r\n•	Manejo peri y postnatal del recién nacido hijo de madre isoinmunizada grave (Zonas II-III de Liley) sin tratamiento antenatal.\r\n•	Manejo peri y postnatal del recién nacido hijo de madre con ruptura prematura de membranas con más de 24 horas de sucedida.\r\n•	Manejo peri y postnatal del recién nacido hijo de madre con placenta sangrante (Abrupcio de placenta - Placenta previa).\r\n•	Atención del niño hijo de madre con Hepatitis B, con Infección por VIH, con Sífilis gestacional o con Exposición prenatal a Virus Zika.\r\n•	Detección de Anomalías congénitas.\r\n•	Atención del Recién Nacido con Asfixia Perinatal.\r\n•	Atención del Recién Nacido Prematuro.\r\n•	Atención del Recién Nacido con Sepsis Neonatal temprana.\r\n•	Atención del Recién Nacido con Trastorno Respiratorio.', 7),
(39, 'Información en salud acordes con las características, individualidades y necesidades de los pacientes en todas las fases de la ruta de atención materno perinatal.', 7),
(40, 'Curso de preparación para la maternidad y la paternidad.', 7),
(41, 'Definición y estandarización de procesos de referencia.	', 8),
(42, 'Trazabilidad de la ruta de atención del usuario en su proceso integral.', 8),
(43, 'Evaluación, medición, monitoreo y seguimiento de los procesos de referenciación entre el prestador primario y complementario.', 8),
(44, 'Socializar los resultados en salud esperados, así como los indicadores que los conforman.', 9),
(45, 'Notificar en los sistemas de información la totalidad de los eventos sujeto de seguimiento frente a la salud materno perinatal. (SIVIGILA)	', 9),
(46, 'Realizar análisis individuales de los casos que correspondan a indicadores de impacto, a que haya lugar, según los protocolos de vigilancia epidemiológica. (SIVIGILA)	 ', 9),
(47, 'Fortalecer metodología para análisis colectivo de eventos como la mortalidad y morbilidad materna y perinatal.	 ', 9),
(48, 'Diseñar planes de mejoramiento a partir de los análisis de los eventos. (COMITES DE ESTADISTICAS VITALES).	 ', 9),
(49, 'Analizar los resultados de los indicadores de impacto en virtud de la correlación que exista con el alcance de las metas de los indicadores intermedios y de proceso correspondientes.	', 9),
(50, 'Captura, medición, evaluación, análisis y seguimiento al indicador propuesto dentro de la RIAMP:\r\n•	Proporción de consultas para la atención preconcepcional en mujeres con intención reproductiva a corto plazo.', 10),
(51, 'Captura, medición, evaluación, análisis y seguimiento al indicador propuesto dentro de la RIA:\r\n•	Proporción de solicitudes de IVE que se hacen efectivas según criterio de oportunidad (5 días).', 11),
(52, 'Control prenatal:\r\n•	Proporción de gestantes con captación temprana al control prenatal (antes semana 10) \r\n•	Proporción de gestantes que asisten a control prenatal, en el periodo del total de inscritas.\r\n•	Proporción de gestantes con el total de paraclínicos requeridos según edad gestacional.\r\n•	Proporción de gestantes con tamizaje para VIH.\r\n•	Porcentaje de gestantes que se tomaron la prueba de tamizaje para sífilis durante el periodo informado.\r\n•	Porcentaje de gestantes diagnosticadas con sífilis durante el periodo informado. \r\n•	Proporción de mujeres con clasificación de alto riesgo cuyo control prenatal es practicado por especialista del total de mujeres clasificadas como alto riesgo.\r\n•	Proporción de gestantes con consejería de lactancia materna. \r\n•	Proporción de mujeres con cuatro o más controles prenatales durante la gestación por proveedor de servicios de salud calificado.\"	 ', 12),
(53, 'Curso de preparación para la maternidad y la paternidad:\r\n•	Cobertura de asistencia a curso de preparación de la maternidad y la paternidad (7 sesiones).\"	 ', 12),
(54, 'Parto: \r\n•	Proporción de cesáreas del total de partos (vaginales más cesáreas).\r\n•	Porcentaje de partos en los que se diligencia el partograma del total de partos atendidos.\r\n•	 Porcentaje de partos en los que la mujer tiene acompañante (seleccionado) durante el trabajo de parto y parto del total de partos atendidos\"	 ', 12),
(55, 'Puerperio: \r\n•	Porcentaje de partos con monitoria de signos vitales (cada 15 minutos) durante el puerperio inmediato.\r\n•	Proporción de gestantes que reciben valoración prealta hospitalaria según tiempo establecido (parto 24 horas y cesárea 48 horas).\r\n•	Proporción de mujeres con asesoría en anticoncepción y suministro de método anticonceptivo postparto o postaborto antes del alta.\"	 ', 12),
(56, 'Atención de emergencias obstétricas: \r\n•	Razón de Morbilidad Materna Extrema (MME) \r\n•	Índice de mortalidad materna de los casos de MME\r\n•	Relación Morbilidad Materna Extrema / Mortalidad Materna.\r\n•	 Proporción de MME con tres o más criterios (casos que agrupan tres o más criterios) \r\n•	Oportunidad de referencia en los casos de MME.\"	 ', 12),
(57, 'Atención de recién nacido: \r\n•	Proporción de recién nacidos que reciben valoración prealta hospitalaria.\r\n•	Cobertura de tamizaje para hipotiroidismo.\r\n•	Cobertura de tamizaje visual y tamizaje auditivo en el neonato.\r\n•	Cobertura de tamizaje para cardiopatía congénita.\r\n•	Proporción de recién nacidos con tamizaje para Hepatitis B (según riesgo).\r\n•	Proporción de recién nacidos con tamizaje para sífilis congénita (según riesgo).\r\n•	Proporción de recién nacidos con tamizaje para VIH (según riesgo).\r\n•	Proporción de recién nacidos con alteraciones del metabolismo, del tamizaje visual, auditivo y cardiaco, que son remitidos.\r\n•	Tasa de incidencia de sífilis congénita.\r\n•	Tasa de incidencia de Hipotiroidismo Congénito \r\n•	Porcentaje de casos de bajo peso al nacer.\r\n•	Tasa de mortalidad perinatal.\r\n•	Tasa de mortalidad neonatal temprana.', 12),
(58, 'Atención de recién nacido enfermo: \r\n•	Oportunidad de referencia en casos de enfermedad neonatal.', 12),
(59, 'Procesos de evaluación, medición y análisis de la experiencia del paciente.	 ', 13),
(60, 'Procesos de referenciación en herramientas y estrategias para la evaluación de la experiencia del paciente	 ', 13),
(61, 'Procesos de educación institucional sobre la valoración de la experiencia del paciente frente a la ruta de atención.	 ', 13),
(62, 'Definición, despliegue y evaluación de una estrategia institucional alrededor de la estandarización de la atención en el eje cardio-cerebro-vascular-metabólico que oriente las intervenciones y acciones a implementar y considere la caracterización, entendimiento de los determinantes sociales, la identificación de las necesidades de la población de influencia de la IPS, las Rutas Integrales de Atención en Salud; así como la necesidad de avanzar en la gestión integral del riesgo con énfasis en el riesgo cardio vascular metabólico de acuerdo a las guías de práctica clínica adoptadas, los servicios habilitados y contratados con los aseguradores y la gestión correspondiente para garantizar resultados en salud en los sujetos.', 14),
(63, 'Articulación de la estrategia organizacional con las políticas institucionales de atención integral, calidad, seguridad del paciente, atención centrada en el paciente, humanización y gestión de talento humano.', 14),
(64, 'Definición y empoderamiento de los líderes clínicos responsables de diseñar la atención integral en salud, en la población adulta y adulta mayor para incidir en los riesgos cardio vascular metabólico al interior de la organización.	 ', 15),
(65, 'Definición de Perfiles, competencias, roles y responsabilidades de los profesionales de salud responsables de la implementación de los procesos de atención para abordar y gestionar el riesgo cardio vascular metabólico en la población adulta y adulta mayor.	 ', 15),
(66, 'Estrategias de referenciación, mejoramiento y búsqueda de las mejores prácticas disponibles en la evidencia científica que faciliten el despliegue y ejecución de los procesos de atención integral en salud a población adulta y adulta mayor para gestionar el riesgo cardio vascular metabólico.	 ', 15),
(67, 'Definición del alcance, objetivos y metas de valor superior a alcanzar como resultado de desempeño de las estrategias y operación de los procesos de atención para gestionar el riesgo cardio vascular metabólico.	 ', 15),
(68, 'Definición de herramientas para armonizar los medios y recursos necesarios para garantizar la estandarización de los procesos de atención, la integración de procesos, escenarios, servicios y disciplinas clínicas necesarias para responder de manera efectiva a los objetivos y metas definidas para gestionar el riesgo cardio vascular metabólico.	 ', 15),
(69, 'Puede mostrar una estrategia organizacional para el despliegue y ejecución estandarizado de la atención integral para gestionar el riesgo cardio vascular metabólico, que está formalmente constituido y cuenta con:\r\n•	Visibilidad en la estructura funcional de la organización y articulación con los procesos institucionales.\r\nProcesos de atención estandarizados, que siguen la ruta del paciente, se ajustan a las características y determinantes sociales de la población, están soportados en la mejor y más actualizada evidencia científica de acuerdo con las guías de práctica clínica adoptadas y que cuenta con estrategias e intervenciones claramente definidas para garantizar, que las mejores prácticas para la prevención y gestión del riesgo cardio vascular metabólico, se implementan y suceden en la atención del mundo real.\r\n•	Definición, conformación y gestión de un equipo Interdisciplinario responsable de la operación de los procesos de atención, que tiene:\r\no	Perfiles, competencias, roles y responsabilidades claramente definidos para la operación de los procesos de atención de cara al paciente.\r\no	Programas de capacitación, entrenamiento y educación para soportar, mantener las competencias, fomentar el trabajo en equipo y el desarrollo de equipos de alto desempeño.\r\no	Sistemas de comunicación efectiva.\r\no	Evaluación sistemática y periódica del desempeño del equipo Interdisciplinario.', 15),
(70, 'Procesos y espacios estructurados para el análisis de resultados, que muestren y generen aprendizaje, mejoramiento continuo, innovación y que fortalezcan una cultura de valor, entorno a la gestión del riesgo cardio vascular metabólico.	', 15),
(71, 'Estrategias para desplegar, evaluar y generar una cultura organizacional por la gestión del riesgo cardio vascular metabólico en toda la organización.	', 15),
(72, 'Procesos de referenciación y de aprendizaje colaborativo que permite generar relaciones de confianza y articular otras instituciones y actores en el propósito común de impactar los resultados de salud en el marco de la atención y gestión del riesgo cardio vascular metabólico.	', 15),
(73, 'Un sistema de Información de permite la consolidación de la información para la medición y evaluación de indicadores de desempeño para la gestión del riesgo cardio vascular metabólico.', 15),
(74, 'Estrategias de información y comunicación claramente definidos, con herramientas y acciones adaptadas a la situación particular de la población, a los entornos y articuladas a los procesos de educación para la salud y demás intervenciones de salud, para lograr el objetivo de atención integral en salud y gestión del riesgo cardio -vascular-metabólico.', 16),
(75, 'Definición de canales de información que son adecuados a las características de la población, garantizando la recepción y entendimiento de la información brindada.	 ', 16),
(76, 'Definición de la información relevante a entregar en el marco de las intervenciones que permiten la gestión del riesgo cardio -vascular-metabólico, que incluye:\r\n\r\n•	Mecanismos y escenarios en los cuales se brindan intervenciones, redes de prestadores de servicios de salud, oferta de intervenciones colectivas, servicios sociales o desde otros sectores que apoyan la incorporación de prácticas de cuidado; así como la adherencia al seguimiento y tratamiento de condiciones desarrollados desde el sector salud, a nivel comunitario y otros sectores del territorio. \r\n•	Reconocimiento de las intervenciones definidas en RPMS por momento de curso de vida, que puede articularse al uso de App MinSalud Digital.\r\n•	Descripción de la importancia y ventajas de la incorporación de prácticas de cuidado, tales como: manejo del estrés, alimentación adecuada, actividad física, prevención o cesación del consumo de tabaco y alcohol, entre otros.\r\n•	 Socialización de la importancia y ventajas de recibir atenciones que permitan gestionar el riesgo detectado ante la presencia de tabaquismo, consumo nocivo de alcohol, alimentación no saludable, sedentarismo, sobrepeso, obesidad, estrés psicosocial y otras situaciones particulares de riesgo cardio vascular metabólico; en el marco de un plan de cuidado con centro en las personas.\r\n•	Difusión frente a la importancia del reconocimiento de alimentos (alimentos altos en calorías, ricos en sal, grasas saturadas, grasas trans, con azúcares añadida, bebidas azucaradas, productos procesados y ultra procesados) y el rotulado nutricional de alimentos.\r\n•	Difusión frente a ventajas y beneficios de acceder a las atenciones definidas en la RPMS que permiten entre otros, la identificación temprana del nivel de riesgo cardiovascular y metabólico para la consulta oportuna a los servicios de salud y el establecimiento de plan de cuidado integral. \r\n•	Desarrollo de contenidos para favorecer la transformación de prácticas sociales asociadas al consumo de bebidas alcohólicas, azucaradas, alimentación no saludable, tabaquismo, sedentarismo y adherencia a los tratamientos indicados.\r\n•	Reconocimiento y fortalecimiento de creencias y prácticas culturales orientadas al cuidado y adherencia tratamiento de las enfermedades de riesgo cardiovascular y la transformación de malos hábitos con enfoque en la población diferencial del territorio.\r\n•	Reconocimiento de servicios y tecnologías en salud cubiertos por el sistema de salud y mecanismos para la exigibilidad del derecho a la salud, en lo relacionado con las atenciones definidas en RPMS, así como en relación con la prevención y control de las enfermedades cardiovasculares y metabólicas y sus factores de riesgo. \r\n•	Socialización de información en salud y escenarios de educación para la salud por momento de curso de vida como la educación para la salud de riesgo (control de tabaco, consumo de alcohol, practica de actividad física y alimentación saludable, control de la HTA, dislipidemia y la diabetes mellitus, entre otros).', 16),
(77, 'Procesos definidos para identificar a la población con riesgo cardiovascular, captarlos y derivarlos a las intervenciones de educación y de gestión integral del riesgo cardio vascular metabólico	 ', 17),
(78, 'Estandarización de los procesos educativos, los cuales deben estar adaptados a las características, determinantes sociales, entornos y necesidades de la población.	 ', 17),
(79, 'Los procesos de educación deberán considerar los siguientes elementos:\r\n•	Identificación de alimentos altos en calorías, ricos en sal, grasas saturadas, grasas trans, con azúcares añadidos. \r\n•	Conocimiento de las características de las bebidas energizantes y azucaradas. Productos procesados y ultra procesados y su papel en el origen de las enfermedades cardio metabólicas y cerebrovasculares.\r\n•	Educación sobre el proceso para la lectura e interpretación del rotulado nutricional de alimentos que favorezca una adecuada selección de alimentos (bajos en sodio, en calorías, grasas saturadas y grasas trans).\r\n\r\n•	Conocimiento sobre la importancia de la práctica de la lactancia materna para prevenir enfermedades cardiovasculares y metabólicas y de la introducción y evolución adecuada de la alimentación complementaria. \r\n•	Conocimiento sobre el concepto de peso saludable y estrategias para reconocimiento y mantenimiento de este.\r\n•	Comprensión del concepto de índice glicémico, carga glicémica y clasificación de los alimentos según el índice glicémico.\r\n•	Conocimiento sobre el tiempo recomendado y beneficios de actividad física para cada momento del curso de vida para mantener un peso corporal saludable. \r\n•	Desarrollo de actividades de intensidad moderada e intensa para mantener un peso corporal saludable, en las personas que comparten riesgo en salud cardio metabólico y reducción de comportamientos sedentarios. \r\n•	Difusión y conocimiento sobre la oferta de programas, actividades y lugares para la práctica de actividades físicas (ejemplo: parques, ciclo rutas, programas comunitarios).\r\n•	Conocimiento sobre los efectos en salud consumo de productos de tabaco, derivados y sistemas eléctricos con y sin nicotina, beneficios de dejar de fumar, control de tabaco, protección de los ambientes 100% libres de humo de tabaco, importancia y beneficios de acceder al tratamiento del tabaquismo para la cesación del consumo, entre otros. \r\n•	Comprensión sobre los efectos a nivel de la salud, social, económica y familiar del consumo de bebidas alcohólicas, los beneficios en la salud de dejar el consumo de bebidas alcohólicas, las prácticas sociales asociadas al aumento del consumo de bebidas alcohólicas y elementos para la transformación de estas prácticas, identificación temprana de riesgo de consumo problemático en alcohol, entre otros\r\n•	Identificación de las estrategias para estratificar el riesgo cardiovascular y metabólico y la adherencia a los tratamientos.', 17),
(80, 'Dislipidemia.', 18),
(81, 'Prediabetes y Diabetes mellitus tipo 2.	', 18),
(82, 'Prehipertensión e Hipertensión Arterial.', 18),
(83, 'Obesidad y sobrepeso.', 18),
(84, 'Tabaquismo, consumo nocivo de alcohol.', 18),
(85, 'Otros riesgos asociados en el marco de la consulta por profesional en medicina.	', 18),
(86, 'Manejo por equipo multidisciplinario para el tratamiento de todos los riesgos o enfermedades identificadas.	 ', 19),
(87, 'Control de la Dislipidemia.	', 19),
(88, 'Control de prediabetes. ', 19),
(89, 'Educación en salud.	', 19),
(90, 'Consulta de primera vez y de seguimiento por oftalmología.	 ', 20),
(91, 'Toma de: Electrocardiograma, perfil lipídico, creatinina, uroanálisis, albuminuria, creatinina en parcial de orina.	 ', 20),
(92, 'En el caso de detección temprana de neuropatía diabética periférica, valoración con monofilamento por medicina interna o medicina general o medicina familiar entrenados y certificados en diabetes mellitus.	 ', 20),
(93, 'Procesos estandarizados para la evaluación, formulación de planes coherentes de tratamiento y seguimiento en torno a un equipo multidisciplinario.	 ', 21),
(94, 'Valoración para el control en diabetes mellitus siguiendo los lineamientos de la evidencia, que incluye:\r\n•	Valoraciones clínicas y paraclínicas para evaluar la respuesta al tratamiento.\r\n•	Consulta de control y seguimiento.\r\n•	Cálculo de la tasa de filtración glomerular.\r\n•	Seguimiento y toma de Hemoglobina glicosilada.\r\n•	Seguimiento y toma de glucosa semiautomatizada. \r\n•	Consulta de control y seguimiento por enfermería.\r\n•	Consulta de control y seguimiento por nutrición.\r\n•	Consulta de control y seguimiento por trabajo social. \r\n•	Consulta de control y seguimiento por psicología.\r\n•	Consulta de control y seguimiento por fisioterapia.', 21),
(95, 'Procesos de educación y apoyo para el autocuidado ajustados a las características, individualidades y necesidades de los pacientes.	', 21),
(96, 'Procesos estandarizados para la evaluación, formulación de planes coherentes de tratamiento y seguimiento en torno a un equipo multidisciplinario.	 ', 24),
(97, 'Valoración integral en torno a HTA que incluya:\r\n•	Valoraciones clínicas y paraclínicas para evaluar la respuesta al tratamiento\r\n•	Evaluación de la respuesta al tratamiento instaurado, identificación de dificultades y barreras individuales o del entorno para la adherencia al tratamiento\r\n•	Consultas de control y seguimiento claramente definidas, con las frecuencias y especialidad(es) requeridas por el paciente. (equipo multidisciplinario).\r\n•	Cálculo de la tasa de filtración glomerular\r\n•	Derivación a especialidades indicadas de acuerdo con hallazgos y/o resultados encontrados.\r\n•	Consulta de control y seguimiento por enfermería.\r\n•	Consulta de control y seguimiento por nutrición. \r\n•	Consulta de control y seguimiento por trabajo social. \r\n•	Consulta de control y seguimiento por psicología. \r\n•	Consulta de control y seguimiento por fisioterapia. ', 24),
(98, 'Procesos estandarizados para la evaluación, formulación de planes coherentes de tratamiento y seguimiento en torno a un equipo multidisciplinario.', 24),
(99, 'Definición y estandarización de procesos de referencia.	', 22),
(100, 'Trazabilidad de la ruta de atención del paciente en su proceso integral.', 22),
(101, 'Evaluación, medición, monitoreo y seguimiento de los procesos de referenciación entre el prestador primario y complementario.', 22),
(102, 'Consulta de profesional para la valoración integral en salud según esquema definido en R3280 de 2018.	 ', 23),
(103, 'Implementación de pruebas para el tamizaje de riesgo cardiovascular y metabólico: glicemia basal, perfil lipídico, creatinina, uroanálisis según esquema definido en RPMS de 2018.	 ', 23),
(104, 'Captura, medición, evaluación, análisis y seguimiento de los siguientes indicadores:\r\n•	Porcentaje de personas de 18 o más años identificadas con dislipidemia, según criterios de laboratorio.\r\n•	Proporción de personas de 18 años y más captadas con HTA\r\n•	Proporción de personas de 18 años o más captadas con diabetes mellitus\r\n•	Proporción de personas de 18 años o más identificadas con IMC >25mg/m2\r\n•	Proporción de personas de 18 años con reporte de consumo de tabaco.', 25),
(105, 'Aumento de la proporción de personas en cesación del consumo de tabaco, para lo cual cuenta con la captura, medición, evaluación, análisis y seguimiento del indicador:\r\n•	Proporción de personas de 18 y más años consumidoras de tabaco que dejaron de fumar con tratamiento para la cesación del consumo de tabaco.', 26),
(106, 'Reducción del nivel de riesgo asociado al exceso de peso, para lo cual cuenta con la captura, medición, evaluación, análisis y seguimiento del indicador:\r\n•	Proporción de personas con reducción del nivel de riesgo asociado al exceso de peso.', 26),
(107, 'Control de la dislipidemia, para lo cual cuenta con la captura, medición, evaluación, análisis y seguimiento de los siguientes indicadores:\r\n•	Pacientes con dislipidemia que alcanzaron un nivel de LDL < 130 mg/dl\r\n•	Pacientes con dislipidemia con diabetes, HTA o enfermedad renal crónica, que alcanzaron un nivel de LDL < 100 mg/dl\"', 26),
(108, 'Control de los riesgos asociados, para lo cual cuenta con la captura, medición, evaluación, análisis y seguimiento de los siguientes indicadores:\r\n•	Proporción de Pacientes con diabetes mellitus controlados (Hba1c < 7%)\r\n•	Proporción de personas hipertensas controladas (TA < 140/90)', 27),
(109, 'Detección temprana de la lesión de órgano blanco, para lo cual cuenta con la captura, medición, evaluación, análisis y seguimiento de los siguientes indicadores:\r\n•	Proporción de personas con HTA estudiadas para ERC\r\n•	Proporción de personas con DM estudiadas para ERC\r\n•	Proporción de personas con DM, HTA o ambas con resultado de la relación albuminuria/ creatinuria < 30 mg/g\r\n•	Proporción de personas con HTA, DM o ERC sin TRR sin pérdida de la función renal CKD-EPI (% pérdida TFG < 5 ml/min/año)', 27),
(110, 'Disminución de la mortalidad prematura, para lo cual cuenta con la captura, medición, evaluación, análisis y seguimiento de los siguientes indicadores:\r\n•	Tasa de mortalidad prematura en personas de 30 a 70 años por sistema circulatorio y diabetes\r\n•	Proporción de personas hospitalizadas con diagnóstico por enfermedades del sistema circulatorio', 27),
(111, 'Procesos de evaluación, medición y análisis de la experiencia del paciente.	 ', 28),
(112, 'Procesos de referenciación en herramientas y estrategias para la evaluación de la experiencia del paciente	 ', 28),
(113, 'Procesos de educación institucional sobre la valoración de la experiencia del paciente frente a los procesos de atención.', 28),
(114, 'Definición, despliegue y evaluación de una estrategia institucional alrededor de detección temprana de cáncer, que oriente las intervenciones y acciones a implementar y mejorar en los procesos organizacionales y que además se ajustan a las características y necesidades de la población de influencia de la IPS.	', 29),
(115, 'La estrategia de la organización para la detección de cáncer considera las prevalencias e incidencias de los diferentes tipos de cáncer, así como las características diferenciales de su población objeto.	', 29),
(116, 'Articulación con las políticas institucionales de atención integral, calidad, seguridad del paciente, atención centrada en el paciente, humanización y gestión de talento humano.	', 29),
(117, 'Definición y empoderamiento de los líderes clínicos responsables de diseñar la atención en el marco de lo(s)proceso(s) para la prevención, detección temprana y abordaje de cáncer de mama, cuello uterino y próstata al interior de la organización.	 ', 30),
(118, 'La definición de Perfiles, competencias, roles y responsabilidades de los líderes necesarios para el despliegue y ejecución de los procesos de atención en cáncer de mama, cuello uterino y próstata están claramente definidos.	 ', 30),
(119, 'Se cuenta con estrategias de referenciación, mejoramiento y búsqueda de las mejores prácticas disponibles en la evidencia científica que faciliten el despliegue y ejecución de la atención en cáncer de mama, cuello uterino y próstata.	 ', 30),
(120, 'Se encuentra definido el alcance, objetivos y metas de valor superior a alcanzar como resultado de desempeño de las estrategias y operación de los procesos de atención en cáncer de mama, cuello uterino y próstata.	 ', 30),
(121, 'Existen herramientas para armonizar los medios y recursos necesarios para garantizar la estandarización de los procesos de atención, la integración de procesos, escenarios, servicios y disciplinas clínicas necesarias para responder de manera efectiva a los objetivos y metas definidas para el abordaje y gestión en cáncer de mama, cuello uterino y próstata.', 30),
(122, 'En el marco de la gobernanza clínica, y como resultado de las definiciones estratégicas, la organización puede mostrar una estrategia organizacional para el despliegue y ejecución de un modelo de atención en cáncer de mama, cuello uterino y próstata estandarizado y formalmente constituido, que cuenta con:\r\n•	Visibilidad en la estructura funcional de la organización y articulación con los procesos institucionales.\r\n•	Procesos de atención estandarizados, que siguen la ruta del paciente, están soportados en la mejor y más actualizada evidencia científica (GPC adoptadas) y que cuenta con estrategias e intervenciones claramente definidas para garantizar, que las mejores prácticas para la prevención y gestión en cáncer de mama, cuello uterino y próstata, se implementan y suceden en la atención del mundo real.\r\n•	Definición, conformación y gestión de un equipo Interdisciplinario responsable de la operación de los procesos de atención, que tiene:\r\no	Perfiles, competencias, roles y responsabilidades claramente definidos para la operación de los procesos de atención de cara al paciente.\r\no	Programas de capacitación, entrenamiento y educación para soportar, mantener las competencias, fomentar el trabajo en equipo y el desarrollo de equipos de alto desempeño.\r\no	Sistemas de comunicación efectiva.\r\no	Evaluación sistemática y periódica del desempeño del equipo Interdisciplinario.', 30),
(123, 'Un sistema de Información de permite la consolidación de la información para la medición y evaluación de indicadores de desempeño en cáncer de mama, cuello uterino y próstata, en el marco de la APS.	', 30),
(124, 'Procesos y espacios estructurados para el análisis de resultados, que muestren y generen aprendizaje, mejoramiento continuo, innovación y que fortalezcan una cultura de valor, entorno a cáncer de mama, cuello uterino y próstata.', 30),
(125, 'Estrategias para desplegar, evaluar y generar una cultura organizacional por la gestión en cáncer de mama, cuello uterino y próstata en toda la organización.	 ', 30),
(126, 'Procesos de referenciación y de aprendizaje colaborativo que permite generar relaciones de confianza y articular otras instituciones y actores en el propósito común de impactar los resultados de salud en el marco de las intervenciones de APS para cáncer de mama, cuello uterino y próstata.	 ', 30),
(127, 'Procesos de información y comunicación claramente definidos, con herramientas y acciones adaptadas a la situación particular de la población y a los entornos donde aplica la educación y las intervenciones de salud, para lograr los objetivos de detección temprana y abordaje integral de los pacientes con cáncer, específicamente: cuello uterino, mama y próstata.	 ', 31),
(128, 'Definición de canales de información que son adecuados para las características y determinantes sociales de la población, garantizando la recepción y entendimiento de la información brindada.	 ', 31),
(129, 'Definición de la información relevante a entregar en el marco de la detección temprana de cáncer, que incluye:\r\n•	Acceso a programas, redes de prestadores de servicios de salud, o sociales e instalaciones que apoyen el fortalecimiento del autocuidado, el tratamiento y adherencia al tratamiento desde la promoción de la salud, control de factores de riesgo y tratamiento en cáncer de mama, cuello uterino y próstata desarrollados por el sector salud, a nivel comunitario y otros sectores del territorio.\r\n•	Importancia y ventajas de la práctica de hábitos saludables en la prevención de cáncer: alimentación y actividad física, prevención del consumo de tabaco y alcohol, entre otros.\r\n•	Difusión y evaluación de las ventajas y beneficios de la identificación temprana de factores protectores, factores de riesgo y señales de alarma para cáncer de mama, cuello uterino y próstata para la consulta oportuna a los servicios de salud.\r\n•	Socialización de información en salud y atenciones disponibles para el control e identificación de factores de riesgo, promoción de la tamización de acuerdo con el riesgo, incentivos para un modo y estilo de vida saludable, entre otros temas que la entidad territorial considere debe comunicar para impactar los resultados en salud en cáncer de mama, cuello uterino y próstata.', 31),
(130, 'Información relevante para la detección temprana de cáncer de cuello uterino:\r\n•	Sexualidad responsable\r\n•	Promoción de vacunación contra el virus del papiloma humano VPH, en la población objeto y bajo los lineamientos de la evidencia científica.\r\n•	Factores de riesgo individuales y signos y síntomas de alerta para cáncer de cuello uterino.\r\n•	tamización según corresponda de acuerdo con el grupo de edad, sexo y riesgo.', 31),
(131, 'Información relevante para la detección temprana de cáncer de mama:\r\n•	Autoexamen de mama como herramienta de autocuidado.\r\n•	Factores de riesgo heredofamiliares y personales relacionados con cáncer de seno.\r\n•	Señales de alarma para la enfermedad.\r\n•	tamización según corresponda de acuerdo con el grupo de edad, sexo y riesgo.', 31),
(132, 'Información relevante para la detección temprana de cáncer de próstata:\r\n•	Factores de riesgo relacionados con cáncer de próstata (edad, raza, antecedente familiar)\r\n•	Procesos de tamización según criterios de riesgo.\r\n•	 Síntomas y signos clínicos sugestivos de cáncer de próstata.', 31),
(133, 'Definición clara de los criterios de derivación a cada una de las intervenciones de prevención y detección temprana de cáncer: edad, factores de riesgo y señales de alarma que generan sospecha de cáncer de cuello uterino, mama o próstata.	 ', 32),
(134, 'Estrategias para la identificación y análisis de riesgo en la población objetivo de atención primaria en salud de la institución: barridos de bases de datos, estrategias y sistemas de alarma.	 ', 32),
(135, 'Procesos claros de canalización y derivación que garanticen el acceso oportuno y sin barreras a las intervenciones de prevención y detección temprana y a los procesos de diagnóstico y atención integral del cáncer.	 ', 32),
(136, 'Procesos sistemáticos de educación y capacitación a los equipos de salud de la organización.	 ', 32),
(137, 'Manejo por equipo multidisciplinario, entrenado y capacitado en cada condición identificada:\r\n•	Cáncer cuello uterino \r\n•	Cáncer de mama.\r\n•	Cáncer de próstata', 33),
(138, 'Articulación de servicios, escenarios y disciplinas, indispensables para desplegar las intervenciones claves de las rutas de atención:\r\n•	Cáncer cuello uterino\r\n•	Cáncer de mama.\r\n•	Cáncer de próstata', 33),
(139, 'Estrategias de educación, información y apoyo que fomenten la humanización de los procesos de atención en el marco de detección temprana de cáncer, considerando las características individuales y diferenciales del paciente.\r\n•	Cáncer cuello uterino\r\n•	Cáncer de mama.\r\n•	Cáncer de próstata', 33);
INSERT INTO `rules` (`id`, `rule`, `recommendation`) VALUES
(140, 'Ruta de atención cáncer de cuello uterino ajustadas a las características y determinantes sociales y entornos, en la que se hacen evidentes las intervenciones, monitoreo y seguimiento de:\r\n•	Vacunación contra el virus del Papiloma Humano.\r\n•	Identificación de factores de riesgo individual y consejería breve.\r\n•	Identificación del riesgo individual: Definición de conducta diagnóstica, terapéutica o de tamización.\r\n•	Tamizaje de cáncer de cuello uterino según riesgo y lugar de residencia.\r\n•	Gestión de resultados y definición de conducta ante los resultados de las pruebas de tamización - ADN-VPH Positiva.\r\n•	Consulta de seguimiento lesiones precancerosas.\r\n•	Realización de la colposcopia y toma de biopsia para confirmar o descartar el diagnóstico de cáncer de cuello uterino o lesiones precancerosas.\r\n•	Lectura y generación de informe de patología.\r\n•	Definición de conducta ante los resultados del informe de patología.\r\n•	Autorización integral del proceso de atención en cáncer de cuello uterino.\r\n•	Tratamiento lesiones precancerosas: Procedimiento de escisión y/o terapéutico de lesiones precancerosas.\r\n•	En lesiones infiltrantes (CÁNCER), valoración por ginecología oncológica, clasificación clínica, solicitud de estudios de extensión y/o definición de tratamiento.\r\n•	Tratamiento de lesiones infiltrantes (Cáncer) Cirugía.\r\n•	Tratamiento de lesiones infiltrantes (Cáncer) radioterapia/quimioterapia.\r\n•	Programa de soporte oncológico.\r\n•	Notificación Obligatoria al Sistema de Vigilancia en Salud Pública.', 33),
(141, 'Ruta de atención cáncer de mama ajustadas a las características y determinantes sociales y entornos, en la que se hacen evidentes las intervenciones, monitoreo y seguimiento de:\r\n•	Tamización para cáncer de mama.\r\n•	Identificación de la población con factores de riesgo, que ameriten un esquema de tamización especial\r\n•	Clasificación del riesgo de cáncer de mama y definición de conducta\r\n•	Consejería genética\r\n•	Tamización poblacional organizada de cáncer de mama\r\n•	Diagnóstico de cáncer de mama en población sintomática\r\n•	Interpretación del examen clínico de mama\r\n•	Interpretación del resultado del examen de ecografía o mamografía\r\n•	Consulta con el especialista de la unidad funcional para cáncer de mama\r\n•	Realización de la biopsia de la lesión sospechosa\r\n•	Generación de lectura e informe de patología\r\n•	Definición de conducta ante los resultados del informe de patología.\r\n•	Autorización integral del proceso de atención en cáncer de mama.\r\n•	Notificación Obligatoria al Sistema de Vigilancia en Salud Pública.', 33),
(142, 'Ruta de atención cáncer de próstata ajustadas a las características y determinantes sociales y entornos, en la que se hacen evidentes las intervenciones, monitoreo y seguimiento de:\r\n•	Tamizaje cáncer de próstata.\r\n•	Identificación de la población con factores de riesgo, que ameriten un esquema de tamización especial.\r\n•	Clasificación del riesgo de cáncer de próstata y definición de conducta.\r\n•	Diagnóstico de cáncer de próstata en población sintomática.\r\n•	Interpretación del examen clínico de próstata.\r\n•	Consulta con el especialista de la unidad funcional para cáncer de próstata.\r\n•	Realización de la biopsia de la lesión sospechosa.\r\n•	Generación de lectura e informe de patología.\r\n•	Definición de conducta ante los resultados del informe de patología.\r\n•	Autorización integral del proceso de atención en cáncer de próstata.\r\n•	Notificación Obligatoria al Sistema de Vigilancia en Salud Pública.', 33),
(143, 'Definición y estandarización de procesos de referencia.	 ', 34),
(144, 'Trazabilidad de la ruta de atención del paciente en su proceso integral	 ', 34),
(145, 'Evaluación, medición, monitoreo y seguimiento de los procesos de referenciación entre el prestador primario y complementario	 ', 34),
(146, 'Captura, medición, evaluación, análisis y seguimiento de los indicadores de detección temprana de cáncer de cuello uterino:\r\n•	Cobertura útil de vacunación con segunda dosis de VPH en niñas entre 9 y 17 años escolarizadas y no escolarizadas.\r\n•	Proporción de mujeres tamizadas para cáncer de cuello uterino con la tecnología indicada según edad y lugar de residencia.\r\n•	Oportunidad en la realización de colposcopia.\r\n•	Oportunidad en la confirmación diagnóstica.\r\n•	Porcentaje de mujeres diagnosticadas en estadios tempranos de cáncer de cuello uterino.\r\n•	Proporción de mujeres con cáncer de cuello uterino que cuentan con autorización integral.\r\n•	Oportunidad en el inicio del tratamiento primario\r\n•	Porcentaje de mujeres diagnosticadas en estadios tempranos de cáncer de cuello uterino. \r\n•	Mujeres con cáncer de cuello uterino con acceso a servicios de cuidado paliativo.', 35),
(147, 'Evaluación, análisis y seguimiento de los indicadores de atención integral de cáncer de cuello uterino.\r\n•	Mortalidad general en mujeres con cáncer de cuello uterino.\r\n•	Supervivencia general a los 5 años.\r\n•	Supervivencia global.\r\n•	Proporción de mujeres con cáncer de cuello uterino que cumplen criterios de seguimiento.\r\n•	Calidad de vida.\r\n•	Seguimiento indicadores prestadores complementarios. (CAC)', 35),
(148, 'Captura, medición, evaluación, análisis y seguimiento de los indicadores de detección temprana de cáncer de mama:\r\n•	Proporción de mujeres entre 50 y 69 años tamizadas para cáncer de mama con mamografía bienal.\r\n•	Oportunidad en la confirmación diagnóstica.\r\n•	Porcentaje de mujeres diagnosticadas en estadios tempranos de cáncer de mama.\r\n•	Proporción de mujeres con cáncer de mama que cuentan con \r\n•	autorización integral.\r\n•	Oportunidad en el inicio del tratamiento primario.\r\n•	Proporción de mujeres con cáncer de mama con valoración por cuidado paliativo.', 36),
(149, 'Evaluación, análisis y seguimiento de los indicadores de atención integral de cáncer de mama.\r\n•	Mortalidad general en mujeres con cáncer de mama.\r\n•	Supervivencia general a los 5 años.\r\n•	Supervivencia global.\r\n•	Proporción de mujeres con cáncer de mama que cumplen criterios de seguimiento\r\n•	Calidad de vida.\r\n•	Seguimiento indicadores prestadores complementarios. (CAC)\"	 ', 36),
(150, 'Captura, medición, evaluación, análisis y seguimiento de los indicadores de detección temprana de cáncer de próstata.\r\nProporción de hombres tamizados para cáncer de próstata con la indicación adecuada según edad.\r\n•	Oportunidad de diagnóstico.\r\n•	Porcentaje de hombres diagnosticados en estadios tempranos.\r\n•	Proporción de hombres con cáncer de próstata que cuentan con autorización integral.\r\n•	Oportunidad en el inicio del tratamiento primario.\r\n•	Proporción de hombres con cáncer de próstata con valoración por cuidado paliativo.', 37),
(151, 'Evaluación, análisis y seguimiento de los indicadores de atención integral de cáncer de próstata\r\n•	Letalidad en hombres con cáncer de próstata.\r\n•	Mortalidad general en hombres con cáncer de próstata. \r\n•	Supervivencia general a los 5 años.\r\n•	Supervivencia global\r\n•	Seguimiento de PSA postratamiento en cáncer de próstata\r\n•	Calidad de vida\r\n•	Seguimiento indicadores prestadores complementarios. (CAC)', 37),
(152, 'Procesos de evaluación, medición y análisis de la experiencia del paciente.	 ', 38),
(153, 'Procesos de referenciación en herramientas y estrategias para la evaluación de la experiencia del paciente	 ', 38),
(154, 'Procesos de educación institucional sobre la valoración de la experiencia del paciente frente a los procesos de atención.	 ', 38),
(155, 'Definición, despliegue y evaluación de una estrategia institucional, articulada a los lineamientos brindados por el MSP, alrededor del enfoque diferencial, la igualdad de género, inclusión social y etnicidad, que oriente las intervenciones y acciones a implementar para transformar la cultura interna de la organización y la forma como se entrega la atención a la población que atiende la IPS, para lo anterior considera:\r\n•	Cultura organizacional y adecuación de la estructura de la organización para la transversalización del enfoque de género, diferencial poblacional y territorial y de APS. Incluye los procesos asistenciales y administrativos, por ejemplo:\r\no	Procesos de selección libres de sesgos.\r\no	Integración de grupos subrepresentados al personal.\r\no	Medición y cierre de brechas salariales.\r\no	Paridad de género en cargos de liderazgo o directivos.\r\no	Formación continua del personal en materia de derechos, enfoques diferencial y de género, territorial y APS.\r\no	Adecuación de políticas institucionales.\r\no	Adecuación de manuales de comunicación e imagen para el uso de lenguaje incluyente.\r\no	Establecimiento de protocolo de actuación en caso de situaciones de acoso sexual y discriminaciones por razones de sexo, identidades de género u orientaciones sexuales, que permita sancionar este tipo de comportamientos al interior de la organización. \r\n•	Acciones afirmativas y transversalización del enfoque de género en la atención integral en salud. \r\n•	Acciones afirmativas e inclusión del enfoque étnico en la atención integral en salud.\r\n•	Acciones afirmativas y transversalización del enfoque diferencial poblacional y territorial en la atención integral en salud.\r\n•	Acciones afirmativas y transversalización de la APS con enfoque de salud familiar y comunitaria en la atención integral en salud. \r\n•	Monitoreo y seguimiento de las adecuaciones y resultados en salud derivados de la transversalización de los enfoques. ', 39),
(156, 'Promover la implementación de las intervenciones para la adecuación cultural (mencionadas en los ejemplos del criterio anterior), entorno a la igualdad de género, inclusión social y etnicidad que se vea reflejado en la forma como interactúa el talento humano de la institución, promoviendo la equidad, igualdad, participación y empoderamiento en el desarrollo de sus funciones y de esta forma la manera como se respetan los derechos de todas las personas que hacen parte del entorno de la IPS: cliente interno, pacientes, comunidades y demás actores implicados.', 39),
(157, 'Desarrollar estrategias sistemáticas para caracterizar, identificar y analizar las necesidades diferenciadas y de vulnerabilidad de la población que atiende: desagregados por edad, sexo, orientación, sexual, identidad de género, discapacidad, pertenencia étnica, víctimas del conflicto armado, migración, entre otros.', 39),
(158, 'Ajustar su Modelo de atención integral de acuerdo con las diferencias y necesidades evidenciadas en la caracterización, promoviendo la inclusión, participación, empoderamiento y entrega de procesos de atención humanizados y equitativos.	 ', 39),
(159, 'Articular la estrategia institucional del enfoque diferencial, con las políticas institucionales de atención integral, calidad, seguridad del paciente, atención centrada en el paciente, humanización y gestión de talento humano frente a la igualdad de género e inclusión social.	 ', 39),
(160, 'Definición y empoderamiento de los/las líderes clínicos responsables de diseñar, implementar y evaluar la estrategia del enfoque diferencial, de género e inclusión social interior de la organización, así como conformación de equipos y/o comités encargados del tema.', 40),
(161, 'Generación de espacios de participación con los grupos diferenciales y comunidades, para concertar y ajustar las intervenciones de salud, generando participación, compromiso y empoderamiento. ', 40),
(162, 'Procesos y espacios estructurados para el análisis de resultados, que muestren y generen aprendizaje, mejoramiento continuo, innovación y que fortalezcan una cultura de valor, entorno a la igualdad de género e inclusión social	 ', 40),
(163, 'Estrategias para desplegar, evaluar y generar una cultura organizacional por la gestión de la igualdad de género e inclusión social.	 ', 40),
(164, 'Procesos de referenciación y de aprendizaje colaborativo que permitan generar relaciones de confianza y articular otras instituciones y actores en el propósito común de impactar los resultados de salud en el marco de la igualdad de género e inclusión social.	 ', 40),
(165, 'El prestador de servicios de salud logra demostrar actividades, procedimientos, documentación, información y análisis en elementos de gran importancia clínica y social como los son entre otros:\r\n•	Historia clínica en personas de los sectores LGBTI incluyendo claridades para personas Trans, especialmente en procesos de transición.\r\n•	Adecuación sociocultural y técnica del proceso de atención del parto por razones étnicas\r\n•	Complementariedad con medicinas y terapias alternativas\r\n•	Adecuación, apoyos y ajustes razonables para la atención y prestación del servicio de personas con discapacidad y personas mayores.\r\n•	Adecuación, apoyos y ajustes razonables para la atención y prestación del servicio de personas migrantes.\r\n•	Implementación del Protocolo de atención en salud con enfoque psicosocial para víctimas del conflicto armado.', 41),
(166, 'El prestador de servicios de salud logra demostrar la implementación de actividades y procedimientos fundamentados en GPC, procedimientos de atención, protocolos de atención y demás documentos necesarios para la ejecución de elementos de gran importancia clínica y social como los son entre otros:\r\n•	Historia clínica en personas de los sectores LGBTI incluyendo claridades para personas Trans, especialmente en procesos de transición.\r\n•	Adecuación sociocultural y técnica del proceso de atención del parto por razones étnicas\r\n•	Complementariedad con medicinas y terapias alternativas\r\n•	Adecuación, apoyos y ajustes razonables para la atención y prestación del servicio de personas con discapacidad y personas mayores.\r\n•	Adecuación, apoyos y ajustes razonables para la atención y prestación del servicio de personas migrantes.\r\n•	Implementación del Protocolo de atención en salud con enfoque psicosocial para víctimas del conflicto armado.', 41),
(167, 'El prestador de servicios de salud logra demostrar la socialización, difusión e implementación de actividades y procedimientos de elementos de gran importancia clínica y social como lo son:\r\n•	Historia clínica en personas de los sectores LGBTI incluyendo claridades para personas Trans, especialmente en procesos de transición.\r\n•	Adecuación sociocultural y técnica del proceso de atención del parto por razones étnicas\r\n•	Complementariedad con medicinas y terapias alternativas\r\n•	Adecuación, apoyos y ajustes razonables para la atención y prestación del servicio de personas con discapacidad y personas mayores.\r\n•	Adecuación, apoyos y ajustes razonables para la atención y prestación del servicio de personas migrantes.\r\n•	Implementación del Protocolo de atención en salud con enfoque psicosocial para víctimas del conflicto armado.\r\nEntre el talento humano, la incorporación de equipos biomédicos, medicamentos, dispositivos médicos y demás insumos requeridos.', 41),
(168, 'Procesos de información claramente definidos, con estrategias, herramientas y acciones adaptadas y accesibles a la situación particular de la población y a los entornos donde aplica la educación y las intervenciones de salud, para lograr el objetivo del estándar de enfoque diferencial en las atenciones del prestador.	 ', 42),
(169, 'Definición de canales de información que son adecuados y accesibles para las características y determinantes sociales de la población, garantizando la recepción y entendimiento de la información brindada.', 42),
(170, 'Difusión y evaluación de las ventajas y beneficios de una estrategia en igualdad de género e inclusión social, mediante el uso de tecnologías de la información u otros medios.	', 42),
(171, 'Definición de la información relevante y accesible a entregar en el marco de una estrategia integral de igualdad de género e inclusión social que incluye:\r\n•	Acceso a programas, redes de prestadores de servicios de salud, o sociales e instalaciones que apoyen el fortalecimiento de la igualdad de género e inclusión social desde la promoción de la salud, control de factores de riesgo tanto a nivel comunitario como individual. \r\n•	Desarrollo de contenidos para modificar o transformar prácticas sociales asociadas los temas de igualdad de género e inclusión social en la población objeto.\r\n•	Reconocimiento y fortalecimiento de creencias y prácticas culturales orientadas a los temas de igualdad de género e inclusión social con enfoque en la población diferencial del territorio.\r\n•	Socialización de información en salud y atenciones disponibles para los temas de igualdad de género e inclusión social.\r\n•	Adaptación de las estrategias, herramientas y acciones necesarias para la situación particular de su población y los entornos donde aplicaría la educación y las intervenciones.', 42),
(172, 'Estandarización de los procesos educativos, los cuales deben estar adaptados a las características, determinantes sociales, entornos y necesidades de la población.	 ', 43),
(173, 'Los procesos de educación deberán considerar los siguientes elementos:\r\n•	Examinar y abordar las consideraciones de genero e inclusión social con un enfoque que permite:\r\no	El análisis crítico de las formas y dinámicas de género, etnicidad y sociales\r\no	La construcción de sistemas que apoyan la igualdad de género, etnicidad y social\r\no	Deconstrucción de roles de género, etnicidad y sociales, que promueven dinámicas equitativas.\r\no	Deconstrucción de imaginarios que promueven actitudes discriminatorias, xenofobia y estereotipos.\r\n\r\n•	Diseño de herramientas y metodologías que faciliten los procesos de educación, implementación, análisis y seguimiento de estrategias de género, etnicidad e inclusión social.  Esto, garantizando los apoyos y ajustes razonables para las personas con discapacidad y usos, lenguas y costumbres de los grupos étnicos.\r\n\r\n•	Fortalecimiento de las capacidades de transferencia de la información a las comunidades e individuos sobre los temas de género e inclusión social.\r\n•	Procesos de formación, para la autogestión al interior de las comunidades sobre las dinámicas de género y sociales que respondan a sus necesidades y características propias.\r\n•	Herramientas de aprendizaje colaborativo, que permitan a las comunidades y a la población sujeto de atención por parte de la IPS procesos de mejoramiento sistemático en dinámicas de género, etnicidad y sociales.\r\n•	No exacerbar los problemas y barreras que enfrentan las mujeres, hombres y personas LGTBI en contextos de vulnerabilidad para acceder y utilizar servicios de salud de calidad.\r\n•	Promoción de procesos de gestión interinstitucional que faciliten los procesos de educación en dinámicas de género y sociales.\r\n•	Promover la participación significativa de las mujeres, hombres y personas LGTBI en contextos de vulnerabilidad en la gestión, liderazgo y gobernanza de los sistemas de salud.\r\n•	Alcanzar a mujeres, hombres, personas LGTBI y otras poblaciones en contextos de vulnerabilidad, fortaleciendo su capacidad para tomar y poner en práctica decisiones estratégicas que les permitan mejorar los resultados en salud propios y de sus comunidades.', 43),
(174, 'La organización como parte de su direccionamiento estratégico cuenta con un lenguaje y política definida, consolidada e implementada frente al enfoque diferencial y de género 	 ', 44),
(175, 'Dentro del sistema de métricas y datos de la organización, se encuentran estos desagregados por edad, sexo, orientación sexual, identidad de género, discapacidad, pertenencia étnica, víctimas del conflicto armado, migrantes, etc.	 ', 44),
(176, 'Conformación y consolidación de programas y estrategias organizacionales que logran demostrar una política clara de igualdad de género, inclusión social y etnicidad.	 ', 44),
(177, 'Conformación y consolidación de procesos rigurosos de análisis frente a las necesidades diferenciadas entre hombres, mujeres, población LGBTI, poblaciones vulnerables y demás actores sociales objetos de alcance organizacional.	 ', 44),
(178, 'Incorporación, desarrollo y promoción de desarrollo de capacidades tanto en la organización, población, comunidades y demás actores frente a temas de igualdad de género, inclusión social y etnicidad.	 ', 44),
(179, 'Incorporación, desarrollo y promoción de desarrollo de dinámicas equitativas tanto en la organización, población, comunidades y demás actores frente a temas de igualdad de género, inclusión social y etnicidad.	 ', 44),
(180, 'Transformación y mejoramiento de los resultados propios en salud tanto individuales como comunitarios en temas relacionados con igualdad de género, inclusión social y etnicidad.	 ', 44),
(181, 'Incorporación y mejoramiento de los resultados en salud en temas de igualdad de género, inclusión social y etnicidad dentro de sus procesos de atención.	 ', 44),
(182, 'Medición y evaluación de la experiencia del paciente frente a temas de igualdad, inclusión social y etnicidad considerando en estas mediciones la posibilidad de desagregar la información para posteriores análisis por edad, sexo, orientación sexual, identidad de género, discapacidad, pertenencia étnica, víctimas del conflicto armado, migrantes, etc.	 ', 44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scales`
--

CREATE TABLE `scales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `scale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` int(11) NOT NULL,
  `procentaje` double NOT NULL,
  `recommendation` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `scales`
--

INSERT INTO `scales` (`id`, `scale`, `valor`, `procentaje`, `recommendation`, `created_at`, `updated_at`) VALUES
(1, 'las directrices planteadas en la recomendación están cumplidas en su totalidad (se cumplen 7 de los 7 criterios para la recomendación)\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 5, 100, 1, NULL, NULL),
(2, 'las directrices planteadas en la recomendación están cumplidas pero no en su totalidad (se cumplen 5 a 6 de los 7 criterios para la recomendación) \r\n\r\n\r\n\r\n\r\n\r\n\r\n', 4, 80, 1, NULL, NULL),
(3, 'las directrices planteadas en la recomendación se dan de forma parcial (se cumplen 3 a 4 de los 7 criterios para la recomendación) \r\n\r\n\r\n\r\n\r\n\r\n\r\n', 3, 60, 1, NULL, NULL),
(4, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (se cumplen 1 a 2 de los 7 criterios para la recomendación) \r\n\r\n\r\n\r\n\r\n\r\n\r\n', 2, 40, 1, NULL, NULL),
(5, 'las directrices planteadas en la recomendación o no están o no son identificables. (no se cumple ninguno de los 7 criterios para la recomendación)\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 1, 20, 1, NULL, NULL),
(6, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumple 9 de los 9 criterios para la recomendación)	 ', 5, 100, 2, NULL, NULL),
(7, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen  7 a 8 de los 9 criterios para la recomendación) 	 ', 4, 80, 2, NULL, NULL),
(8, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen  5 a 6  de los 9 criterios para la recomendación) 	 ', 3, 60, 2, NULL, NULL),
(9, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 3 a 4 de los 9 criterios para la recomendación) 	 ', 2, 40, 2, NULL, NULL),
(10, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 1 a 2 de los 9  criterios para la recomendación)	 ', 1, 20, 2, NULL, NULL),
(11, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen 5 de los 5 criterios para la recomendación)', 5, 100, 3, NULL, NULL),
(12, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (se cumplen 4  de los 5 criterios para la recomendación) ', 4, 80, 3, NULL, NULL),
(13, 'las directrices planteadas en la recomendación se dan de forma parcial (se cumplen  3 de los 5 criterios para la recomendación) ', 3, 60, 3, NULL, NULL),
(14, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (se cumplen 2 de los 5 criterios para la recomendación) 	', 2, 40, 3, NULL, NULL),
(15, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 1 de los 5 criterios para la recomendación)', 1, 20, 3, NULL, NULL),
(16, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 4, NULL, NULL),
(17, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 4, NULL, NULL),
(18, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 4, NULL, NULL),
(19, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 4, NULL, NULL),
(20, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 4, NULL, NULL),
(21, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (Se cumplen 4 de los 4 criterios para la recomendación)	 ', 5, 100, 5, NULL, NULL),
(22, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen 3 de los 4 criterios para la recomendación) 	 ', 4, 80, 5, NULL, NULL),
(23, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 2 de los 4 criterios para la recomendación)  ', 3, 60, 5, NULL, NULL),
(24, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los 4 criterios para la recomendación)  ', 2, 40, 5, NULL, NULL),
(25, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	', 1, 20, 5, NULL, NULL),
(26, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 6, NULL, NULL),
(27, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 6, NULL, NULL),
(28, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 6, NULL, NULL),
(29, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 6, NULL, NULL),
(30, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 6, NULL, NULL),
(31, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen 9 de los 9 criterios para la recomendación)	 ', 5, 100, 7, NULL, NULL),
(32, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (se cumplen 7 a 8 de los 9 criterios para la recomendación) 	 ', 4, 80, 7, NULL, NULL),
(33, 'las directrices planteadas en la recomendación se dan de forma parcial (se cumplen 5 a 6 de los 9 criterios para la recomendación) 	 ', 3, 60, 7, NULL, NULL),
(34, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (se cumplen 3 a 4 de los 9 criterios para la recomendación) 	 ', 2, 40, 7, NULL, NULL),
(35, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumplen de 1 a 2 de los 9 criterios para la recomendación)	 ', 1, 20, 7, NULL, NULL),
(36, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 8, NULL, NULL),
(37, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 8, NULL, NULL),
(38, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 8, NULL, NULL),
(39, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 8, NULL, NULL),
(40, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 8, NULL, NULL),
(41, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen 6 de los 6 criterios para la recomendación)	 ', 5, 100, 9, NULL, NULL),
(42, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (se cumplen 4 a 5  de los 6 criterios para la recomendación) 	 ', 4, 80, 9, NULL, NULL),
(43, 'las directrices planteadas en la recomendación se dan de forma parcial (se cumplen  3 de los 5 criterios para la recomendación) 	 ', 3, 60, 9, NULL, NULL),
(44, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (se cumplen 2 a 3 de los 6 criterios para la recomendación) 	 ', 2, 40, 9, NULL, NULL),
(45, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 0 a 1 de los 6 criterios para la recomendación)	 ', 1, 20, 9, NULL, NULL),
(46, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se encuentran todos los elementos del criterio para la recomendación)	 ', 5, 100, 10, NULL, NULL),
(47, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se encuentran los elementos del criterio para la recomendación de forma no total)	 ', 4, 80, 10, NULL, NULL),
(48, 'las directrices planteadas en la recomendación se dan de forma parcial (Se encuentran algunos elementos del criterio para la recomendación )	 ', 3, 60, 10, NULL, NULL),
(49, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple de forma anecdotica el criterio para la recomendación) 	 ', 2, 40, 10, NULL, NULL),
(50, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se encuentran el criterio para la recomendación)	 ', 1, 20, 10, NULL, NULL),
(51, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se encuentran todos los elementos del criterio para la recomendación)	 ', 5, 100, 11, NULL, NULL),
(52, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se encuentran los elementos del criterio para la recomendación de forma no total)	 ', 4, 80, 11, NULL, NULL),
(53, 'las directrices planteadas en la recomendación se dan de forma parcial (Se encuentran algunos elementos del criterio para la recomendación )	 ', 3, 60, 11, NULL, NULL),
(54, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple de forma anecdotica el criterio para la recomendación) 	 ', 2, 40, 11, NULL, NULL),
(55, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se encuentran el criterio para la recomendación)	 ', 1, 20, 11, NULL, NULL),
(56, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen 7 de los 7 criterios para la recomendación)	 ', 5, 100, 12, NULL, NULL),
(57, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (se cumplen 5 a 6 de los 7 criterios para la recomendación) 	 ', 4, 80, 12, NULL, NULL),
(58, 'las directrices planteadas en la recomendación se dan de forma parcial (se cumplen 3 a 4 de los 7 criterios para la recomendación) 	 ', 3, 60, 12, NULL, NULL),
(59, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (se cumplen 1 a 2 de los 7 criterios para la recomendación) 	 ', 2, 40, 12, NULL, NULL),
(60, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los 7 criterios para la recomendación)	 ', 1, 20, 12, NULL, NULL),
(61, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 13, NULL, NULL),
(62, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 13, NULL, NULL),
(63, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 13, NULL, NULL),
(67, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 13, NULL, NULL),
(68, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 13, NULL, NULL),
(69, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen los 2  de los criterios para la recomendación de forma total)	 ', 5, 100, 14, NULL, NULL),
(70, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen los 2 de los criterios para la recomendación pero de forma parcial ) 	 ', 4, 80, 14, NULL, NULL),
(71, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumple 1  de los criterios para la recomendación de forma total)	 ', 3, 60, 14, NULL, NULL),
(72, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación pero de forma parcial ) 	 ', 2, 40, 14, NULL, NULL),
(73, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 14, NULL, NULL),
(74, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumple 10 de los 10 criterios para la recomendación)	 ', 5, 100, 15, NULL, NULL),
(75, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen  8 a 9 de los 10 criterios para la recomendación) 	 ', 4, 80, 15, NULL, NULL),
(76, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen  6 a 7  de los 10 criterios para la recomendación) 	 ', 3, 60, 15, NULL, NULL),
(77, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 3 a 5 de los 10 criterios para la recomendación) 	 ', 2, 40, 15, NULL, NULL),
(78, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 1 a 2 de los 10  criterios para la recomendación)	 ', 1, 20, 15, NULL, NULL),
(79, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 16, NULL, NULL),
(80, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 16, NULL, NULL),
(81, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 16, NULL, NULL),
(82, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 16, NULL, NULL),
(83, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 16, NULL, NULL),
(84, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 17, NULL, NULL),
(85, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 17, NULL, NULL),
(86, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 17, NULL, NULL),
(87, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 17, NULL, NULL),
(88, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 17, NULL, NULL),
(89, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen 6 de los 6 criterios para la recomendación)	 ', 5, 100, 18, NULL, NULL),
(90, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (se cumplen 4 a 5  de los 6 criterios para la recomendación) 	 ', 4, 80, 18, NULL, NULL),
(91, 'las directrices planteadas en la recomendación se dan de forma parcial (se cumplen  3 de los 5 criterios para la recomendación) 	 ', 3, 60, 18, NULL, NULL),
(92, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (se cumplen 2 a 3 de los 6 criterios para la recomendación) 	 ', 2, 40, 18, NULL, NULL),
(93, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 0 a 1 de los 6 criterios para la recomendación)	 ', 1, 20, 18, NULL, NULL),
(94, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (Se cumplen 4 de los 4 criterios para la recomendación)	 ', 5, 100, 19, NULL, NULL),
(95, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen 3 de los 4 criterios para la recomendación) 	 ', 4, 80, 19, NULL, NULL),
(96, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 2 de los 4 criterios para la recomendación) 	 ', 3, 60, 19, NULL, NULL),
(97, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los 4 criterios para la recomendación) 	 ', 2, 40, 19, NULL, NULL),
(98, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 19, NULL, NULL),
(99, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 20, NULL, NULL),
(100, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 20, NULL, NULL),
(101, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 20, NULL, NULL),
(102, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 20, NULL, NULL),
(103, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 20, NULL, NULL),
(104, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 21, NULL, NULL),
(105, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 21, NULL, NULL),
(106, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 21, NULL, NULL),
(107, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 21, NULL, NULL),
(108, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 21, NULL, NULL),
(109, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 24, NULL, NULL),
(110, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 24, NULL, NULL),
(111, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 24, NULL, NULL),
(112, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 24, NULL, NULL),
(113, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 24, NULL, NULL),
(114, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 22, NULL, NULL),
(115, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 22, NULL, NULL),
(116, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 22, NULL, NULL),
(117, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 22, NULL, NULL),
(118, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 22, NULL, NULL),
(119, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen los 2  de los criterios para la recomendación de forma total)	 ', 5, 100, 23, NULL, NULL),
(120, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen los 2 de los criterios para la recomendación pero de forma parcial ) 	 ', 4, 80, 23, NULL, NULL),
(121, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumple 1  de los criterios para la recomendación de forma total)	 ', 3, 60, 23, NULL, NULL),
(122, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación pero de forma parcial ) 	 ', 2, 40, 23, NULL, NULL),
(123, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 23, NULL, NULL),
(124, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se encuentran todos los elementos del criterio para la recomendación)	 ', 5, 100, 25, NULL, NULL),
(125, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se encuentran los elementos del criterio para la recomendación de forma no total)	 ', 4, 80, 25, NULL, NULL),
(126, 'las directrices planteadas en la recomendación se dan de forma parcial (Se encuentran algunos elementos del criterio para la recomendación )	 ', 3, 60, 25, NULL, NULL),
(127, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple de forma anecdotica el criterio para la recomendación) 	 ', 2, 40, 25, NULL, NULL),
(128, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se encuentran el criterio para la recomendación)	 ', 1, 20, 25, NULL, NULL),
(129, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 26, NULL, NULL),
(130, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 26, NULL, NULL),
(131, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 26, NULL, NULL),
(132, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 26, NULL, NULL),
(133, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 26, NULL, NULL),
(134, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 27, NULL, NULL),
(135, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 27, NULL, NULL),
(136, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 27, NULL, NULL),
(137, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 27, NULL, NULL),
(138, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 27, NULL, NULL),
(139, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 28, NULL, NULL),
(140, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 28, NULL, NULL),
(141, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 28, NULL, NULL),
(142, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 28, NULL, NULL),
(143, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 28, NULL, NULL),
(144, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 29, NULL, NULL),
(145, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 29, NULL, NULL),
(146, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 29, NULL, NULL),
(147, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 29, NULL, NULL),
(148, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 29, NULL, NULL),
(149, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumple 10 de los 10 criterios para la recomendación)	 ', 5, 100, 30, NULL, NULL),
(150, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen  8 a 9 de los 10 criterios para la recomendación) 	 ', 4, 80, 30, NULL, NULL),
(151, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen  6 a 7  de los 10 criterios para la recomendación) 	 ', 3, 60, 30, NULL, NULL),
(152, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 3 a 5 de los 10 criterios para la recomendación) 	 ', 2, 40, 30, NULL, NULL),
(153, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 1 a 2 de los 10  criterios para la recomendación)	 ', 1, 20, 30, NULL, NULL),
(154, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen 6 de los 6 criterios para la recomendación)	 ', 5, 100, 31, NULL, NULL),
(155, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (se cumplen 4 a 5  de los 6 criterios para la recomendación) 	 ', 4, 80, 31, NULL, NULL),
(156, 'las directrices planteadas en la recomendación se dan de forma parcial (se cumplen  3 de los 5 criterios para la recomendación) 	 ', 3, 60, 31, NULL, NULL),
(157, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (se cumplen 2 a 3 de los 6 criterios para la recomendación) 	 ', 2, 40, 31, NULL, NULL),
(158, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 0 a 1 de los 6 criterios para la recomendación)	 ', 1, 20, 31, NULL, NULL),
(159, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (Se cumplen 4 de los 4 criterios para la recomendación)	 ', 5, 100, 32, NULL, NULL),
(160, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen 3 de los 4 criterios para la recomendación) 	 ', 4, 80, 32, NULL, NULL),
(161, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 2 de los 4 criterios para la recomendación) 	 ', 3, 60, 32, NULL, NULL),
(162, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los 4 criterios para la recomendación) 	 ', 2, 40, 32, NULL, NULL),
(163, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 32, NULL, NULL),
(164, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen 6 de los 6 criterios para la recomendación)	 ', 5, 100, 33, NULL, NULL),
(165, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (se cumplen 4 a 5  de los 6 criterios para la recomendación) 	 ', 4, 80, 33, NULL, NULL),
(166, 'las directrices planteadas en la recomendación se dan de forma parcial (se cumplen  3 de los 5 criterios para la recomendación) 	 ', 3, 60, 33, NULL, NULL),
(167, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (se cumplen 2 a 3 de los 6 criterios para la recomendación) 	 ', 2, 40, 33, NULL, NULL),
(168, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 0 a 1 de los 6 criterios para la recomendación)	 ', 1, 20, 33, NULL, NULL),
(169, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 34, NULL, NULL),
(170, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 34, NULL, NULL),
(171, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 34, NULL, NULL),
(172, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 34, NULL, NULL),
(173, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 34, NULL, NULL),
(174, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen los 2  de los criterios para la recomendación de forma total)	 ', 5, 100, 35, NULL, NULL),
(175, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen los 2 de los criterios para la recomendación pero de forma parcial ) 	 ', 4, 80, 35, NULL, NULL),
(176, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumple 1  de los criterios para la recomendación de forma total)	 ', 3, 60, 35, NULL, NULL),
(177, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación pero de forma parcial ) 	 ', 2, 40, 35, NULL, NULL),
(178, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 35, NULL, NULL),
(179, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen los 2  de los criterios para la recomendación de forma total)	 ', 5, 100, 36, NULL, NULL),
(180, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen los 2 de los criterios para la recomendación pero de forma parcial ) 	 ', 4, 80, 36, NULL, NULL),
(181, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumple 1  de los criterios para la recomendación de forma total)	 ', 3, 60, 36, NULL, NULL),
(182, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación pero de forma parcial ) 	 ', 2, 40, 36, NULL, NULL),
(183, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 36, NULL, NULL),
(184, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen los 2  de los criterios para la recomendación de forma total)	 ', 5, 100, 37, NULL, NULL),
(185, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen los 2 de los criterios para la recomendación pero de forma parcial ) 	 ', 4, 80, 37, NULL, NULL),
(186, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumple 1  de los criterios para la recomendación de forma total)	 ', 3, 60, 37, NULL, NULL),
(187, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación pero de forma parcial ) 	 ', 2, 40, 37, NULL, NULL),
(188, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 37, NULL, NULL),
(189, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 38, NULL, NULL),
(190, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 38, NULL, NULL),
(191, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 38, NULL, NULL),
(192, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 38, NULL, NULL),
(193, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 38, NULL, NULL),
(194, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 5  de los 5 criterios para la recomendación)	 ', 5, 100, 39, NULL, NULL),
(195, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen 4 de los 5 criterios para la recomendación pero de forma parcial ) 	 ', 4, 80, 39, NULL, NULL),
(196, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 3  de los 5 criterios para la recomendación de forma total)	 ', 3, 60, 39, NULL, NULL),
(197, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen 2 de los  5 criterios para la recomendación pero de forma parcial ) 	 ', 2, 40, 39, NULL, NULL),
(198, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 1 de los criterios para la recomendación)	 ', 1, 20, 39, NULL, NULL),
(199, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 5  de los 5 criterios para la recomendación)	 ', 5, 100, 40, NULL, NULL),
(200, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen 4 de los 5 criterios para la recomendación pero de forma parcial ) 	 ', 4, 80, 40, NULL, NULL),
(201, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 3  de los 5 criterios para la recomendación de forma total)	 ', 3, 60, 40, NULL, NULL),
(202, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen 2 de los  5 criterios para la recomendación pero de forma parcial ) 	 ', 2, 40, 40, NULL, NULL),
(203, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumple 1 de los criterios para la recomendación)	 ', 1, 20, 40, NULL, NULL),
(204, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen los 3 criterios para la recomendación)	 ', 5, 100, 41, NULL, NULL),
(205, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen de 2 a 3 de los criterios para la recomendación)	 ', 4, 80, 41, NULL, NULL),
(206, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 1 a 2  de los criterios para la recomendación )	 ', 3, 60, 41, NULL, NULL),
(207, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación) 	 ', 2, 40, 41, NULL, NULL),
(208, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 41, NULL, NULL),
(209, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (Se cumplen 4 de los 4 criterios para la recomendación)	 ', 5, 100, 42, NULL, NULL),
(210, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (Se cumplen 3 de los 4 criterios para la recomendación) 	 ', 4, 80, 42, NULL, NULL),
(211, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen 2 de los 4 criterios para la recomendación) 	 ', 3, 60, 42, NULL, NULL),
(212, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los 4 criterios para la recomendación) 	 ', 2, 40, 42, NULL, NULL),
(213, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 42, NULL, NULL),
(214, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumplen los 2  de los criterios para la recomendación de forma total)	 ', 5, 100, 43, NULL, NULL),
(215, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumplen los 2 de los criterios para la recomendación pero de forma parcial ) 	 ', 4, 80, 43, NULL, NULL),
(216, 'las directrices planteadas en la recomendación se dan de forma parcial (Se cumple 1  de los criterios para la recomendación de forma total)	 ', 3, 60, 43, NULL, NULL),
(217, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (Se cumple 1 de los criterios para la recomendación pero de forma parcial ) 	 ', 2, 40, 43, NULL, NULL),
(218, 'las directrices planteadas en la recomendación o no estan o no son identificables. (no se cumple ninguno de los criterios para la recomendación)	 ', 1, 20, 43, NULL, NULL),
(219, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad (se cumplen 9 de los 9 criterios para la recomendación)	 ', 5, 100, 44, NULL, NULL),
(220, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad (se cumplen 7 a 8 de los 9 criterios para la recomendación) 	 ', 4, 80, 44, NULL, NULL),
(221, 'las directrices planteadas en la recomendación se dan de forma parcial (se cumplen 5 a 6 de los 9 criterios para la recomendación) 	 ', 3, 60, 44, NULL, NULL),
(222, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa (se cumplen 3 a 4 de los 9 criterios para la recomendación) 	 ', 2, 40, 44, NULL, NULL),
(223, 'las directrices planteadas en la recomendación o no estan o no son identificables. (se cumplen de 1 a 2 de los 9 criterios para la recomendación)	 ', 1, 20, 44, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scales_users`
--

CREATE TABLE `scales_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estructura` int(11) DEFAULT NULL,
  `estructura2` int(11) DEFAULT NULL,
  `estructura3` int(11) DEFAULT NULL,
  `proceso` int(11) DEFAULT NULL,
  `proceso2` int(11) DEFAULT NULL,
  `proceso3` int(11) DEFAULT NULL,
  `proceso4` int(11) DEFAULT NULL,
  `proceso5` int(11) DEFAULT NULL,
  `proceso6` int(11) DEFAULT NULL,
  `proceso7` int(11) DEFAULT NULL,
  `proceso8` int(11) DEFAULT NULL,
  `proceso9` int(11) DEFAULT NULL,
  `resultado` int(11) DEFAULT NULL,
  `resultado2` int(11) DEFAULT NULL,
  `resultado3` int(11) DEFAULT NULL,
  `resultado4` int(11) DEFAULT NULL,
  `resultado5` int(11) DEFAULT NULL,
  `codigoUsuario` bigint(20) UNSIGNED NOT NULL,
  `category` int(11) DEFAULT NULL,
  `completado` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `scales_users`
--



-- --------------------------------------------------------
ALTER TABLE `users_inscriptions`
 DROP INDEX `users_inscriptions_nit_unique`;

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`id`);


-- Indices de la tabla `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `scales`
--
ALTER TABLE `scales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `scales_users`
--
ALTER TABLE `scales_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scales_users_codigousuario_foreign` (`codigoUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;


--
-- AUTO_INCREMENT de la tabla `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `rules`
--
ALTER TABLE `rules`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT de la tabla `scales`
--
ALTER TABLE `scales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT de la tabla `scales_users`
--
ALTER TABLE `scales_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;


--
-- Filtros para la tabla `scales_users`
--
ALTER TABLE `scales_users`
  ADD CONSTRAINT `scales_users_codigousuario_foreign` FOREIGN KEY (`codigoUsuario`) REFERENCES `users_inscriptions` (`Codigorandom`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

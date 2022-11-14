-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-07-2022 a las 00:43:34
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

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
-- Estructura de tabla para la tabla `departamentos`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recommendations`
--

CREATE TABLE `recommendations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recommendation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recommendations`
--

INSERT INTO `recommendations` (`id`, `recommendation`, `type`, `created_at`, `updated_at`) VALUES
(1, '1. La estrategia y el nivel directivo de la organización orientan las acciones para responder y gestionar las necesidades de los pacientes con Cáncer de Próstata, que demuestran impacto en los compromisos de su oferta de valor, en la operación de los procesos de atención y en los resultados de diagnóstico temprano, efectividad, seguridad y calidad de su Modelo de Atención y de prestación de servicios. Lo anterior incluye:\r\n\r\n• Definición de un programa de atención formalmente constituido, que se alinea a la ruta de atención del paciente y articula en su Modelo de atención, los diferentes actores, escenarios y disciplinas del conocimiento, para que en el enfoque de atención integral e integrada genere resultados que aporten al cumplimiento de los objetivos estratégicos, a la promesa de valor para los pacientes y al desarrollo de una cultura de excelencia entorno a la atención de los pacientes con Cáncer de Próstata.\r\n• Articulación estratégica del Programa con las políticas institucionales de atención integral, calidad, seguridad del paciente, atención centrada en el paciente, humanización y gestión de talento humano; lo que alinea el propósito de impacto organizacional.\r\n', 'Gobierno', NULL, NULL),
(2, '2. El programa de atención en cáncer de Próstata, está inmerso en el nivel de gobernanza clínica de la institución, quien define el liderazgo y promueve el diseño, despliegue e implementación de los procesos, procedimientos y mecanismos de monitoreo y mejoramiento para garantizar, en el marco de la mejor evidencia científica disponible, la articulación a la ruta del paciente de los diferentes actores, escenarios, procesos y disciplinas necesarias para brindar al paciente la mejor atención posible. Lo anterior implica:\r\n\r\n• Definición y empoderamiento del líder o líderes clínicos responsables de diseñar la atención de los pacientes con CP.\r\n• Los perfiles, competencias, roles y responsabilidades de los líderes están claramente definidos.\r\n• Liderar el diseño del programa diferencial para la atención y gestión de los pacientes con CP, generando estrategias y espacios de referenciación, comparación, búsqueda y adopción de las mejores prácticas disponibles en la evidencia científica, que sirven de soporte al Modelo de atención del programa.\r\n• Armonizar los medios y recursos necesarios para garantizar la estandarización de los procesos de atención, la integración de procesos, escenarios, servicios y disciplinas clínicas y responder de manera efectiva a los objetivos y metas definidas para garantizar los mejores resultados de valor para el paciente: desempeño clínico, satisfacción y experiencia con el cuidado. \r\n', 'Gobierno', NULL, NULL),
(3, '3.• Documento de conformación del programa con la definición de la misión, visión y población objeto.\n• Visibilidad en la estructura funcional de la organización y articulación con los procesos institucionales, escenarios y servicios necesarios para brindar la mejor atención posible a los pacientes.\n• Definición clara del alcance, criterios de inclusión y exclusión, objetivos y metas de valor superior del programa de atención de pacientes con CP\n• Adopción y/o adaptación de las guías de práctica clínica que soportan los proceso de atención.\n• Procesos de atención estandarizados, que siguen la ruta del paciente, desde la prevención, identificación de factores de riesgo, diagnóstico, tratamiento y seguimiento, que están soportados en la mejor y más actualizada evidencia científica y que cuenta con estrategias e intervenciones claramente definidas para garantizar, que las mejores prácticas para la atención de los pacientes con CP, se implementan y suceden en la atención del mundo real.\n• Definición, conformación y gestión de un equipo multidisciplinario responsable de la operación de los procesos de atención, que tiene:\no Perfiles, competencias, roles y responsabilidades claramente definidos para la operación de los procesos de atención de cara al paciente, familia y cuidadores.\no Programas de capacitación, entrenamiento y educación para soportar, mantener las competencias, fomentar el trabajo en equipo y el desarrollo de equipos de alto desempeño. Incluye inducción, educación continuada, certificaciones de educación y experiencia para el abordaje de los pacientes con CP. \no Sistemas de comunicación efectiva.\no Evaluación sistemática y periódica del desempeño del equipo multidisciplinario.\n• Indicadores de estructura, proceso y resultado, que permiten evaluar el desempeño del programa y el cumplimiento de las metas, objetivos y valor que se entrega al paciente.\n• Procesos y espacios estructurados para el análisis de resultados, que muestren y generen aprendizaje organizacional, mejoramiento continuo, innovación y que fortalezcan una cultura de valor, en torno a la atención de los pacientes con CP.\n• Estrategias para desplegar, evaluar y generar una cultura organizacional para la prevención, identificación de factores de riesgo, y referenciación de los pacientes al programa de atención para CP, en articulación con otros actores, para una adecuada aproximación a los procesos de evaluación y diagnóstico y posterior seguimiento y vigilancia en la integración del cuidado. Incluye educación sistemática y empoderamiento a los pacientes y equipos de salud de atención primaria y de la línea de frente y responsables del seguimiento, monitoreo y vigilancia del paciente en el tiempo.\n• Procesos de referenciación y de aprendizaje colaborativo que permite generar relaciones de confianza y articular otras instituciones y actores en el propósito común de impactar los resultados de salud de los pacientes con CP.\n', 'Gobierno', NULL, NULL),
(4, '1. El programa para la atención de pacientes con CP está construido alrededor de la mejor evidencia disponible, entorno a un equipo interdisciplinario que representa todos los atributos y fortalezas de la institución, consolidado alrededor del paciente y a su entorno, y que define sus resultados en salud desde la perspectiva del paciente, lo cual incluye:\r\n\r\n• Estandarización del programa de atención de pacientes con CP que responda a las características de la institución y necesidades de la población objeto, en concordancia con los lineamientos y requerimientos planteados por la literatura para la prestación de servicios de salud de calidad y excelencia, con una estructura que incluya todos los niveles de la organización y que responda a los objetivos de la organización y del paciente.\r\n• Construcción, implementación y medición de un proceso de atención que aborde de forma integral la ruta de atención del paciente en donde se considere no solo al equipo de la institución, sino a los profesionales e instituciones que direccionan al paciente, así como al aseguramiento, prestación de servicios en salud, el seguimiento y el costo del proceso de atención. \r\n• Construcción, definición y análisis de los objetivos y resultados claves del programa de atención de pacientes con CP, así como el sistema de métricas y evaluación de desempeño del programa, con su correspondiente estrategia de difusión de resultados.\r\n• Construcción, definición y herramientas para la medición, intervención, análisis y mejoramiento del proceso de atención en la institución en donde se valore la estandarización del modelo de atención de pacientes con CP.\r\n• La institución de salud cuenta con estrategias, herramientas y procesos de análisis que permiten medir, evaluar y disminuir la variabilidad de los procesos de atención en CP de cara a los planteamientos definidos por la organización.\r\n', 'Cohesion e integralidad', NULL, NULL),
(5, '2. El programa para la atención de pacientes con CP garantiza que su conformación, despliegue y mejoramiento se da como resultado de la valoración y análisis de la mejor evidencia medica disponible, que se articula con la necesidades, expectativas y definición de resultados expresados por el paciente y que está en total articulación con las directrices, objetivos y procesos organizacionales de la institución, garantizado en todo momento un proceso de atención en Cáncer de próstata con estándares de valor superior. Lo cual incluye:\n\n• Un proceso de análisis, evaluación e incorporación de la evidencia disponible alrededor de CP.\n• Un proceso de análisis, evaluación e incorporación de la evidencia y datos del mundo real alrededor de CP en la institución, que permitan enriquecer lo encontrado en la literatura médica.\n• El desempeño clínico en CP en la institución, que no es otra cosa que el logro de los objetivos propuestos (efectividad) y la ausencia o control de los riesgos (seguridad), están no solo contenidas dentro de la oferta de valor de la institución, sino que estos son identificables, medibles y muestran de mejoramiento sistemático.\n• Como resultado de los procesos de incorporación, medición y apropiación de la evidencia y datos tanto de la evidencia como del mundo real en CP, la institución cuenta con elementos que permiten valorar, medir, analizar, trazar y evaluar el nivel de cohesión y consistencia del proceso de atención en CP, de acuerdo con los lineamientos dados tanto por la organización como por el equipo clínico. \n', 'Cohesion e integralidad', NULL, NULL),
(6, '3. El programa para la atención de pacientes con Cáncer de Próstata cuenta con una estrategia de educación sistemática, que abarque de forma transversal a la organización y al paciente, para garantizar procesos de socialización, que promuevan la adherencia y empoderamiento en el paciente y en la organización una cultura de excelencia entorno a CP, así como la generación de conocimiento para la referenciación. Cuenta con:\r\n\r\n• Un programa de educación claramente estructurado en torno a CP que  responde a la valoración de necesidades del talento humano, pacientes, familiares y componente directivo, con el objetivo no solo de educar sino de generar adherencia a las intervenciones del programa, conocimiento y mejoramiento sistemático. \r\n• Procesos de difusión del programa de atención para CP, que permiten a cualquier miembro del equipo clínico conocer de forma completa y suficiente los objetivos, estrategias, procesos, intervenciones y herramientas de la atención en CP.\r\n• El paciente y su red de cuidado como un elemento fundamental en el proceso educativo en CP, cuenta con herramientas y estrategias dentro del modelo de atención institucional para valorar tanto su conocimiento como su compresión de la enfermedad, así como el proceso de atención del cual hace parte.\r\n• Los procesos educativos de la institución van enmarcados en la ruta global del paciente en donde paciente, instituciones, aseguradoras, prestadores y servicios de apoyo, no solo conocen y entienden el modelo de atención, sino que comprenden de forma clara su rol dentro del proceso y su impacto. Lo anterior cuenta con estrategias de medición y análisis a cargo de la institución.\r\n', 'Cohesion e integralidad', NULL, NULL),
(7, '4. La estandarización del Programa de atención para CP, traza la ruta del paciente, identifica los elementos clave basados en la evidencia científica y genera estrategias e intervenciones para su implementación en el mundo real, que guíen,  la aproximación del paciente al proceso de prevención, derivación, diagnóstico, tratamiento, seguimiento, monitoreo y vigilancia de los pacientes con CP, en los propósitos de contribuir a mejorar la calidad de la atención de los pacientes, optimizar los recursos en salud y disminuir la posible variabilidad de la práctica clínica. Debe incluir como mínimo los siguientes parámetros de la dimensión práctico- asistencial:\r\n\r\n• Estrategias e intervenciones claramente definidas para fomentar la prevención y diagnóstico temprano de cáncer de próstata, lo que incluye:\r\no Procesos de educación sistemática a comunidad y profesionales de atención en la línea de frente.\r\no Definición de los factores de riesgo relacionados con CP, basados en la mejor evidencia científica y estrategias para perfilarlos en la población de referencia. (edad, raza, antecedente familiar de CP, asociación genética: BRCA1/2)\r\no Procesos de tamización según criterios de riesgo, basados en la mejor evidencia científica disponible. (toma PSA).\r\no Síntomas y signos clínicos sugestivos CP, con especificidad en los hallazgos del tacto rectal, DRE.\r\n• Procesos estandarizados para referenciar a los pacientes con sospecha de CP a valoración por urología (líder propuesto para el proceso de diagnóstico), lo que implica:\r\no Definir y desplegar los criterios (basados en evidencia) para referenciar al paciente al proceso de evaluación y diagnóstico.\r\no Requisitos y componentes mínimos a aportar para una adecuada valoración por el líder de urología.\r\no Definir y gestionar los tiempos óptimos de oportunidad a evaluación. \r\n• La institución tiene estandarizado  el proceso de evaluación y diagnóstico por urología y la coordinación con patología, imágenes diagnósticas  y demás servicios necesarios para hacer un adecuado diagnóstico, en el enfoque de atención en CP, lo que incluye como mínimo:\r\no Protocolos de diagnóstico, considerando indicaciones de RMN Multiparamétrica (mpMRI), de solicitud y realización de toma de biopsia según las mejores indicaciones de la evidencia científica, así como de otros estudios diagnósticos.\r\no Estandarización de los procesos de patología, que incluyen el perfil del equipo entorno a CP y el procesamiento, evaluación y reporte, utilizando las recomendaciones de calidad de la evidencia (ej Consenso de la Sociedad Internacional de Patología Urológica).\r\no Protocolos de información y apoyo al paciente, familia y cuidadores.\r\n\r\n• Estandarización de un proceso de diagnóstico global de precisión ante la confirmación de diagnóstico de cáncer de próstata, que permita, mediante una evaluación multidimensional, individualizar y caracterizar adecuadamente al paciente y definir un plan de tratamiento óptimo que responda a:\r\no Estadificación, evaluación de riesgo y pronóstico.\r\no Estado de salud, calidad de vida y funcionalidad: incontinencia urinaria, irritación, obstrucción urinaria, síntomas intestinales, disfunción sexual, síntomas hormonales, dolor fatiga, estado emocional; utilizando herramienta basadas en evidencia (ej ICOM cáncer de próstata localizado y avanzado)\r\no Comorbilidades\r\no Necesidades de apoyo, cuidado paliativo y de educación.\r\no Objetivos, expectativas del paciente.\r\nLo anterior implica tener claramente definidos estudios de extensión, parámetros de estudios de patología y de pruebas moleculares y genéticas según la evidencia, herramientas para evaluación de funcionalidad, calidad de vida, necesidades de apoyo y para recoger las expectativas, objetivos y experiencia del paciente.\r\n• Estandarización del proceso de evaluación multidisciplinaria (comité o junta de cáncer de próstata) para la expedición del mejor plan de tratamiento de acuerdo a las individualidades del paciente.\r\n• La formulación del plan de tratamiento debe estar basado en las recomendaciones de la evidencia y debe ser concordante con las características del paciente. Debe incluir como mínimo.\r\no Intervenciones terapéuticas en la intención definida.\r\no Líder responsable de la atención, concordante con la intervención de tratamiento primario definido.\r\no Plan de seguimiento y coordinación de escenarios para seguimiento del equipo multidisciplinario.\r\no Cuidados paliativos de manera precoz.\r\no Manejo de comorbilidades.\r\no Intervenciones de apoyo, información y educación.\r\n•  Estandarización del proceso de seguimiento que debe incluir\r\no Seguimiento PSA o pruebas para evaluar la respuesta bioquímica según los lineamientos definidos por la evidencia.\r\no Seguimiento a complicaciones (quirúrgicas, secundarias a radiación, toxicidad medicamentosa, eventos esqueléticos agudos).\r\no Seguimiento estado de salud y calidad de vida.\r\no Seguimiento y vigilancia para identificar recaída, progresión y/o muerte.\r\n• Estandarización de los procesos o ciclos de atención para escalonamiento de tratamiento.\r\n• Estandarización del proceso, incluyendo herramientas a utilizar, para evaluar la satisfacción y la experiencia del paciente con el proceso de atención.\r\n', 'Cohesion e integralidad', NULL, NULL),
(8, '1. El programa de atención para pacientes con CP de la organización, tiene definido un mecanismo para evaluar de manera sistemática, el desempeño clínico de los procesos de atención que se entregan al paciente y garantiza que los resultados de la evaluación están validados, son oportunos y confiables y permiten la toma de decisiones consentidas. Lo anterior incluye:\r\n\r\n• Definición, estandarización de indicadores de estructura, proceso y resultado y definición de metas, que tracen la ruta de atención del paciente y muestren el impacto, en términos de efectividad (logro de los objetivos de tratamiento) y seguridad (minimización de los riesgos relacionados con el cuidado), de las estrategias, procesos e intervenciones de la atención integral con la que se aborda al paciente, familia, entorno y cuidadores.\r\n• Los indicadores para la evaluación del desempeño están basados y son validados con la evidencia científica actualizada disponible y permiten trazar el proceso de atención y las intervenciones clave en la ruta del paciente. Como mínimo debe evaluar:\r\n\r\no Efectividad de los procesos de perfilamiento de factores de riesgo (antecedentes, comorbilidades, marcadores bioquímicos), considerando la referencia oportuna a valoración por urología, como líder del proceso diagnóstico.\r\no Oportunidad al diagnóstico, considerando tiempos desde remisión, valoración por especialista y reporte de patología. \r\no Calidad de los reportes de patología según recomendaciones internacionales de la evidencia científica.\r\no Evaluación de pacientes incidentes, recurrentes o en progresión por equipo multidisciplinario, en escenarios estandarizados de junta médica y/o comité de cáncer de próstata.\r\no Estadificación TNM\r\no Pacientes con CP localizado (estadio 0, I, II)\r\no Pacientes con CP localmente avanzado o avanzado (estadios III, IV)\r\no Clasificación de riesgo según estadificación Gleason score.\r\no Evaluación estado de salud, calidad de vida y funcionalidad del paciente.\r\no Evaluación comorbilidades.\r\no Evaluación de las expectativas, gustos preferencias del paciente.\r\no Concordancia del plan de manejo con los algoritmos estandarizados de toma de decisiones. Pacientes en quienes las intervenciones de tratamiento son coherentes con el estadio, el nivel de riesgo, según la evidencia científica adoptada por el programa.\r\no Indicación y despliegue de intervenciones de cuidados paliativos en forma precoz para todo paciente con CP.\r\no Calidad y efectividad de la información suministrada al paciente, familia y/o cuidadores.\r\no Oportunidad y acceso a las intervenciones de tratamiento.\r\no Continuidad del proceso de seguimiento.\r\no Cumplimiento de metas terapéutica: \r\n Efectividad proceso quirúrgico (márgenes quirúrgicos)\r\n Respuesta bioquímica \r\n Seguimiento PSA\r\n Cumplimiento de las expectativas y necesidades del paciente (seguimiento estado de salud, calidad de vida y funcionalidad).\r\n Complicaciones (quirúrgicas, secundarias a radiación, toxicidad medicamentosa, eventos esqueléticos agudos)\r\n Control episodios agudos (ingresos a urgencias y/o hospitalización relacionados con CP).\r\n Sobrevida libre de progresión\r\n Sobrevida global.\r\no Experiencia del paciente y satisfacción con la atención.\r\n\r\n• Estandarización de datos, fuentes, definiciones, códigos, clasificaciones y terminología necesarios para la evaluación la atención que se brinda en el marco del programa para CP, fichas técnicas de indicadores y herramientas de recolección de datos y su implementación en los registros asistenciales de la organización, incluyendo la historia clínica de los pacientes.\r\n• Mecanismos para garantizar que la recolección de los datos es oportuna, precisa, completa y suficientemente discriminada para los propósitos del programa de atención para CP. (Minería de datos).\r\n• Sistemas de información que soportan la medición y utilización de los resultados de manera sistemática, para soportar, mejorar y validar la toma de decisiones clínicas y de mejoramiento del programa.\r\n• La medición se hace de manera sistemática y es capaz de demostrar tendencias frente a los resultados y metas definidos en cumplimiento de los objetivos del programa.\r\n', 'Trazabilidad del resultado', NULL, NULL),
(9, '2. El programa de atención para pacientes con CP utiliza los resultados de la evaluación de desempeño para identificar brechas, mejorar los procesos de atención y generar aprendizaje organizacional. Implica:\r\n\r\n• Generar espacios para que el equipo clínico del programa, en el marco del gobierno clínico, evalúe los resultados, las tendencias de la medición, en pro de generar mejoramiento y aprendizaje organizacional.\r\n• Hacer, con los resultados de la medición gestión temprana y efectiva de la atención, desarrollando e implementando intervenciones de acción inmediata y de corto alcance y/o de acción global para impactar la excelencia en los resultados de valor para el paciente.\r\n• Utilizar los resultados de la experiencia del mundo real, para generar conocimiento que apoyen el desarrollo de programas de atención diferencial en el país para el abordaje, manejo y gestión del cáncer de próstata.\r\n', 'Trazabilidad del resultado', NULL, NULL),
(10, '3. El programa hace ejercicios de referenciación, que permiten correlacionar los resultados de desempeño de sus procesos de atención con los resultados de la evidencia y referentes internacionales.\r\n\r\n• Puede mostrar casos de éxito y/o experiencias exitosas derivadas de la evaluación de los procesos de y su correlación con los resultados de salud para el paciente, que sirvan como referente para otras organizaciones y para el país.\r\n', 'Trazabilidad del resultado', NULL, NULL);

-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `PorcenajeGobierno` double NOT NULL,
  `PorcenajeCohesionIntegralidad` double NOT NULL,
  `PorcenajeTrazabilidad` double NOT NULL,
  `PorcenajeTotal` double NOT NULL,
  `scaleUser` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `results`
--



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scales`
--

CREATE TABLE `scales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `scale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` int(11) NOT NULL,
  `procentaje` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `scales`
--

INSERT INTO `scales` (`id`, `scale`, `valor`, `procentaje`, `created_at`, `updated_at`) VALUES
(1, 'las directrices planteadas en la recomendación estan cumplidas en su totalidad', 5, 100, NULL, NULL),
(2, 'las directrices planteadas en la recomendación estan cumplidas pero no en su totalidad', 4, 80, NULL, NULL),
(3, 'las directrices planteadas en la recomendación se dan de forma parcial ', 3, 60, NULL, NULL),
(4, 'las directrices planteadas en la recomendación se dan de forma anecdotica o escasa', 2, 40, NULL, NULL),
(5, 'las directrices planteadas en la recomendación o no estan o no son identificables', 1, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scales_users`
--

CREATE TABLE `scales_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `scalegobierno1` int(11) NOT NULL,
  `scalegobierno2` int(11) NOT NULL,
  `scalegobierno3` int(11) NOT NULL,
  `scalecohesionintegrabilidad1` int(11) NOT NULL,
  `scalecohesionintegrabilidad2` int(11) NOT NULL,
  `scalecohesionintegrabilidad3` int(11) NOT NULL,
  `scalecohesionintegrabilidad4` int(11) NOT NULL,
  `scaletrazabilidadresultado1` int(11) NOT NULL,
  `scaletrazabilidadresultado2` int(11) NOT NULL,
  `scaletrazabilidadresultado3` int(11) NOT NULL,
  `codigoUsuario` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `scales_users`
--



alter table `users_inscriptions` 
ADD `Evaluador` bigint(20) DEFAULT NULL 
after `Codigorandom`; 

--
-- Volcado de datos para la tabla `users_inscriptions`
--

--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `respuestas_id_pregunta_foreign` (`id_pregunta`);

--
-- Indices de la tabla `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `results_scaleuser_unique` (`scaleUser`);

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
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`ID_TIPO_DOCUMENTO`);

--
-- Indices de la tabla `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  ADD PRIMARY KEY (`ID_TIPO_USUARIO`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_documento_unique` (`Documento`),
  ADD UNIQUE KEY `users_correo_unique` (`Correo`),
  ADD UNIQUE KEY `users_usuario_unique` (`Usuario`);

--
-- Indices de la tabla `users_inscriptions`
--
ALTER TABLE `users_inscriptions`
  ADD PRIMARY KEY (`Codigorandom`),
  ADD UNIQUE KEY `users_inscriptions_nit_unique` (`nit`),
  ADD UNIQUE KEY `users_inscriptions_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1122;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `scales`
--
ALTER TABLE `scales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `scales_users`
--
ALTER TABLE `scales_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `ID_TIPO_DOCUMENTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  MODIFY `ID_TIPO_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD CONSTRAINT `respuestas_id_pregunta_foreign` FOREIGN KEY (`id_pregunta`) REFERENCES `preguntas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_scaleuser_foreign` FOREIGN KEY (`scaleUser`) REFERENCES `scales_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `scales_users`
--
ALTER TABLE `scales_users`
  ADD CONSTRAINT `scales_users_codigousuario_foreign` FOREIGN KEY (`codigoUsuario`) REFERENCES `users_inscriptions` (`Codigorandom`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*
 * Pilote_CS_EPAPER.h
 *
 *  Created on: Jun 29, 2025
 *      Author: ilyes
 *  @brief   Pilote pour la gestion de la broche CS (Chip Select) de l'e-paper sur STM32F4xx DISC1
 */

#ifndef PILOTE_CS_EPAPER_H_
#define PILOTE_CS_EPAPER_H_
#include "main.h"

/**
 * @brief Met la broche CS_EPAPER à l'état haut (désactive l'e-paper)
 */
void Pilote_CS0_EPAPER_metAUn(void);

/**
 * @brief Met la broche CS_EPAPER à l'état bas (active l'e-paper)
 */
void Pilote_CS0_EPAPER_metAZero(void);

/**
 * @brief Met la broche CS_EPAPER à l'état passé en paramètre (1 ou 0)
 * @param Niveau 1 pour haut, 0 pour bas
 */
void Pilote_CS0_EPAPER_metA(unsigned char Niveau);

/**
 * @brief Initialise le pilote CS_EPAPER en mettant la broche CS_EPAPER à l'état haut
 */
void Pilote_CS0_EPAPER_initialise(void);

/**
 * @brief Met la broche DC_EPAPER à l'état haut (commande)
 */
void Pilote_DC_EPAPER_metAUn(void);

/**
 * @brief Met la broche DC_EPAPER à l'état bas (data)
 */
void Pilote_DC_EPAPER_metAZero(void);

/**
 * @brief Met la broche DC_EPAPER à l'état passé en paramètre (1 ou 0)
 * @param Niveau 1 pour haut, 0 pour bas
 */
void Pilote_DC_EPAPER_metA(unsigned char Niveau);

/**
 * @brief Initialise le pilote DC_EPAPER en mettant la broche DC_EPAPER à l'état bas
 */
void Pilote_DC_EPAPER_initialise(void);

/**
 * @brief Met la broche RST_EPAPER à l'état haut (reset)
 */
void Pilote_RST_EPAPER_metAUn(void);

/**
 * @brief Met la broche RST_EPAPER à l'état bas (reset)
 */
void Pilote_RST_EPAPER_metAZero(void);

/**
 * @brief Met la broche RST_EPAPER à l'état passé en paramètre (1 ou 0)
 * @param Niveau 1 pour haut, 0 pour bas
 */
void Pilote_RST_EPAPER_metA(unsigned char Niveau);

/**
 * @brief Initialise le pilote RST_EPAPER en mettant la broche RST_EPAPER à l'état haut
 */
void Pilote_RST_EPAPER_initialise(void);

/**
 * @brief Lit l'état de la broche BUSY_EPAPER
 * @return 1 si l'e-paper est occupé, 0 sinon
 */
unsigned char Pilote_BUSY_EPAPER_lit(void);

/**
 * @brief Initialise le pilote BUSY_EPAPER (rien à faire, déjà initialisé par STM32CubeMX)
 */
void Pilote_BUSY_EPAPER_initialise(void);

#endif /* PILOTE_CS_EPAPER_H_ */

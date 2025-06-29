/*
 * Pilote_CS_EPAPER.c
 *
 *  Created on: Jun 29, 2025
 *      Author: ilyes
 * *  @brief   Pilote pour la gestion de la broche CS (Chip Select) de l'e-paper sur STM32F4xx DISC1
 */
#include "../Pilotes/PiloteIO_SPI_EPAPER.h"
#include "main.h"






// Definitions privees
// pas de definitions privees

// Declarations de fonctions privees
// pas de fonctions privees

// Definitions de variables privees
// pas de variables privees

// Definitions de fonctions privees
// pas de fonctions privees

// Definitions de variables publiques
// pas de variables publiques

// Definitions de fonctions publiques

/**
 * @brief Met la broche CS_EPAPER ï¿½ l'ï¿½tat haut (dï¿½sactive l'e-paper)
 */
void Pilote_CS0_EPAPER_metAUn(void)
{
    HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_SET);
}

/**
 * @brief Met la broche CS_EPAPER ï¿½ l'ï¿½tat bas (active l'e-paper)
 */
void Pilote_CS0_EPAPER_metAZero(void)
{
  HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_RESET);
}

/**
 * @brief Met la broche CS_EPAPER ï¿½ l'ï¿½tat passï¿½ en paramï¿½tre (1 ou 0)
 * @param Niveau 1 pour haut, 0 pour bas
 */
void Pilote_CS0_EPAPER_metA(unsigned char Niveau)
{
  HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, Niveau ? GPIO_PIN_SET : GPIO_PIN_RESET);
}
/**
 * @brief Initialise le pilote CS_EPAPER en mettant la broche CS_EPAPER à l'état haut
 */
void Pilote_CS0_EPAPER_initialise(void)
{
	Pilote_CS0_EPAPER_metAUn();
}

void Pilote_DC_EPAPER_metAUn(void)
{
    HAL_GPIO_WritePin(DAT_COM_GPIO_Port, DAT_COM_Pin, GPIO_PIN_SET);
}

/**
 * @brief Met la broche DC_EPAPER à l'état bas (data)
 */
void Pilote_DC_EPAPER_metAZero(void)
{
    HAL_GPIO_WritePin(DAT_COM_GPIO_Port, DAT_COM_Pin, GPIO_PIN_RESET);
}

/**
 * @brief Met la broche DC_EPAPER à l'état passé en paramètre (1 ou 0)
 * @param Niveau 1 pour haut, 0 pour bas
 */
void Pilote_DC_EPAPER_metA(unsigned char Niveau)
{
    HAL_GPIO_WritePin(DAT_COM_GPIO_Port, DAT_COM_Pin, Niveau ? GPIO_PIN_SET : GPIO_PIN_RESET);
}

/**
 * @brief Initialise le pilote DC_EPAPER en mettant la broche DC_EPAPER à l'état bas
 */
void Pilote_DC_EPAPER_initialise(void)
{
    Pilote_DC_EPAPER_metAZero();
}

void Pilote_RST_EPAPER_metAUn(void)
{
    HAL_GPIO_WritePin(RST_GPIO_Port, RST_Pin, GPIO_PIN_SET);
}

/**
 * @brief Met la broche RST_EPAPER à l'état bas (reset)
 */
void Pilote_RST_EPAPER_metAZero(void)
{
    HAL_GPIO_WritePin(RST_GPIO_Port, RST_Pin, GPIO_PIN_RESET);
}
/**
 * @brief Met la broche RST_EPAPER à l'état passé en paramètre (1 ou 0)
 * @param Niveau 1 pour haut, 0 pour bas
 */
void Pilote_RST_EPAPER_metA(unsigned char Niveau)
{
    HAL_GPIO_WritePin(RST_GPIO_Port, RST_Pin, Niveau ? GPIO_PIN_SET : GPIO_PIN_RESET);
}
/**
 * @brief Initialise le pilote RST_EPAPER en mettant la broche RST_EPAPER à l'état haut
 */
void Pilote_RST_EPAPER_initialise(void)
{
    Pilote_RST_EPAPER_metAUn();
}

/**
 * @brief Met lecture de la broche BUSY_EPAPER
 * @return 1 si l'e-paper est occupé, 0 sinon
 */
unsigned char Pilote_BUSY_EPAPER_lit(void)
{
    return HAL_GPIO_ReadPin(BUSY_GPIO_Port, BUSY_Pin);
}

/**
 * @brief Initilise le pilote BUSY_EPAPER, en assumant que stm initalise le periphérique GPIO 
 */
void Pilote_BUSY_EPAPER_initialise(void)
{
   //fait rien, le pilote est initialisé par STM32CubeMX 
}

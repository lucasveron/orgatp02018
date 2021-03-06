/*
 ============================================================================
 Name        : tp0.c
 Author      : grupo orga 66.20
 Version     : 1.0
 Copyright   : Orga6620
 Description : Trabajo practico 0: Infraestructura basica
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <getopt.h>
#include <ctype.h>

#define VERSION "1.0"

#define TRUE 0
#define FALSE 1

#define MAX_ARGS	13
#define MIN_ARGS	2

#define MAXIMUM_ITERATION  255

#define MAX_BUFFER   100

#define MAX_LENGTH_CHARACTER	11

enum ParameterState {
	 OKEY = 0, INCORRECT_QUANTITY_PARAMS = 1, INCORRECT_MENU = 2, ERROR_FILE = 3, ERROR_MEMORY = 4, ERROR_PARAM = 5, ERROR_FORMAT = 6
};

enum ResultState {
	RDO_OKEY = 0, ERROR_WRITE = -1
};

FILE * fileOutput;
char * buffer;
int quantityCharactersInBuffer = 0;
int ofd;

typedef struct number {
	double realPart;
	double imaginaryPart;

} complex;

typedef struct params {
	char * resolution;
	char * center;
	char * width;
	char * height;
	char * seed;
	char * output;
} params;

typedef struct paramsDraw {
	int resolutionX;
	int resolutionY;
	complex center;
	double width;
	double height;
	complex seed;
	char * pathOutput;
} paramsDraw;

// Se usa para transformar un int en una cadena de caracteres.
/*
 * En C se tiene:
 * int
 *   bytes = 4
 *   Máximo = 2,147,483,647 (4,294,967,295 cuando es unsigned)
 *   Mínimo = -2,147,483,648 (0 cuando es unsigned)
 * Entonces reservo 11 bytes (10 numeros + 1 signo, si es negativo).
 */
typedef struct character {
	char data [MAX_LENGTH_CHARACTER];
	int length;
} character;

character convertIntToCharacter(int value) {
	character ch;
	ch.length = 0;

	// Inicializo el array de char's.
	int i;
	for (i = 0; i < MAX_LENGTH_CHARACTER; i++) {
		ch.data[i] = '\0';
	}

	sprintf(ch.data, "%d", value);

	int finish = FALSE;
	i = 0;
	while (i < 20 && finish == FALSE) {
		if (ch.data[i] == '\0') {
			finish = TRUE;
		} else {
			ch.length ++;
		}

		i ++;
	}

	return ch;
}

params initParams(){
	params params;

	// valor por defecto: 640x480 puntos.
	params.resolution = "640x480";

	// valor por defecto: 0+0i
	params.center = "0+0i";

	// valor por defecto: 2
	params.width = "2";

	// valor por defecto: 2
	params.height = "2";

	// valor por defecto: -0.726895347709114071439+0.188887129043845954792i
	params.seed = "-0.726895347709114071439+0.188887129043845954792i";

	params.output = NULL;

	return params;
}

int retrieveParams(int argc, char *argv[], params *p) {
	int incorrectOption = FALSE;

	/* Una estructura de varios arrays describiendo
	 * los valores largos
	 */
	const struct option longOptions[] = {
			{"resolution",	required_argument,  0,	'r' }, // optional_argument
			{"center",		required_argument,  0,	'c' },
			{"width",		required_argument, 	0,  'w' },
			{"height",		required_argument, 	0,  'H' },
			{"seed",		required_argument, 	0,  's' },
			{"output",		required_argument, 	0,  'o' },
			{0,				0,                 	0,   0  }
	};

	int longIndex = 0;
	char opt = 0;

	/* Una cadena que lista las opciones cortas validas */
	const char* const smallOptions = "r:c:w:H:s:o:";

	/*
	 * Switch para obtener los parámetros de entrada.
	 */
	while ((opt
			= getopt_long(argc, argv, smallOptions, longOptions, &longIndex))
			!= -1 && incorrectOption == FALSE) {
		switch (opt) {
			case 'r':
				p->resolution = optarg;
				break;
			case 'c':
				p->center = optarg;
				break;
			case 'w':
				p->width = optarg;
				break;
			case 'H':
				p->height = optarg;
				break;
			case 's':
				p->seed = optarg;
				break;
			case 'o':
				p->output = optarg;
				break;
			default:
				incorrectOption = TRUE;
		}
	}

	if (incorrectOption == TRUE) {
		return ERROR_PARAM;
	}

	return OKEY;
}

double getPixelRe(complex center, double width, int y, int resolutionX, int resolutionY) {
	if (resolutionX == 1 && resolutionY == 1) {
		return center.realPart;
	}

	return (center.realPart - width/2 + y * (width/resolutionY));
}

double getPixelIm(complex center, double height, int x, int resolutionX, int resolutionY) {
	if (resolutionX == 1 && resolutionY == 1) {
		return center.imaginaryPart;
	}

	return (center.imaginaryPart + height/2 - x * (height/resolutionX));
}

void closeFile(char * pathOutput) {
	if (fileOutput == NULL || pathOutput == NULL || strcmp("-",pathOutput) == 0) {
        fileOutput = NULL;
		return;
	}

	if (fileOutput != NULL) {
		int result = fclose(fileOutput);
		if (result == EOF) {
			fprintf(stderr, "[Warning] El archivo de output no pudo ser cerrado correctamente: %s \n", pathOutput);
		}

        fileOutput = NULL;
	}
}

double getNewRealValue(double pixelReal, double pixelmaginary, double seedReal) {
    return pixelReal * pixelReal - pixelmaginary * pixelmaginary + seedReal;
}

double getNewImaginValue(double pixelReal, double pixelmaginary, double seedImagin) {
    return 2 * pixelReal * pixelmaginary + seedImagin;
}

int writeBufferInOFile(char * bufferToLoad, int quantityCharactersInBufferToLoad) {
    if (fileOutput == NULL || quantityCharactersInBufferToLoad <= 0) {
		return OKEY;
	}

	int completeDelivery = FALSE;
	int bytesWriteAcum = 0;
	int bytesToWrite = quantityCharactersInBufferToLoad;
	while (completeDelivery == FALSE) {
		int bytesWrite = write(ofd, bufferToLoad + bytesWriteAcum, bytesToWrite);
		if (bytesWrite < 0) {
			fprintf(stderr, "[Error] Hubo un error al escribir en el archivo. \n");
			return ERROR_WRITE;
		}

		bytesWriteAcum += bytesWrite;
		bytesToWrite = quantityCharactersInBufferToLoad - bytesWriteAcum;

		if (bytesToWrite <= 0) {
			completeDelivery = TRUE;
		}
	}

	return OKEY;
}

int loadDataInBuffer(char character) {
    if (buffer == NULL) {
        buffer = (char *) malloc(MAX_BUFFER *sizeof(char));
        if (buffer == NULL) {
            fprintf(stderr, "[Error] Hubo un error de asignacion de memoria (buffer). \n");
            return ERROR_MEMORY;
        }

        quantityCharactersInBuffer = 0;
    }

	buffer[quantityCharactersInBuffer] = character;
	quantityCharactersInBuffer++;

    return OKEY;
}

int putch(char character) {
	if (quantityCharactersInBuffer < MAX_BUFFER) {
		return loadDataInBuffer(character);
	}

	int rdo = writeBufferInOFile(buffer, quantityCharactersInBuffer);
	if (rdo != OKEY) {
		return rdo;
	}

	quantityCharactersInBuffer = 0;
	return loadDataInBuffer(character);
}

int flush() {
	if (quantityCharactersInBuffer > 0) {
		return writeBufferInOFile(buffer, quantityCharactersInBuffer);
	}

	return OKEY;
}

int openFile(char * pathOutput) {
    fileOutput = stdout;
    int outputFileDefault = FALSE;
    if (pathOutput == NULL || strcmp("-", pathOutput) == 0) {
        outputFileDefault = TRUE;
    }

    if (outputFileDefault == FALSE) {
        fileOutput = fopen(pathOutput, "w"); // Opens a text file for writing. Pace the content.
        if (fileOutput == NULL) {
            fprintf(stderr, "[Error] El archivo de output no pudo ser abierto para escritura: %s \n", pathOutput);
            return ERROR_FILE;
        }
    }

    ofd = fileno(fileOutput);

    return OKEY;
}

int loadPixelBrightness(int pixelBrightness) {
	character ch = convertIntToCharacter(pixelBrightness);

    int rdo = OKEY;
    int i;
    for (i = 0; i < ch.length; i++) {
        rdo = putch(ch.data[i]);

        if (rdo != OKEY) {
            return rdo;
        }
    }

    return rdo;
}

int writeHeader(int sizeY, int sizeX, char * pathOutput) {
	character chY = convertIntToCharacter(sizeY);
	character chX = convertIntToCharacter(sizeX);

    int quantityCharactersInBufferToLoad = 9 + chX.length + chY.length;
    char * bufferToLoad = (char *) malloc(quantityCharactersInBufferToLoad *sizeof(char));
    if (bufferToLoad == NULL) {
        fprintf(stderr, "[Error] Hubo un error de asignacion de memoria (bufferToLoad). \n");
        return ERROR_MEMORY;
    }

    bufferToLoad[0] = 'P';
    bufferToLoad[1] = '2';
    bufferToLoad[2] = '\n';

    int idx = 3;
    int i;
    for (i = 0; i < chY.length; i++) {
        bufferToLoad[idx] = chY.data[i];
        idx ++;
    }

    bufferToLoad[idx] = ' ';

    idx ++;
    for (i = 0; i < chX.length; i++) {
        bufferToLoad[idx] = chX.data[i];
        idx ++;
    }

    bufferToLoad[idx] = '\n';
    idx ++;
    bufferToLoad[idx] = '2';
    idx ++;
    bufferToLoad[idx] = '5';
    idx ++;
    bufferToLoad[idx] = '5';
    idx ++;
    bufferToLoad[idx] = '\n';

    int rdoWrite = writeBufferInOFile(bufferToLoad, quantityCharactersInBufferToLoad);
    free(bufferToLoad);

    if (rdoWrite != OKEY) {
        closeFile(pathOutput);

        return ERROR_WRITE;
    }

    return OKEY;
}

int drawJuliaSet(paramsDraw * paramsDraw) {
    int rdo = openFile(paramsDraw->pathOutput);
    if (rdo != OKEY) {
        return rdo;
    }

    rdo = writeHeader(paramsDraw->resolutionY, paramsDraw->resolutionX, paramsDraw->pathOutput);
    if (rdo != OKEY) {
        return rdo;
    }

	complex pixel;
	rdo = OKEY;
    int x;
    for (x = 0; x < paramsDraw->resolutionX; x++) {
        int y;
        for (y = 0; y < paramsDraw->resolutionY; y++) {
            /*
             * Recorro la zona a pintar de arriba hacia abajo, de izquierda a derecha,
             * por lo que comienzo a pintar en la esquina superior izquierda.
             * Busco el complejo asociado al pixel
             */
            pixel.realPart = getPixelRe(paramsDraw->center, paramsDraw->width, y, paramsDraw->resolutionX, paramsDraw->resolutionY);
            pixel.imaginaryPart = getPixelIm(paramsDraw->center, paramsDraw->height, x, paramsDraw->resolutionX, paramsDraw->resolutionY);
            int pixelBrightness = 0; // Brillo del pixel = cantidad de iteraciones
            int finish = FALSE;
        
            while (pixelBrightness < (MAXIMUM_ITERATION - 1) && finish == FALSE) {
                //Dejo de iterar cuando el modulo del punto es mayor a 2
                
                if( (pixel.realPart * pixel.realPart + pixel.imaginaryPart * pixel.imaginaryPart) > 4){
                    finish = TRUE;
                } else {
                    double previousRealValue = pixel.realPart;
                    pixel.realPart = getNewRealValue(pixel.realPart, pixel.imaginaryPart, paramsDraw->seed.realPart);
                    pixel.imaginaryPart = getNewImaginValue(previousRealValue, pixel.imaginaryPart, paramsDraw->seed.imaginaryPart);
                    pixelBrightness++;
                }
            }
            
            // Guardo brillo del pixel
            rdo = loadPixelBrightness(pixelBrightness);
            if (rdo != OKEY) {
            	closeFile(paramsDraw->pathOutput);

				return rdo;
			}

            rdo = putch(' ');
            if (rdo != OKEY) {
                closeFile(paramsDraw->pathOutput);

                return rdo;
            }
		}

        // Aca finaliza el for interno
        rdo = putch('\n');

        if (rdo != OKEY) {
            closeFile(paramsDraw->pathOutput);

            return rdo;
        }
	}

    flush();
    closeFile(paramsDraw->pathOutput);
	return OKEY;
}

int getValidResolution(params * params, paramsDraw * paramsDraw)  {
	if (params->resolution == NULL || strlen(params->resolution) == 0) {
		return ERROR_FORMAT;
	}

	int characterX = 120; // x = 120
	int p0 = params->resolution[0];
	int pN = params->resolution[strlen(params->resolution)-1];
	if(tolower(p0) == characterX || tolower(pN) == characterX) {
		return ERROR_FORMAT;
	}

	int positionX = 0;
	int findX = FALSE;
	int caracterNotNumber = FALSE;
	int caracterInt = -1;
	int moreX = FALSE;
	int i;
	for (i = 0; i < strlen(params->resolution); i++) {
		caracterInt = params->resolution[i];
		if (tolower(caracterInt) == characterX) {
			if (findX == TRUE) {
				moreX = TRUE;
			} else {
				positionX = i;
				findX = TRUE;
			}
		} else {
			/*
			 * 0 = 48
			 * 9 = 57
			 */
			if (caracterInt < 48 || caracterInt > 57) {
				caracterNotNumber = TRUE;
			}
		}
	}

	if (caracterNotNumber == TRUE || findX == FALSE || moreX == TRUE) {
		fprintf(stderr, "[Error] La resolucion especificada es incorrecta.\n");

		return ERROR_FORMAT;
	}

	int length = positionX + 1;
	char resolutionX [length];
	for (i = 0; i < positionX; ++ i) {
		resolutionX[i] = params->resolution[i];
	}
	resolutionX[positionX] = '\0';

	paramsDraw->resolutionY =  atoi(resolutionX);
	if (paramsDraw->resolutionY <= 0) {
		fprintf(stderr, "[Error] Los valores de la resolucion deben de ser mayores a cero.\n");

		return ERROR_FORMAT;
	}

	length = strlen(params->resolution);
	length -= positionX;
	char resolutionY[length];
	for (i = 0; i < (length- 1); ++ i) {
		positionX++;
		resolutionY[i] = params->resolution[positionX];
	}
	resolutionY[length - 1] = '\0';

	paramsDraw->resolutionX =  atoi(resolutionY);
	if (paramsDraw->resolutionX <= 0) {
		fprintf(stderr, "[Error] Los valores de la resolucion deben de ser mayores a cero.\n");

		return ERROR_FORMAT;
	}

	return OKEY;
}

int getValidComplex(params * params, paramsDraw * paramsDraw, int loadCenter, int loadSeed) {
	if (loadCenter == TRUE && params->center == NULL) {
		fprintf(stderr, "[Error] No hay valor de centro especificado.\n");

		return ERROR_FORMAT;
	}

	if (loadSeed == TRUE && params->seed == NULL) {
		fprintf(stderr, "[Error] No hay valor de semilla especificado.\n");

		return ERROR_FORMAT;
	}

	char * complex = NULL;
	if (loadCenter == TRUE) {
		complex = params->center;
	}

	if (loadSeed == TRUE) {
		complex = params->seed;
	}

	// Primer valor
	if ( ( complex[0] == '+' ||
		(complex[0] == '-' && (complex[1] == '-' || complex[1] == '+') ) )){
		if (loadCenter == TRUE) {
			fprintf(stderr, "[Error] Formato incorrecto del numero complejo para el centro.\n");
		}

		if (loadSeed == TRUE) {
			fprintf(stderr, "[Error] Formato incorrecto del numero complejo para la semilla.\n");
		}

		return ERROR_FORMAT;
	}

	// Ultimo valor
	if ((complex[(strlen(complex)-2)]=='-' || (complex[(strlen(complex)-2)]=='+') ) ||
		(complex[(strlen(complex)-1)]!='i' ) ){
		if (loadCenter == TRUE) {
			fprintf(stderr, "[Error] Formato incorrecto del numero complejo para el centro.\n");
		}

		if (loadSeed == TRUE) {
			fprintf(stderr, "[Error] Formato incorrecto del numero complejo para la semilla.\n");
		}

		return ERROR_FORMAT;
	}

	int posSign = -1;
	int findSign = FALSE;
	int moreSign = FALSE;

	int findI = FALSE;
	int moreI = FALSE;
	char caracter = '\0';
	int i;
	for (i = 1; i < (strlen(complex) - 1); i++) {
		caracter = complex[i];
		if (caracter == '+' || caracter == '-') {
			if (findSign == TRUE) {
				moreSign = TRUE;
			} else {
				posSign = i;
				findSign = TRUE;
			}
		} else if (caracter == 'i') {
			findI = TRUE;
		}
	}

	if (moreSign == TRUE || moreI == TRUE || findSign == FALSE || findI == TRUE) {
		if (loadCenter == TRUE) {
			fprintf(stderr, "[Error] Formato incorrecto del numero complejo para el centro.\n");
		}

		if (loadSeed == TRUE) {
			fprintf(stderr, "[Error] Formato incorrecto del numero complejo para la semilla.\n");
		}

		return ERROR_FORMAT;
	}

	// Primer parte corresponde a la parte real
	int length = posSign + 1;
	char real [length];

	int caracterOkey = TRUE;
	int quantityPoint = 0;
	int caracterInt = 0;
	int isNegative = FALSE;
	for (i = 0; i < posSign; ++ i) {
		caracterInt = complex[i];
		/*
		 * 0 = 48
		 * 9 = 57
		 * + = 43
		 * - = 45
		 * . = 46
		 */
		if ((caracterInt < 48 || caracterInt > 57) && caracterInt != 43 && caracterInt != 45 && caracterInt != 46) {
			caracterOkey = FALSE;
		} else {
			if (caracterInt != 43 && caracterInt != 45) {
				real[i] = complex[i];
			}

			if (caracterInt == 45) {
				isNegative = TRUE;
			}
		}

		if (caracterInt == 46) {
			quantityPoint++;
		}
	}
	real[posSign] = '\0';

	if (quantityPoint > 1 || caracterOkey == FALSE) {
		if (loadCenter == TRUE) {
			fprintf(stderr, "[Error] Formato incorrecto del numero complejo para el centro.\n");
		}

		if (loadSeed == TRUE) {
			fprintf(stderr, "[Error] Formato incorrecto del numero complejo para la semilla.\n");
		}

		return ERROR_FORMAT;
	}

	double realPart = (double)(atof(real));

	if (isNegative == TRUE) {
		realPart = realPart * (-1);
	}

	// La segunda parte corresponde a la parte imaginaria
	length = strlen(complex) - posSign - 1;
	char imaginary [length];

	caracterOkey = TRUE;
	quantityPoint = 0;
	caracterInt = 0;
	int posInComplex = posSign + 1;
	for (i = 0; i < (length - 1); ++ i) {
		caracterInt = complex[posInComplex];
		/*
		 * 0 = 48
		 * 9 = 57
		 * . = 46
		 */
		if ((caracterInt < 48 && caracterInt > 57) && caracterInt != 46) {
			caracterOkey = FALSE;
		} else {
			imaginary[i] = complex[posInComplex];
		}

		if (caracterInt == 46) {
			quantityPoint++;
		}

		posInComplex++;
	}
	imaginary[length - 1] = '\0';

	if (quantityPoint > 1 || caracterOkey == FALSE) {
		if (loadCenter == TRUE) {
			fprintf(stderr, "[Error] Formato incorrecto del numero complejo para el centro.\n");
		}

		if (loadSeed == TRUE) {
			fprintf(stderr, "[Error] Formato incorrecto del numero complejo para la semilla.\n");
		}

		return ERROR_FORMAT;
	}

	double imaginaryPart = (double)(atof(imaginary));

	if (complex[posSign] == '-') {
		imaginaryPart = imaginaryPart * (-1);
	}

	if (loadCenter == TRUE) {
		paramsDraw->center.realPart = realPart;
		paramsDraw->center.imaginaryPart = imaginaryPart;
	}

	if (loadSeed == TRUE) {
		paramsDraw->seed.realPart = realPart;
		paramsDraw->seed.imaginaryPart = imaginaryPart;
	}

	return OKEY;
}

int getValidWidth(params * params, paramsDraw * paramsDraw) {
	if (params->width == NULL) {
		fprintf(stderr, "[Error] Debe de especificarse el ancho.\n");

		return ERROR_FORMAT;
	}
	int isNumber = TRUE;
	int caracterInt;
	int quantityPoint = 0;
	int i;
	for (i = 0; i < strlen(params->width); i++) {
		caracterInt = params->width[i];
		/*
		 * 0 = 48
		 * 9 = 57
		 * . = 46
		 */
		if (caracterInt == 46) {
			quantityPoint++;
		} else if (caracterInt < 48 || caracterInt > 57) {
			isNumber = FALSE;
		}
	}

	if (isNumber == FALSE || quantityPoint > 1) {
		fprintf(stderr, "[Error] Formato incorrecto para el ancho.\n");

		return ERROR_FORMAT;
	}

	paramsDraw->width = (double)(atof(params->width));
	if (paramsDraw->width <= 0) {
		fprintf(stderr, "[Error] El ancho deben de ser mayores a cero.\n");

		return ERROR_FORMAT;
	}

	return OKEY;
}

int getValidHeight(params * params, paramsDraw * paramsDraw) {
	if (params->height == NULL) {
		fprintf(stderr, "[Error] Debe de especificarse el alto.\n");

		return ERROR_FORMAT;
	}

	int isNumber = TRUE;
	int caracterInt;
	int quantityPoint = 0;
	int i;
	for (i = 0; i < strlen(params->height); i++) {
		caracterInt = params->height[i];
		/*
		 * 0 = 48
		 * 9 = 57
		 * . = 46
		 */
		if (caracterInt == 46) {
			quantityPoint++;
		} else if (caracterInt < 48 || caracterInt > 57) {
			isNumber = FALSE;
		}
	}

	if (isNumber == FALSE || quantityPoint > 1) {
		fprintf(stderr, "[Error] Formato incorrecto para el alto.\n");

		return ERROR_FORMAT;
	}

	paramsDraw->height = (double)(atof(params->height));
	if (paramsDraw->height <= 0) {
		fprintf(stderr, "[Error] El alto deben de ser mayores a cero.\n");

		return ERROR_FORMAT;
	}

	return OKEY;
}

int getValidPathOutput(params * params, paramsDraw * paramsDraw) {
	if (params->output == NULL || strcmp("-",params->output) == 0) {
		paramsDraw->pathOutput = params->output;

		return OKEY;
	}

	int isCaracterOkey = TRUE;
	int positionPoint = -1;
	int caracterInt;
	int i;
	for (i = 0; i < strlen(params->output); i++) {
		caracterInt = params->output[i];
		/*
		 * 0 = 48
		 * 9 = 57
		 *
		 * A = 65
		 * Z = 90
		 *
		 * a = 97
		 * z = 122
		 *
		 * . = 46
		 *
		 * / = 47
		 *
		 * - = 45
		 *
		 * _ = 95
		 */
		if (caracterInt == 46) {
			// Trato de quedarme con el ultimo punto
			positionPoint = i;
		} else if (!( (caracterInt >= 48 && caracterInt <= 57) || (caracterInt >= 65 && caracterInt <= 90) || (caracterInt >= 97 && caracterInt <= 122) )
				&& caracterInt != 47 && caracterInt != 45 && caracterInt != 95) {
			isCaracterOkey = FALSE;
		}
	}

	if (isCaracterOkey == FALSE || positionPoint == 0) {
		fprintf(stderr, "[Error] Formato incorrecto como nombre de archivo de salida.\n");

		return ERROR_FORMAT;
	}

	int quantityCaracterExtension = strlen(params->output) - positionPoint; // 6 - 2 = 4
	if (quantityCaracterExtension != 4) {
		fprintf(stderr, "[Error] Extension incorrecta para el archivo de salida.\n");

		return ERROR_FORMAT;
	}

	if (params->output[positionPoint] != '.') {
		fprintf(stderr, "[Error] Formato incorrecto como nombre de archivo de salida.\n");

		return ERROR_FORMAT;
	}
	positionPoint++;

	if (params->output[positionPoint] != 'p' && params->output[positionPoint] != 'P') {
		fprintf(stderr, "[Error] Extension incorrecta para el archivo de salida.\n");

		return ERROR_FORMAT;
	}
	positionPoint++;

	if (params->output[positionPoint] != 'g' && params->output[positionPoint] != 'G') {
		fprintf(stderr, "[Error] Extension incorrecta para el archivo de salida.\n");

		return ERROR_FORMAT;
	}
	positionPoint++;

	if (params->output[positionPoint] != 'm' && params->output[positionPoint] != 'M') {
		fprintf(stderr, "[Error] Extension incorrecta para el archivo de salida.\n");

		return ERROR_FORMAT;
	}

	paramsDraw->pathOutput = params->output;

	return OKEY;
}

/*
 * Dibujar el conjunto de Julia y sus vecindades.
 */
int executeFractal(params * params){
	paramsDraw paramsDraw;

	int rdoValidation = getValidResolution(params, &paramsDraw);
	if (rdoValidation != OKEY) {
		return rdoValidation;
	}

	// Center
	rdoValidation = getValidComplex(params, &paramsDraw, TRUE, FALSE);
	if (rdoValidation != OKEY) {
		return rdoValidation;
	}

	// Seed
	rdoValidation = getValidComplex(params, &paramsDraw, FALSE, TRUE);
	if (rdoValidation != OKEY) {
		return rdoValidation;
	}

	// width
	rdoValidation = getValidWidth(params, &paramsDraw);
	if (rdoValidation != OKEY) {
		return rdoValidation;
	}

	// height
	rdoValidation = getValidHeight(params, &paramsDraw);
	if (rdoValidation != OKEY) {
		return rdoValidation;
	}

	// file
	rdoValidation = getValidPathOutput(params, &paramsDraw);
	if (rdoValidation != OKEY) {
		return rdoValidation;
	}

    buffer = NULL;
    fileOutput = NULL;

	int rdo = drawJuliaSet(&paramsDraw);
    if (buffer != NULL) {
        free(buffer);
        buffer = NULL;
    }

    if (fileOutput != NULL) {
        closeFile(paramsDraw.pathOutput);
    }

    return rdo;
}

int execute(int argc, char *argv[]) {
	/*
	 * Inicializamos los params.
	 */
	 params p = initParams();
	/*
	 * Obtenemos los parámetros ingresados.
	 */
	 int rdoValidationParams = retrieveParams(argc,argv,&p);

	/*
	 * Chequeo de errores en la obtención de parámetros.
	 * Si el resultado no es OKEY(0) termino la ejecución.
	 */
	if (rdoValidationParams != OKEY) {
		fprintf(stderr, "[Error] Incorrecta option de menu.\n");

		return ERROR_PARAM;
	}

	/*
	 * Ejecutamos el fractal con los parámetros ingresados.
	 */
	return executeFractal(&p);
}

int main(int argc, char *argv[]) {
	// / -  => 2 parameters as minimum
	// / -r 640x500 -c 0.145-89.2i -w 0.05 -h 2 -s -0.256+145i -o one.pgm  => 13 parameters as maximum

	/*
	 * Si la cantidad de parámetros ingresados es incorrecta salimos.
	 */
	if (argc > MAX_ARGS || argc < MIN_ARGS) {
		fprintf(stderr, "[Error] Cantidad de parámetros incorrecta: %d \n", argc);
		return INCORRECT_QUANTITY_PARAMS;
	}

	return execute(argc, argv);
}

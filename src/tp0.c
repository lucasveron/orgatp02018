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

#define VERSION "1.0"

#define TRUE 0
#define FALSE 1

#define MAX_ARGS 6
#define MIN_ARGS 2

#define MAXIMUM_ITERATION  50

enum ParameterState {
	 OKEY = 0, INCORRECT_QUANTITY_PARAMS = 1, INCORRECT_MENU = 2, ERROR_FILE = 3, ERROR_MEMORY = 4
};

enum ResultState {
	RDO_OKEY = 0, ERROR_WRITE = -1
};

typedef struct number {
	double realPart;
	double imaginaryPart;

} complex;

typedef struct params {
	int incorrectOpt;
	int showversion;
	int showhelp;
	int sout;
	char * res;
	char * c;
	char * w;
	char * h;
	char * seed;
	char * out;
	complex * pos;
	complex * center;
	complex * cseed;
} params;


char* substr(char* cadena, int comienzo, int longitud=0){
    /*
     * if (longitud == 0)
        longitud = strlen(cadena)-comienzo;

    char *nuevo = (char*)malloc(sizeof(char) * (longitud+1));
    nuevo[longitud] = '\0';
    strncpy(nuevo, cadena + comienzo, longitud);

    return nuevo;
     */
}

int getResY(params *p){
	char * source = p->res;
	char * pos = strstr( source, "x" );
	int posi = pos - source;
	char * cy = substr(source,pos,strlen(source));
	return (int)cy;
}

char* getResX(params *p){
	char * source = p->res;
	char * pos = strstr( source, "x" );
	int posi = pos - source;
	char * cx = substr(source,0,posi);
	return cx;
	/*
	 * char * pos = strstr( source, "x" );
	int pos = pos ? pos - source : -1;
	if(pos != -1){
		memcpy( source, &source[10], 4 );
		subbuff[4] = '\0';
	}
	 */
}
/*
 * Muestra la version de la aplicación.
 */
int executeVersion(params *p) {
	if(p->showversion == TRUE){
		fprintf(stderr, "Version: \"%s\" \n", VERSION);
	}
	return OKEY;
}

/*
 * Menú de ayuda
 */
int executeHelp(params *p) {
	if(p->showhelp == TRUE){
		fprintf(stdout, "Uso: \n");
		fprintf(stdout, "	tp0 -h \n");
		fprintf(stdout, "	tp0 -V \n");
		fprintf(stdout, "	tp0 [opciones] \n");
		fprintf(stdout, "Options: \n");
		fprintf(stdout, "	-V, --version		Muestra la version. \n");
		fprintf(stdout, "	-h, --help	    	Muestra esta información. \n");
		fprintf(stdout, "	-r, --resolution	Permite cambiar la resolucion de la imagen generada.El valor por defecto es 640x480 puntos. \n");
		fprintf(stdout, "	-c, --center		Especifica las coordenadas correspondientes al punto central de la porción del plano complejo dibujada, en forma binómica. \n");
		fprintf(stdout, "	-w, --width			Especifica el ancho de la región del plano complejo por dibujar. Valor por defecto: 2 \n");
		fprintf(stdout, "	-H, --height		Especifica el alto de la región del plano complejo por dibujar. Valor por defecto: 2 \n");
		fprintf(stdout, "	-s, --seed			Para configurar el valor complejo de la semilla.\n");
		fprintf(stdout, "	-o, --output		Permite colocar la imagen de salida ó salida estándar si el argumento es - . \n");
		fprintf(stdout, "Ejemplo: \n");
		fprintf(stdout, "	tp0 -o uno.pgm \n");
	}
	return OKEY;
}

/*
 * Setea los parámetros por defecto en caso de ser necesario.
 */
void setDefaultParams(params *p){
	//fprintf(stderr, "setting default params...");
	/*
	 * Seteamos la parte real e imaginaria en (0,0).
	 */
	if(p->pos == NULL){

		complex *z = malloc(sizeof(complex));
		double i = 0.0; // pure imaginary
		double r = 0.0; // pure real
		z->realPart = r;
		z->imaginaryPart = i;
		p->pos = z;
	}
	/*
	 * Seteo la resolución por defecto = 640x480
	 */
	if(strlen(p->res) == 0){
		p->res = "640x480";
	}
	/*
	 * Seteo la el ancho y el alto del rectangulo.
	 */
	if(p->w == 0){
		p->w = 2;
	}
	if(p->h == 0){
		p->h = 2;
	}
	/*
	 * Seteo el valor de la semilla por defecto.
	 */
	if(p->seed == NULL){
		double r = -0.726895347709114071439; // pure imaginary
		double i =  0.188887129043845954792; // pure real
		complex *z1;
		z1->realPart = r;
		z1->imaginaryPart = i;
		p->pos = z1;
	}
}
complex* getcenter(char * center,params *p){
	complex *z = malloc(sizeof(complex));
	double i = 0.0; // pure imaginary
	double r = 0.0; // pure real
	z->realPart = r;
	z->imaginaryPart = i;
	p->pos = z;
}
void retrieveParams(int argc, char *argv[], params *p) {

	/* Una estructura de varios arrays describiendo
	 * los valores largos
	 */
	const struct option longOptions[] = {
			{"version",		no_argument, 		0,  'V' },
			{"help",		no_argument,       	0,  'h' },
			{"resolution",	required_argument,  0,	'r' }, // optional_argument
			{"center",		required_argument,  0,	'c' },
			{"width",	required_argument, 	0,  'w' },
			{"height",	required_argument, 	0,  'H' },
			{"seed",	required_argument, 	0,  's' },
			{"output",	required_argument, 	0,  'o' },
			{0,			0,                 	0,   0  }
	};

	int incorrectOption = FALSE;
	int finish = FALSE;
	//int result = OKEY;
	int longIndex = 0;
	char opt = 0;

	/* Una cadena que lista las opciones cortas validas */
	const char* const smallOptions = "Vhr:c:w:H:s:o:";

	/*
	 * Switch para obtener los parámetros de entrada.
	 */
	while ((opt
			= getopt_long(argc, argv, smallOptions, longOptions, &longIndex))
			!= -1 && incorrectOption == FALSE && finish == FALSE) {
		switch (opt) {
		case 'V' :
			p->showversion = TRUE;
			finish = TRUE;
			break;
		case 'h' :
			p->showhelp = TRUE;
			finish = TRUE;
			break;
		case 'r':
			p->res = optarg;
			break;
		case 'c':
			p->center = getcenter(optarg,&p);
			break;
		case 'w':
			p->w = optarg;
			break;
		case 'H':
			p->h = optarg;
			break;
		case 's':
			p->seed = optarg;
			break;
		case 'o':
			p->out = optarg;
			break;
		default:
			p->incorrectOpt = incorrectOption = TRUE;
		}
	}

	/*
	 * Si no existe parámetro de output seteamos incorrectOpt
	 */
	if(p->out == NULL){
		p->incorrectOpt = TRUE;
		return;
	}
	/*
	 * Seteamos los parámetros faltantes si corresponden.
	 */
	setDefaultParams(p);
}

void executeFractal(params *p){
	return drawJuliaSet(getResX(p), getResY(p), p->center, p->w, p->h, p->seed, p->out);
}

int checkParams(params *p){
	//fprintf(stdout, "params: %s",p->incorrectOpt);
	if (p->incorrectOpt == TRUE) {
		fprintf(stdout, "[Error] Incorrecta option de menu.\n");
		return INCORRECT_MENU;
	}
	return OKEY;
}

params initParams(){
	params p = {
				.incorrectOpt = FALSE,
				.showversion = FALSE,
				.showhelp = FALSE,
				.sout = FALSE,
				.res = "640x480",
				.w = 0,
				.h = 0,
				.out = "",
				.pos = NULL,
				.center = NULL,
				.seed = NULL
		};
	return p;
}

int execute(int argc, char *argv[]) {
	/*
	 * Si existe sólo 1 parámetro(output(-o)
	 * ejecuto el fractal con los parámetros por defecto.
	 */

	/*
	 * if (argc == 1) {
		// Ejecuto fractal por defecto.
		return executeFractalDefault();
	}
	 */


	params p;
	/*
	 * Inicializamos los params.
	 */
	//init(&p);
	 params p = initParams();
	/*
	 * Obtenemos los parámetros ingresados.
	 */
	retrieveParams(argc,argv,&p);

	/*
	 * Chequeo de errores en la obtención de parámetros.
	 * Si el resultado no es OKEY(0) termino la ejecución.
	 */

	int result = checkParams(&p);
	if(result != TRUE){
		return result;
	}

	/*
	 * Mostramos la version si corresponde.
	 */
	executeVersion(&p);
	/*
	 * Mostramos el menú de ayuda si corresponde.
	 */
	executeHelp(&p);
	/*
	 * Ejecutamos el fractal con los parámetros ingresados.
	 */
	executeFractal(&p);

	return OKEY;
}

double getPixelRe(complex center, int width, int y, int resolutionX, int resolutionY) {
	if (resolutionX == 1 && resolutionY == 1) {
		return center.realPart;
	}

	if (resolutionY == 0) {
		printf("resolutionY ES CEROOOO");
	}

	if (resolutionX == 0) {
		printf("resolutionX ES CEROOOO");
	}

	return (center.realPart - width/2 + y * (width/resolutionY));
}

double getPixelIm(complex center, int height, int x, int resolutionX, int resolutionY) {
	if (resolutionX == 1 && resolutionY == 1) {
		return center.imaginaryPart;
	}

	if (resolutionX == 0) {
		printf("resolutionX ES CEROOOO");
	}

	if (resolutionY == 0) {
		printf("resolutionY ES CEROOOO");
	}

	return (center.imaginaryPart + height/2 - x * (height/resolutionX));
}

int resolutionInY = 0;

int loadPixelsInFile(int matrixPixeles[][resolutionInY], char * pathOutput, int sizeX, int sizeY) {
	/*
	 * P2\n
	 * <<alto ancho>>\n
	 * 255\n
	 * <<Cantidad de elementos en la matriz, por cada fila debe de haber un salto de linea>>
	 */
	int tamBuffer = 11 + sizeX * sizeY + sizeY;
	int buffer[tamBuffer];

	buffer[0] = 'P';
	buffer[1] = '2';
	buffer[2] = '\n';
	buffer[3] = sizeY;
	buffer[4] = ' ';
	buffer[5] = sizeX;
	buffer[6] = '\n';
	buffer[7] = '2';
	buffer[8] = '5';
	buffer[9] = '\n';

	int i = 10;
	for (int x = 0; x < sizeX; ++x) {
		for (int y = 0; y < sizeY; ++y) {
			buffer[i] = matrixPixeles[x][y];
			i++;
		}

		buffer[i] = '\n';
		i++;
	}

	FILE * fileOutput = stdout;

	int outputFileDefault = FALSE;
	if (pathOutput == NULL || strcmp("-",pathOutput) == 0) {
		outputFileDefault = TRUE;
	}

	if (outputFileDefault == FALSE) {
		fileOutput = fopen(pathOutput, "w"); // Opens a text file for writing. Pace the content.
		if (fileOutput == NULL) {
			fprintf(stderr, "[Error] El archivo de output no pudo ser abierto para escritura: %s \n", pathOutput);
			return ERROR_FILE;
		}
	}

	fprintf(fileOutput, "P2\n");
	fprintf(fileOutput, "%i %i\n", sizeY, sizeX);
	fprintf(fileOutput, "255\n");

	for (int i = 0; i < sizeX; i++){
		for (int j = 0; j < sizeY; j++){
			fprintf(fileOutput, "%i ", matrixPixeles[i][j]);
		}
		fprintf(fileOutput,"\n");
	}


	/*int ofd = fileno(fileOutput);

	int completeDelivery = FALSE;
	int bytesWriteAcum = 0;
	int bytesToWrite = tamBuffer;
	while (completeDelivery == FALSE) {
		int bytesWrite = write(ofd, buffer + bytesWriteAcum, bytesToWrite);
		if (bytesWrite < 0) {
			fprintf(stderr, "[Error] Hubo un error al escribir en el archivo. \n");

			if (outputFileDefault == FALSE && fileOutput != NULL) {
				int result = fclose(fileOutput);
				if (result == EOF) {
					fprintf(stderr, "[Warning] El archivo de output no pudo ser cerrado correctamente: %s \n", pathOutput);
				}
			}

			return ERROR_WRITE;
		}

		bytesWriteAcum += bytesWrite;
		bytesToWrite = tamBuffer - bytesWriteAcum;

		if (bytesToWrite <= 0) {
			completeDelivery = TRUE;
		}
	}*/

	return RDO_OKEY;
}

int drawJuliaSet(int resolutionX, int resolutionY, complex center, int width, int height, complex seed, char * pathOutput) {
	resolutionInY = resolutionY;
	int matrixPixeles[resolutionX][resolutionY];

	complex pixel;
	// Me muevo por la matriz para pintar cada pixel
	for (int y = 0; y < resolutionY; y++) {
		for (int x = 0; x < resolutionX; x++) {
			/*
			 * Recorro la zona a pintar de arriba hacia abajo, de izquierda a derecha,
			 * por lo que comienzo a pintar en la esquina superior izquierda.
			 * Busco el complejo asociado al pixel
			 */

			pixel.realPart = getPixelRe(center, width, y, resolutionX, resolutionY);
			pixel.imaginaryPart = getPixelIm(center, height, x, resolutionX, resolutionY);

			int brillo = 0; // Brillo del pixel = cantidad de iteraciones
			int finish = FALSE;
			while (brillo < (MAXIMUM_ITERATION - 1) && finish == FALSE) {
				// Dejo de iterar cuando el modulo del punto es mayor a 2
				if ((pixel.realPart * pixel.realPart + pixel.imaginaryPart * pixel.imaginaryPart) > 4) {
					finish = TRUE;
				} else {
					// $f = $f * $f + $s;
					pixel.realPart = pixel.realPart * pixel.realPart - pixel.imaginaryPart * pixel.imaginaryPart + seed.realPart;
					pixel.imaginaryPart = 2 * pixel.realPart * pixel.imaginaryPart + seed.imaginaryPart;

					brillo++;
				}
			}

			// Brillo del pixel
			matrixPixeles[x][y] = brillo;
		}
	}

	printf("TERMINO DE CARGAR LA MATRIZ");

	return loadPixelsInFile(matrixPixeles, pathOutput, resolutionX, resolutionY);
}

int main(int argc, char *argv[]) {
	int resolutionX = 640;
	int resolutionY = 480;
	complex center;
	center.realPart = 0;
	center.imaginaryPart = 0;
	int width = 2;
	int height = 2;
	complex seed;
	seed.realPart = -0.726895347709114071439;
	seed.imaginaryPart = 0.188887129043845954792;

	char * pathOutput = malloc(7);
	pathOutput = "uno.pgm";

	int rdo = drawJuliaSet(resolutionX, resolutionY, center, width, height, seed, pathOutput);

	printf("\n termino");

	return rdo;

	/*
	 * Si la cantidad de parámetros ingresados es incorrecta salimos.
	 */
	if (argc > MAX_ARGS || argc < MIN_ARGS) {
		fprintf(stderr, "[Error] Cantidad de parámetros incorrecta: %d \n", argc);
		return INCORRECT_QUANTITY_PARAMS;
	}

	return execute(argc, argv);
}

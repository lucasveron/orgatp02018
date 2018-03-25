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

#include <getopt.h>

#define VERSION "1.0"

#define TRUE 0
#define FALSE 1

#define MAX_PARAM 6

enum ParameterState {
	 OKEY = 0, INCORRECT_QUANTITY_PARAMS = 1, INCORRECT_MENU = 2, ERROR_FILE = 3, ERROR_MEMORY = 4
};

typedef struct params {
	int incorrectOpt;
	int showversion;
	int showhelp;
	char * res;
	char * center;
	char * w;
	char * h;
	char * seed;
	char * out;
} params;

/*
 * Muestra la version de la aplicación.
 */
int executeVersion(params *p) {
	if(p->showversion){
		fprintf(stdout, "Version: \"%s\" \n", VERSION);
	}
	return OKEY;
}

/*
 * Menú de ayuda
 */
int executeHelp(params *p) {
	if(p->showhelp){
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
	fprintf(stderr, "setDefaultParams...");
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
	int result = OKEY;
	int longIndex = 0;
	char opt = 0;

	/* Una cadena que lista las opciones cortas validas */
		const char* const smallOptions = "Vhi:o:I:O:";

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
			p->center = optarg;
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
			//incorrectOption = TRUE;
		}
	}

	/*
	 * Seteamos los parámetros faltantes si corresponden.
	 */
	setDefaultParams(&p);
}

void executeFractal(params *p){
	fprintf(stderr, "Ejecutando fractal...");
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
	 * Obtenemos los parámetros ingresados
	 */
	retrieveParams(argc,argv,&p);

	/*
	 * Chequeo de errores en la obtención de parámetros.
	 */
	if (p.incorrectOpt) {
			fprintf(stderr, "[Error] Incorrecta option de menu.\n");
			return INCORRECT_MENU;
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
}

int main(int argc, char *argv[]) {
	/*
	 * Si la cantidad de parámetros ingresados es incorrecta salimos.
	 */
	if (argc > MAX_PARAM) {
		fprintf(stderr, "[Error] Cantidad máxima de parámetros incorrecta: %d \n", argc);
		return INCORRECT_QUANTITY_PARAMS;
	}

	return execute(argc, argv);
}

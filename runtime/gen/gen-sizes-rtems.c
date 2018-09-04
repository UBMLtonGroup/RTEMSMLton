/* Copyright (C) 2016-2017 Matthew Fluet.
 * Copyright (C) 2007 Henry Cejtin, Matthew Fluet, Suresh
 *    Jagannathan, and Stephen Weeks.
 *
 * MLton is released under a HPND-style license.
 * See the file MLton-LICENSE for details.
 */

#define MLTON_GC_INTERNAL_TYPES
#include "platform.h"
#include <rtems.h>
struct GC_state gcState;

int main (__attribute__ ((unused)) int argc,
          __attribute__ ((unused)) char* argv[]) {
  FILE *sizesFd;

  sizesFd = stdout;

  fprintf (sizesFd, "sequenceMetaData = %"PRIuMAX"\n", (uintmax_t)GC_SEQUENCE_METADATA_SIZE);
  fprintf (sizesFd, "cint = %"PRIuMAX"\n",     (uintmax_t)sizeof(C_Int_t));
  fprintf (sizesFd, "cpointer = %"PRIuMAX"\n", (uintmax_t)sizeof(C_Pointer_t));
  fprintf (sizesFd, "cptrdiff = %"PRIuMAX"\n", (uintmax_t)sizeof(C_Ptrdiff_t));
  fprintf (sizesFd, "csize = %"PRIuMAX"\n",    (uintmax_t)sizeof(C_Size_t));
  fprintf (sizesFd, "header = %"PRIuMAX"\n",   (uintmax_t)sizeof(GC_header));
  fprintf (sizesFd, "mplimb = %"PRIuMAX"\n",   (uintmax_t)sizeof(C_MPLimb_t));
  fprintf (sizesFd, "normalMetaData = %"PRIuMAX"\n", (uintmax_t)GC_NORMAL_METADATA_SIZE);
  fprintf (sizesFd, "objptr = %"PRIuMAX"\n",   (uintmax_t)sizeof(objptr));
  fprintf (sizesFd, "seqIndex = %"PRIuMAX"\n", (uintmax_t)sizeof(GC_sequenceLength));

  fclose_safe(sizesFd);

  return 0;
}


static void Init( rtems_task_argument arg )
{
  const char *boot_cmdline = *((const char **) arg);
  char       *cmdline = NULL;
  int         argc = 0;
  char      **argv = NULL;
  int         result;

  if ( boot_cmdline != NULL ) {
    size_t n = strlen( boot_cmdline ) + 1;

    cmdline = malloc( n );
    if ( cmdline != NULL ) {
      char* command;

      memcpy( cmdline, boot_cmdline, n);

      command = cmdline;

      /*
       * Break the line up into arguments with "" being ignored.
       */
      while ( true ) {
        command = strtok( command, " \t\r\n" );
        if ( command == NULL )
          break;

        ++argc;
        command = '\0';
      }

      /*
       * If there are arguments, allocate enough memory for the argv
       * array to be passed into main().
       *
       * NOTE: If argc is 0, then argv will be NULL.
       */
      argv = calloc( argc, sizeof( *argv ) );
      if ( argv != NULL ) {
        int a;

        command = cmdline;
        argv[ 0 ] = command;

        for ( a = 1; a < argc; ++a ) {
          command += strlen( command ) + 1;
          argv[ a ] = command;
        }
      } else {
        argc = 0;
      }
    }
  }

  result = main( argc, argv );

  free( argv );
  free( cmdline );

  exit( result );
}


/* configuration information */

#include <bsp.h>

/* NOTICE: the clock driver is explicitly disabled */
#define CONFIGURE_APPLICATION_DOES_NOT_NEED_CLOCK_DRIVER
#define CONFIGURE_APPLICATION_NEEDS_CONSOLE_DRIVER
#define CONFIGURE_USE_DEVFS_AS_BASE_FILESYSTEM

#define CONFIGURE_RTEMS_INIT_TASKS_TABLE
#define CONFIGURE_MAXIMUM_TASKS 1

#define CONFIGURE_INIT
#include <rtems/confdefs.h>
/* end of file */

#ifdef __cplusplus
extern "C" {
#endif

#define PERL_NO_GET_CONTEXT /* we want efficiency */
#include <EXTERN.h>
#include <perl.h>
#include <XSUB.h>

#include <openssl/opensslv.h>
#include <openssl/crypto.h>
#include <string.h>

#ifdef __cplusplus
} /* extern "C" */
#endif

#define NEED_newSVpvn_flags
#include "ppport.h"

MODULE = Sample  PACKAGE = Sample

PROTOTYPES: DISABLE

void
openssl_version(...)
PPCODE:
{
  const char* version = OpenSSL_version(OPENSSL_VERSION);
  SV* sv = sv_2mortal(newSVpvn(version, strlen(version)));
  XPUSHs(sv);
  XSRETURN(1);
}

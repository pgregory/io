/*
docCopyright("Steve Dekorte", 2002)
docLicense("BSD revised")
*/

#ifndef IOSEQ_DNS_DEFINED
#define IOSEQ_DNS_DEFINED 1

#include "IoSeq.h"

IoObject *IoDNS_proto(void *state);

IoObject *IoObject_dnsQueryPacketForHostName(IoObject *self, IoObject *locals, IoMessage *m);
IoObject *IoObject_hostNameAndIPforDNSResponsePacket(IoObject *self, IoObject *locals, IoMessage *m);
IoObject *IoObject_localNameServersIPs(IoObject *self, IoObject *locals, IoMessage *m);

#endif

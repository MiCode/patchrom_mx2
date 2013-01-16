.class Lmeizu_jcifs/smb/SmbTransport$ServerData;
.super Ljava/lang/Object;
.source "SmbTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/smb/SmbTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerData"
.end annotation


# instance fields
.field capabilities:I

.field encryptedPasswords:Z

.field encryptionKey:[B

.field encryptionKeyLength:I

.field flags:B

.field flags2:I

.field guid:[B

.field maxBufferSize:I

.field maxMpxCount:I

.field maxNumberVcs:I

.field maxRawSize:I

.field oemDomainName:Ljava/lang/String;

.field security:I

.field securityMode:I

.field serverTime:J

.field serverTimeZone:I

.field sessionKey:I

.field signaturesEnabled:Z

.field signaturesRequired:Z

.field final synthetic this$0:Lmeizu_jcifs/smb/SmbTransport;


# direct methods
.method constructor <init>(Lmeizu_jcifs/smb/SmbTransport;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lmeizu_jcifs/smb/SmbTransport$ServerData;->this$0:Lmeizu_jcifs/smb/SmbTransport;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

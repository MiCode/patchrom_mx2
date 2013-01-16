.class public Lmeizu_jcifs/UniAddress;
.super Ljava/lang/Object;
.source "UniAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu_jcifs/UniAddress$QueryThread;,
        Lmeizu_jcifs/UniAddress$Sem;
    }
.end annotation


# static fields
.field private static final RESOLVER_BCAST:I = 0x1

.field private static final RESOLVER_DNS:I = 0x2

.field private static final RESOLVER_LMHOSTS:I = 0x3

.field private static final RESOLVER_WINS:I

.field private static baddr:Ljava/net/InetAddress;

.field private static log:Lmeizu_jcifs/util/LogStream;

.field private static resolveOrder:[I


# instance fields
.field addr:Ljava/lang/Object;

.field calledName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v9, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 58
    invoke-static {}, Lmeizu_jcifs/util/LogStream;->getInstance()Lmeizu_jcifs/util/LogStream;

    move-result-object v7

    sput-object v7, Lmeizu_jcifs/UniAddress;->log:Lmeizu_jcifs/util/LogStream;

    .line 61
    const-string v7, "meizu_jcifs.resolveOrder"

    invoke-static {v7}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, ro:Ljava/lang/String;
    invoke-static {}, Lmeizu_jcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 65
    .local v2, nbns:Ljava/net/InetAddress;
    :try_start_0
    const-string v7, "meizu_jcifs.netbios.baddr"

    const-string v8, "255.255.255.255"

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-static {v7, v8}, Lmeizu_jcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v7

    sput-object v7, Lmeizu_jcifs/UniAddress;->baddr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 78
    :cond_0
    if-nez v2, :cond_1

    .line 79
    new-array v7, v13, [I

    sput-object v7, Lmeizu_jcifs/UniAddress;->resolveOrder:[I

    .line 80
    sget-object v7, Lmeizu_jcifs/UniAddress;->resolveOrder:[I

    aput v13, v7, v11

    .line 81
    sget-object v7, Lmeizu_jcifs/UniAddress;->resolveOrder:[I

    aput v12, v7, v10

    .line 82
    sget-object v7, Lmeizu_jcifs/UniAddress;->resolveOrder:[I

    aput v10, v7, v12

    .line 118
    :goto_1
    return-void

    .line 84
    :cond_1
    new-array v7, v9, [I

    sput-object v7, Lmeizu_jcifs/UniAddress;->resolveOrder:[I

    .line 85
    sget-object v7, Lmeizu_jcifs/UniAddress;->resolveOrder:[I

    aput v13, v7, v11

    .line 86
    sget-object v7, Lmeizu_jcifs/UniAddress;->resolveOrder:[I

    aput v11, v7, v10

    .line 87
    sget-object v7, Lmeizu_jcifs/UniAddress;->resolveOrder:[I

    aput v12, v7, v12

    .line 88
    sget-object v7, Lmeizu_jcifs/UniAddress;->resolveOrder:[I

    aput v10, v7, v13

    goto :goto_1

    .line 91
    :cond_2
    new-array v6, v9, [I

    .line 92
    .local v6, tmp:[I
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v5, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v5, st:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 94
    .local v0, i:I
    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 95
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, s:Ljava/lang/String;
    const-string v7, "LMHOSTS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 97
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aput v13, v6, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_2

    .line 98
    :cond_4
    const-string v7, "WINS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 99
    if-nez v2, :cond_5

    .line 100
    sget-object v7, Lmeizu_jcifs/UniAddress;->log:Lmeizu_jcifs/util/LogStream;

    sget v7, Lmeizu_jcifs/util/LogStream;->level:I

    if-le v7, v10, :cond_3

    .line 101
    sget-object v7, Lmeizu_jcifs/UniAddress;->log:Lmeizu_jcifs/util/LogStream;

    const-string v8, "UniAddress resolveOrder specifies WINS however the meizu_jcifs.netbios.wins property has not been set"

    invoke-virtual {v7, v8}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 106
    :cond_5
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aput v11, v6, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_2

    .line 107
    :cond_6
    const-string v7, "BCAST"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 108
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aput v10, v6, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_2

    .line 109
    :cond_7
    const-string v7, "DNS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 110
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aput v12, v6, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_2

    .line 111
    :cond_8
    sget-object v7, Lmeizu_jcifs/UniAddress;->log:Lmeizu_jcifs/util/LogStream;

    sget v7, Lmeizu_jcifs/util/LogStream;->level:I

    if-le v7, v10, :cond_3

    .line 112
    sget-object v7, Lmeizu_jcifs/UniAddress;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown resolver method: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 115
    .end local v4           #s:Ljava/lang/String;
    :cond_9
    new-array v7, v0, [I

    sput-object v7, Lmeizu_jcifs/UniAddress;->resolveOrder:[I

    .line 116
    sget-object v7, Lmeizu_jcifs/UniAddress;->resolveOrder:[I

    invoke-static {v6, v11, v7, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 67
    .end local v0           #i:I
    .end local v5           #st:Ljava/util/StringTokenizer;
    .end local v6           #tmp:[I
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "addr"

    .prologue
    .line 362
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 363
    if-nez p1, :cond_0

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 366
    :cond_0
    iput-object p1, p0, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    .line 367
    return-void
.end method

.method public static getAllByName(Ljava/lang/String;Z)[Lmeizu_jcifs/UniAddress;
    .locals 9
    .parameter "hostname"
    .parameter "possibleNTDomainOrWorkgroup"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xf

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 254
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 255
    :cond_0
    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5}, Ljava/net/UnknownHostException;-><init>()V

    throw v5

    .line 258
    :cond_1
    invoke-static {p0}, Lmeizu_jcifs/UniAddress;->isDotQuadIP(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 259
    new-array v1, v6, [Lmeizu_jcifs/UniAddress;

    .line 260
    .local v1, addrs:[Lmeizu_jcifs/UniAddress;
    new-instance v5, Lmeizu_jcifs/UniAddress;

    invoke-static {p0}, Lmeizu_jcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v6

    invoke-direct {v5, v6}, Lmeizu_jcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    aput-object v5, v1, v7

    .line 310
    :cond_2
    :goto_0
    return-object v1

    .line 264
    .end local v1           #addrs:[Lmeizu_jcifs/UniAddress;
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v5, Lmeizu_jcifs/UniAddress;->resolveOrder:[I

    array-length v5, v5

    if-ge v2, v5, :cond_8

    .line 266
    :try_start_0
    sget-object v5, Lmeizu_jcifs/UniAddress;->resolveOrder:[I

    aget v5, v5, v2

    packed-switch v5, :pswitch_data_0

    .line 306
    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 311
    :catch_0
    move-exception v5

    .line 264
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 268
    :pswitch_0
    invoke-static {p0}, Lmeizu_jcifs/netbios/Lmhosts;->getByName(Ljava/lang/String;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    .local v0, addr:Lmeizu_jcifs/netbios/NbtAddress;
    if-eqz v0, :cond_4

    .line 308
    :goto_2
    const/4 v5, 0x1

    new-array v1, v5, [Lmeizu_jcifs/UniAddress;

    .line 309
    .restart local v1       #addrs:[Lmeizu_jcifs/UniAddress;
    const/4 v5, 0x0

    new-instance v6, Lmeizu_jcifs/UniAddress;

    invoke-direct {v6, v0}, Lmeizu_jcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    aput-object v6, v1, v5

    goto :goto_0

    .line 273
    .end local v0           #addr:Lmeizu_jcifs/netbios/NbtAddress;
    .end local v1           #addrs:[Lmeizu_jcifs/UniAddress;
    :pswitch_1
    const-string v5, "\u0001\u0002__MSBROWSE__\u0002"

    if-eq p0, v5, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v8, :cond_4

    .line 278
    if-eqz p1, :cond_5

    .line 279
    invoke-static {}, Lmeizu_jcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {p0, v5}, Lmeizu_jcifs/UniAddress;->lookupServerOrWorkgroup(Ljava/lang/String;Ljava/net/InetAddress;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    .restart local v0       #addr:Lmeizu_jcifs/netbios/NbtAddress;
    goto :goto_2

    .line 281
    .end local v0           #addr:Lmeizu_jcifs/netbios/NbtAddress;
    :cond_5
    const/16 v5, 0x20

    const/4 v6, 0x0

    invoke-static {}, Lmeizu_jcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-static {p0, v5, v6, v7}, Lmeizu_jcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    .line 283
    .restart local v0       #addr:Lmeizu_jcifs/netbios/NbtAddress;
    goto :goto_2

    .line 285
    .end local v0           #addr:Lmeizu_jcifs/netbios/NbtAddress;
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v8, :cond_4

    .line 289
    if-eqz p1, :cond_6

    .line 290
    sget-object v5, Lmeizu_jcifs/UniAddress;->baddr:Ljava/net/InetAddress;

    invoke-static {p0, v5}, Lmeizu_jcifs/UniAddress;->lookupServerOrWorkgroup(Ljava/lang/String;Ljava/net/InetAddress;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    .restart local v0       #addr:Lmeizu_jcifs/netbios/NbtAddress;
    goto :goto_2

    .line 292
    .end local v0           #addr:Lmeizu_jcifs/netbios/NbtAddress;
    :cond_6
    const/16 v5, 0x20

    const/4 v6, 0x0

    sget-object v7, Lmeizu_jcifs/UniAddress;->baddr:Ljava/net/InetAddress;

    invoke-static {p0, v5, v6, v7}, Lmeizu_jcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    .line 294
    .restart local v0       #addr:Lmeizu_jcifs/netbios/NbtAddress;
    goto :goto_2

    .line 296
    .end local v0           #addr:Lmeizu_jcifs/netbios/NbtAddress;
    :pswitch_3
    invoke-static {p0}, Lmeizu_jcifs/UniAddress;->isAllDigits(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 297
    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 299
    :cond_7
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 300
    .local v3, iaddrs:[Ljava/net/InetAddress;
    array-length v5, v3

    new-array v1, v5, [Lmeizu_jcifs/UniAddress;

    .line 301
    .restart local v1       #addrs:[Lmeizu_jcifs/UniAddress;
    const/4 v4, 0x0

    .local v4, ii:I
    :goto_3
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 302
    new-instance v5, Lmeizu_jcifs/UniAddress;

    aget-object v6, v3, v4

    invoke-direct {v5, v6}, Lmeizu_jcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    aput-object v5, v1, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 315
    .end local v1           #addrs:[Lmeizu_jcifs/UniAddress;
    .end local v3           #iaddrs:[Ljava/net/InetAddress;
    .end local v4           #ii:I
    :cond_8
    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static getByName(Ljava/lang/String;)Lmeizu_jcifs/UniAddress;
    .locals 1
    .parameter "hostname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmeizu_jcifs/UniAddress;->getByName(Ljava/lang/String;Z)Lmeizu_jcifs/UniAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;Z)Lmeizu_jcifs/UniAddress;
    .locals 2
    .parameter "hostname"
    .parameter "possibleNTDomainOrWorkgroup"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {p0, p1}, Lmeizu_jcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Lmeizu_jcifs/UniAddress;

    move-result-object v0

    .line 246
    .local v0, addrs:[Lmeizu_jcifs/UniAddress;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method static isAllDigits(Ljava/lang/String;)Z
    .locals 2
    .parameter "hostname"

    .prologue
    .line 228
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 229
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    const/4 v1, 0x0

    .line 233
    :goto_1
    return v1

    .line 228
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static isDotQuadIP(Ljava/lang/String;)Z
    .locals 8
    .parameter "hostname"

    .prologue
    const/4 v5, 0x0

    .line 205
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 209
    const/4 v1, 0x0

    .local v1, dots:I
    move v2, v1

    .line 210
    .local v2, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 211
    .local v4, len:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, data:[C
    move v3, v2

    .line 212
    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-char v6, v0, v3

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 213
    if-ne v2, v4, :cond_1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_1

    .line 215
    const/4 v5, 0x1

    .line 224
    .end local v0           #data:[C
    .end local v1           #dots:I
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_0
    return v5

    .line 217
    .restart local v0       #data:[C
    .restart local v1       #dots:I
    .restart local v2       #i:I
    .restart local v4       #len:I
    :cond_1
    if-ge v2, v4, :cond_2

    aget-char v6, v0, v2

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_2

    .line 218
    add-int/lit8 v1, v1, 0x1

    .line 219
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .end local v3           #i:I
    .restart local v2       #i:I
    :cond_2
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0
.end method

.method static lookupServerOrWorkgroup(Ljava/lang/String;Ljava/net/InetAddress;)Lmeizu_jcifs/netbios/NbtAddress;
    .locals 13
    .parameter "name"
    .parameter "svr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    .line 163
    new-instance v1, Lmeizu_jcifs/UniAddress$Sem;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lmeizu_jcifs/UniAddress$Sem;-><init>(I)V

    .line 164
    .local v1, sem:Lmeizu_jcifs/UniAddress$Sem;
    invoke-static {p1}, Lmeizu_jcifs/netbios/NbtAddress;->isWINS(Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x1b

    .line 166
    .local v3, type:I
    :goto_0
    new-instance v0, Lmeizu_jcifs/UniAddress$QueryThread;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lmeizu_jcifs/UniAddress$QueryThread;-><init>(Lmeizu_jcifs/UniAddress$Sem;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V

    .line 167
    .local v0, q1x:Lmeizu_jcifs/UniAddress$QueryThread;
    new-instance v5, Lmeizu_jcifs/UniAddress$QueryThread;

    const/16 v8, 0x20

    move-object v6, v1

    move-object v7, p0

    move-object v9, v4

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lmeizu_jcifs/UniAddress$QueryThread;-><init>(Lmeizu_jcifs/UniAddress$Sem;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V

    .line 168
    .local v5, q20:Lmeizu_jcifs/UniAddress$QueryThread;
    invoke-virtual {v0, v12}, Lmeizu_jcifs/UniAddress$QueryThread;->setDaemon(Z)V

    .line 169
    invoke-virtual {v5, v12}, Lmeizu_jcifs/UniAddress$QueryThread;->setDaemon(Z)V

    .line 171
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :try_start_1
    invoke-virtual {v0}, Lmeizu_jcifs/UniAddress$QueryThread;->start()V

    .line 173
    invoke-virtual {v5}, Lmeizu_jcifs/UniAddress$QueryThread;->start()V

    .line 175
    :goto_1
    iget v2, v1, Lmeizu_jcifs/UniAddress$Sem;->count:I

    if-lez v2, :cond_1

    iget-object v2, v0, Lmeizu_jcifs/UniAddress$QueryThread;->ans:Lmeizu_jcifs/netbios/NbtAddress;

    if-nez v2, :cond_1

    iget-object v2, v5, Lmeizu_jcifs/UniAddress$QueryThread;->ans:Lmeizu_jcifs/netbios/NbtAddress;

    if-nez v2, :cond_1

    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 178
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 179
    :catch_0
    move-exception v11

    .line 180
    .local v11, ie:Ljava/lang/InterruptedException;
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    .end local v0           #q1x:Lmeizu_jcifs/UniAddress$QueryThread;
    .end local v3           #type:I
    .end local v5           #q20:Lmeizu_jcifs/UniAddress$QueryThread;
    .end local v11           #ie:Ljava/lang/InterruptedException;
    :cond_0
    const/16 v3, 0x1d

    goto :goto_0

    .line 178
    .restart local v0       #q1x:Lmeizu_jcifs/UniAddress$QueryThread;
    .restart local v3       #type:I
    .restart local v5       #q20:Lmeizu_jcifs/UniAddress$QueryThread;
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    iget-object v2, v0, Lmeizu_jcifs/UniAddress$QueryThread;->ans:Lmeizu_jcifs/netbios/NbtAddress;

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, v0, Lmeizu_jcifs/UniAddress$QueryThread;->ans:Lmeizu_jcifs/netbios/NbtAddress;

    .line 185
    :goto_2
    return-object v2

    .line 184
    :cond_2
    iget-object v2, v5, Lmeizu_jcifs/UniAddress$QueryThread;->ans:Lmeizu_jcifs/netbios/NbtAddress;

    if-eqz v2, :cond_3

    .line 185
    iget-object v2, v5, Lmeizu_jcifs/UniAddress$QueryThread;->ans:Lmeizu_jcifs/netbios/NbtAddress;

    goto :goto_2

    .line 187
    :cond_3
    iget-object v2, v0, Lmeizu_jcifs/UniAddress$QueryThread;->uhe:Ljava/net/UnknownHostException;

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 382
    instance-of v0, p1, Lmeizu_jcifs/UniAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast p1, Lmeizu_jcifs/UniAddress;

    .end local p1
    iget-object v1, p1, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public firstCalledName()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 396
    iget-object v1, p0, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    instance-of v1, v1, Lmeizu_jcifs/netbios/NbtAddress;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast v1, Lmeizu_jcifs/netbios/NbtAddress;

    invoke-virtual {v1}, Lmeizu_jcifs/netbios/NbtAddress;->firstCalledName()Ljava/lang/String;

    move-result-object v1

    .line 414
    :goto_0
    return-object v1

    .line 399
    :cond_0
    iget-object v1, p0, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmeizu_jcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 400
    iget-object v1, p0, Lmeizu_jcifs/UniAddress;->calledName:Ljava/lang/String;

    invoke-static {v1}, Lmeizu_jcifs/UniAddress;->isDotQuadIP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    const-string v1, "*SMBSERVER     "

    iput-object v1, p0, Lmeizu_jcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 414
    :goto_1
    iget-object v1, p0, Lmeizu_jcifs/UniAddress;->calledName:Ljava/lang/String;

    goto :goto_0

    .line 403
    :cond_1
    iget-object v1, p0, Lmeizu_jcifs/UniAddress;->calledName:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 404
    .local v0, i:I
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    if-ge v0, v3, :cond_2

    .line 405
    iget-object v1, p0, Lmeizu_jcifs/UniAddress;->calledName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmeizu_jcifs/UniAddress;->calledName:Ljava/lang/String;

    goto :goto_1

    .line 406
    :cond_2
    iget-object v1, p0, Lmeizu_jcifs/UniAddress;->calledName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 407
    const-string v1, "*SMBSERVER     "

    iput-object v1, p0, Lmeizu_jcifs/UniAddress;->calledName:Ljava/lang/String;

    goto :goto_1

    .line 409
    :cond_3
    iget-object v1, p0, Lmeizu_jcifs/UniAddress;->calledName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmeizu_jcifs/UniAddress;->calledName:Ljava/lang/String;

    goto :goto_1
.end method

.method public getAddress()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    instance-of v0, v0, Lmeizu_jcifs/netbios/NbtAddress;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast v0, Lmeizu_jcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Lmeizu_jcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 459
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    instance-of v0, v0, Lmeizu_jcifs/netbios/NbtAddress;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast v0, Lmeizu_jcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Lmeizu_jcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 448
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public nextCalledName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    instance-of v0, v0, Lmeizu_jcifs/netbios/NbtAddress;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast v0, Lmeizu_jcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Lmeizu_jcifs/netbios/NbtAddress;->nextCalledName()Ljava/lang/String;

    move-result-object v0

    .line 429
    :goto_0
    return-object v0

    .line 425
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/UniAddress;->calledName:Ljava/lang/String;

    const-string v1, "*SMBSERVER     "

    if-eq v0, v1, :cond_1

    .line 426
    const-string v0, "*SMBSERVER     "

    iput-object v0, p0, Lmeizu_jcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lmeizu_jcifs/UniAddress;->calledName:Ljava/lang/String;

    goto :goto_0

    .line 429
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lmeizu_jcifs/UniAddress;->addr:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

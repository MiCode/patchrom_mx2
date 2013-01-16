.class public final Lmeizu_jcifs/netbios/NbtAddress;
.super Ljava/lang/Object;
.source "NbtAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;
    }
.end annotation


# static fields
.field private static final ADDRESS_CACHE:Ljava/util/HashMap; = null

.field static final ANY_HOSTS_NAME:Ljava/lang/String; = "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"

.field public static final B_NODE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CACHE_POLICY:I = 0x0

.field private static final CLIENT:Lmeizu_jcifs/netbios/NameServiceClient; = null

.field private static final DEFAULT_CACHE_POLICY:I = 0x1e

.field private static final FOREVER:I = -0x1

.field public static final H_NODE:I = 0x3

.field private static final LOOKUP_TABLE:Ljava/util/HashMap; = null

.field public static final MASTER_BROWSER_NAME:Ljava/lang/String; = "\u0001\u0002__MSBROWSE__\u0002"

.field public static final M_NODE:I = 0x2

.field static final NBNS:[Ljava/net/InetAddress; = null

.field public static final P_NODE:I = 0x1

.field public static final SMBSERVER_NAME:Ljava/lang/String; = "*SMBSERVER     "

.field static final UNKNOWN_ADDRESS:Lmeizu_jcifs/netbios/NbtAddress;

.field static final UNKNOWN_MAC_ADDRESS:[B

.field static final UNKNOWN_NAME:Lmeizu_jcifs/netbios/Name;

.field static localhost:Lmeizu_jcifs/netbios/NbtAddress;

.field private static nbnsIndex:I


# instance fields
.field address:I

.field calledName:Ljava/lang/String;

.field groupName:Z

.field hostName:Lmeizu_jcifs/netbios/Name;

.field isActive:Z

.field isBeingDeleted:Z

.field isDataFromNodeStatus:Z

.field isInConflict:Z

.field isPermanent:Z

.field macAddress:[B

.field nodeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const-wide/16 v14, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 133
    const-string v0, "meizu_jcifs.netbios.wins"

    const-string v2, ","

    new-array v4, v3, [Ljava/net/InetAddress;

    invoke-static {v0, v2, v4}, Lmeizu_jcifs/Config;->getInetAddressArray(Ljava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lmeizu_jcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    .line 140
    new-instance v0, Lmeizu_jcifs/netbios/NameServiceClient;

    invoke-direct {v0}, Lmeizu_jcifs/netbios/NameServiceClient;-><init>()V

    sput-object v0, Lmeizu_jcifs/netbios/NbtAddress;->CLIENT:Lmeizu_jcifs/netbios/NameServiceClient;

    .line 143
    const-string v0, "meizu_jcifs.netbios.cachePolicy"

    const/16 v2, 0x1e

    invoke-static {v0, v2}, Lmeizu_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmeizu_jcifs/netbios/NbtAddress;->CACHE_POLICY:I

    .line 145
    sput v3, Lmeizu_jcifs/netbios/NbtAddress;->nbnsIndex:I

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmeizu_jcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmeizu_jcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    .line 150
    new-instance v0, Lmeizu_jcifs/netbios/Name;

    const-string v2, "0.0.0.0"

    invoke-direct {v0, v2, v3, v8}, Lmeizu_jcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmeizu_jcifs/netbios/NbtAddress;->UNKNOWN_NAME:Lmeizu_jcifs/netbios/Name;

    .line 151
    new-instance v0, Lmeizu_jcifs/netbios/NbtAddress;

    sget-object v2, Lmeizu_jcifs/netbios/NbtAddress;->UNKNOWN_NAME:Lmeizu_jcifs/netbios/Name;

    invoke-direct {v0, v2, v3, v3, v3}, Lmeizu_jcifs/netbios/NbtAddress;-><init>(Lmeizu_jcifs/netbios/Name;IZI)V

    sput-object v0, Lmeizu_jcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Lmeizu_jcifs/netbios/NbtAddress;

    .line 152
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmeizu_jcifs/netbios/NbtAddress;->UNKNOWN_MAC_ADDRESS:[B

    .line 179
    sget-object v0, Lmeizu_jcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    sget-object v2, Lmeizu_jcifs/netbios/NbtAddress;->UNKNOWN_NAME:Lmeizu_jcifs/netbios/Name;

    new-instance v4, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;

    sget-object v5, Lmeizu_jcifs/netbios/NbtAddress;->UNKNOWN_NAME:Lmeizu_jcifs/netbios/Name;

    sget-object v6, Lmeizu_jcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Lmeizu_jcifs/netbios/NbtAddress;

    invoke-direct {v4, v5, v6, v14, v15}, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;-><init>(Lmeizu_jcifs/netbios/Name;Lmeizu_jcifs/netbios/NbtAddress;J)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lmeizu_jcifs/netbios/NbtAddress;->CLIENT:Lmeizu_jcifs/netbios/NameServiceClient;

    iget-object v12, v0, Lmeizu_jcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    .line 185
    .local v12, localInetAddress:Ljava/net/InetAddress;
    if-nez v12, :cond_0

    .line 187
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 206
    :cond_0
    :goto_0
    const-string v0, "meizu_jcifs.netbios.hostname"

    invoke-static {v0, v8}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 207
    .local v11, localHostname:Ljava/lang/String;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 208
    :cond_1
    invoke-virtual {v12}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    .line 209
    .local v10, addr:[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JCIFS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v2, v10, v9

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x3

    aget-byte v2, v10, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x406fe00000000000L

    mul-double/2addr v4, v6

    double-to-int v2, v4

    invoke-static {v2, v9}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 219
    .end local v10           #addr:[B
    :cond_2
    new-instance v1, Lmeizu_jcifs/netbios/Name;

    const-string v0, "meizu_jcifs.netbios.scope"

    invoke-static {v0, v8}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v11, v3, v0}, Lmeizu_jcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    .local v1, localName:Lmeizu_jcifs/netbios/Name;
    new-instance v0, Lmeizu_jcifs/netbios/NbtAddress;

    invoke-virtual {v12}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    const/4 v7, 0x1

    sget-object v9, Lmeizu_jcifs/netbios/NbtAddress;->UNKNOWN_MAC_ADDRESS:[B

    move v4, v3

    move v5, v3

    move v6, v3

    move v8, v3

    invoke-direct/range {v0 .. v9}, Lmeizu_jcifs/netbios/NbtAddress;-><init>(Lmeizu_jcifs/netbios/Name;IZIZZZZ[B)V

    sput-object v0, Lmeizu_jcifs/netbios/NbtAddress;->localhost:Lmeizu_jcifs/netbios/NbtAddress;

    .line 227
    sget-object v0, Lmeizu_jcifs/netbios/NbtAddress;->localhost:Lmeizu_jcifs/netbios/NbtAddress;

    invoke-static {v1, v0, v14, v15}, Lmeizu_jcifs/netbios/NbtAddress;->cacheAddress(Lmeizu_jcifs/netbios/Name;Lmeizu_jcifs/netbios/NbtAddress;J)V

    .line 228
    return-void

    .line 188
    .end local v1           #localName:Lmeizu_jcifs/netbios/Name;
    .end local v11           #localHostname:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 195
    .local v13, uhe:Ljava/net/UnknownHostException;
    :try_start_1
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    goto :goto_0

    .line 152
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Lmeizu_jcifs/netbios/Name;IZI)V
    .locals 0
    .parameter "hostName"
    .parameter "address"
    .parameter "groupName"
    .parameter "nodeType"

    .prologue
    .line 559
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    .line 561
    iput p2, p0, Lmeizu_jcifs/netbios/NbtAddress;->address:I

    .line 562
    iput-boolean p3, p0, Lmeizu_jcifs/netbios/NbtAddress;->groupName:Z

    .line 563
    iput p4, p0, Lmeizu_jcifs/netbios/NbtAddress;->nodeType:I

    .line 564
    return-void
.end method

.method constructor <init>(Lmeizu_jcifs/netbios/Name;IZIZZZZ[B)V
    .locals 1
    .parameter "hostName"
    .parameter "address"
    .parameter "groupName"
    .parameter "nodeType"
    .parameter "isBeingDeleted"
    .parameter "isInConflict"
    .parameter "isActive"
    .parameter "isPermanent"
    .parameter "macAddress"

    .prologue
    .line 574
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 580
    iput-object p1, p0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    .line 581
    iput p2, p0, Lmeizu_jcifs/netbios/NbtAddress;->address:I

    .line 582
    iput-boolean p3, p0, Lmeizu_jcifs/netbios/NbtAddress;->groupName:Z

    .line 583
    iput p4, p0, Lmeizu_jcifs/netbios/NbtAddress;->nodeType:I

    .line 584
    iput-boolean p5, p0, Lmeizu_jcifs/netbios/NbtAddress;->isBeingDeleted:Z

    .line 585
    iput-boolean p6, p0, Lmeizu_jcifs/netbios/NbtAddress;->isInConflict:Z

    .line 586
    iput-boolean p7, p0, Lmeizu_jcifs/netbios/NbtAddress;->isActive:Z

    .line 587
    iput-boolean p8, p0, Lmeizu_jcifs/netbios/NbtAddress;->isPermanent:Z

    .line 588
    iput-object p9, p0, Lmeizu_jcifs/netbios/NbtAddress;->macAddress:[B

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmeizu_jcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    .line 590
    return-void
.end method

.method static cacheAddress(Lmeizu_jcifs/netbios/Name;Lmeizu_jcifs/netbios/NbtAddress;)V
    .locals 6
    .parameter "hostName"
    .parameter "addr"

    .prologue
    .line 231
    sget v2, Lmeizu_jcifs/netbios/NbtAddress;->CACHE_POLICY:I

    if-nez v2, :cond_0

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    const-wide/16 v0, -0x1

    .line 235
    .local v0, expiration:J
    sget v2, Lmeizu_jcifs/netbios/NbtAddress;->CACHE_POLICY:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v4, Lmeizu_jcifs/netbios/NbtAddress;->CACHE_POLICY:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 238
    :cond_1
    invoke-static {p0, p1, v0, v1}, Lmeizu_jcifs/netbios/NbtAddress;->cacheAddress(Lmeizu_jcifs/netbios/Name;Lmeizu_jcifs/netbios/NbtAddress;J)V

    goto :goto_0
.end method

.method static cacheAddress(Lmeizu_jcifs/netbios/Name;Lmeizu_jcifs/netbios/NbtAddress;J)V
    .locals 3
    .parameter "hostName"
    .parameter "addr"
    .parameter "expiration"

    .prologue
    .line 241
    sget v1, Lmeizu_jcifs/netbios/NbtAddress;->CACHE_POLICY:I

    if-nez v1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 244
    :cond_0
    sget-object v2, Lmeizu_jcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    monitor-enter v2

    .line 245
    :try_start_0
    sget-object v1, Lmeizu_jcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;

    .line 246
    .local v0, entry:Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;
    if-nez v0, :cond_1

    .line 247
    new-instance v0, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;

    .end local v0           #entry:Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;
    invoke-direct {v0, p0, p1, p2, p3}, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;-><init>(Lmeizu_jcifs/netbios/Name;Lmeizu_jcifs/netbios/NbtAddress;J)V

    .line 248
    .restart local v0       #entry:Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;
    sget-object v1, Lmeizu_jcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #entry:Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 250
    .restart local v0       #entry:Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;
    :cond_1
    :try_start_1
    iput-object p1, v0, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;->address:Lmeizu_jcifs/netbios/NbtAddress;

    .line 251
    iput-wide p2, v0, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;->expiration:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static cacheAddressArray([Lmeizu_jcifs/netbios/NbtAddress;)V
    .locals 8
    .parameter "addrs"

    .prologue
    .line 256
    sget v4, Lmeizu_jcifs/netbios/NbtAddress;->CACHE_POLICY:I

    if-nez v4, :cond_0

    .line 275
    :goto_0
    return-void

    .line 259
    :cond_0
    const-wide/16 v1, -0x1

    .line 260
    .local v1, expiration:J
    sget v4, Lmeizu_jcifs/netbios/NbtAddress;->CACHE_POLICY:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget v6, Lmeizu_jcifs/netbios/NbtAddress;->CACHE_POLICY:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long v1, v4, v6

    .line 263
    :cond_1
    sget-object v5, Lmeizu_jcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    monitor-enter v5

    .line 264
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    :try_start_0
    array-length v4, p0

    if-ge v3, v4, :cond_3

    .line 265
    sget-object v4, Lmeizu_jcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    aget-object v6, p0, v3

    iget-object v6, v6, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;

    .line 266
    .local v0, entry:Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;
    if-nez v0, :cond_2

    .line 267
    new-instance v0, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;

    .end local v0           #entry:Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;
    aget-object v4, p0, v3

    iget-object v4, v4, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    aget-object v6, p0, v3

    invoke-direct {v0, v4, v6, v1, v2}, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;-><init>(Lmeizu_jcifs/netbios/Name;Lmeizu_jcifs/netbios/NbtAddress;J)V

    .line 268
    .restart local v0       #entry:Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;
    sget-object v4, Lmeizu_jcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    aget-object v6, p0, v3

    iget-object v6, v6, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 270
    :cond_2
    aget-object v4, p0, v3

    iput-object v4, v0, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;->address:Lmeizu_jcifs/netbios/NbtAddress;

    .line 271
    iput-wide v1, v0, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    goto :goto_2

    .line 274
    .end local v0           #entry:Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static checkLookupTable(Lmeizu_jcifs/netbios/Name;)Ljava/lang/Object;
    .locals 3
    .parameter "name"

    .prologue
    .line 325
    sget-object v2, Lmeizu_jcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    monitor-enter v2

    .line 326
    :try_start_0
    sget-object v1, Lmeizu_jcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    sget-object v1, Lmeizu_jcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const/4 v0, 0x0

    monitor-exit v2

    .line 344
    :cond_0
    :goto_0
    return-object v0

    .line 330
    :cond_1
    :goto_1
    sget-object v1, Lmeizu_jcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    :try_start_1
    sget-object v1, Lmeizu_jcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 333
    :catch_0
    move-exception v1

    goto :goto_1

    .line 336
    :cond_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 337
    invoke-static {p0}, Lmeizu_jcifs/netbios/NbtAddress;->getCachedAddress(Lmeizu_jcifs/netbios/Name;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    .line 338
    .local v0, obj:Lmeizu_jcifs/netbios/NbtAddress;
    if-nez v0, :cond_0

    .line 339
    sget-object v2, Lmeizu_jcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    monitor-enter v2

    .line 340
    :try_start_3
    sget-object v1, Lmeizu_jcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 336
    .end local v0           #obj:Lmeizu_jcifs/netbios/NbtAddress;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method static doNameQuery(Lmeizu_jcifs/netbios/Name;Ljava/net/InetAddress;)Lmeizu_jcifs/netbios/NbtAddress;
    .locals 4
    .parameter "name"
    .parameter "svr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 294
    iget v2, p0, Lmeizu_jcifs/netbios/Name;->hexCode:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_0

    if-nez p1, :cond_0

    .line 295
    sget-object v2, Lmeizu_jcifs/netbios/NbtAddress;->CLIENT:Lmeizu_jcifs/netbios/NameServiceClient;

    iget-object p1, v2, Lmeizu_jcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    .line 297
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    :goto_0
    iput v2, p0, Lmeizu_jcifs/netbios/Name;->srcHashCode:I

    .line 298
    invoke-static {p0}, Lmeizu_jcifs/netbios/NbtAddress;->getCachedAddress(Lmeizu_jcifs/netbios/Name;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    .line 300
    .local v0, addr:Lmeizu_jcifs/netbios/NbtAddress;
    if-nez v0, :cond_1

    .line 305
    invoke-static {p0}, Lmeizu_jcifs/netbios/NbtAddress;->checkLookupTable(Lmeizu_jcifs/netbios/Name;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #addr:Lmeizu_jcifs/netbios/NbtAddress;
    check-cast v0, Lmeizu_jcifs/netbios/NbtAddress;

    .restart local v0       #addr:Lmeizu_jcifs/netbios/NbtAddress;
    if-nez v0, :cond_1

    .line 307
    :try_start_0
    sget-object v2, Lmeizu_jcifs/netbios/NbtAddress;->CLIENT:Lmeizu_jcifs/netbios/NameServiceClient;

    invoke-virtual {v2, p0, p1}, Lmeizu_jcifs/netbios/NameServiceClient;->getByName(Lmeizu_jcifs/netbios/Name;Ljava/net/InetAddress;)Lmeizu_jcifs/netbios/NbtAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 311
    invoke-static {p0, v0}, Lmeizu_jcifs/netbios/NbtAddress;->cacheAddress(Lmeizu_jcifs/netbios/Name;Lmeizu_jcifs/netbios/NbtAddress;)V

    .line 312
    invoke-static {p0}, Lmeizu_jcifs/netbios/NbtAddress;->updateLookupTable(Lmeizu_jcifs/netbios/Name;)V

    .line 316
    :cond_1
    :goto_1
    sget-object v2, Lmeizu_jcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Lmeizu_jcifs/netbios/NbtAddress;

    if-ne v0, v2, :cond_3

    .line 317
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {p0}, Lmeizu_jcifs/netbios/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    .end local v0           #addr:Lmeizu_jcifs/netbios/NbtAddress;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 308
    .restart local v0       #addr:Lmeizu_jcifs/netbios/NbtAddress;
    :catch_0
    move-exception v1

    .line 309
    .local v1, uhe:Ljava/net/UnknownHostException;
    :try_start_1
    sget-object v0, Lmeizu_jcifs/netbios/NbtAddress;->UNKNOWN_ADDRESS:Lmeizu_jcifs/netbios/NbtAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    invoke-static {p0, v0}, Lmeizu_jcifs/netbios/NbtAddress;->cacheAddress(Lmeizu_jcifs/netbios/Name;Lmeizu_jcifs/netbios/NbtAddress;)V

    .line 312
    invoke-static {p0}, Lmeizu_jcifs/netbios/NbtAddress;->updateLookupTable(Lmeizu_jcifs/netbios/Name;)V

    goto :goto_1

    .line 311
    .end local v1           #uhe:Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v2

    invoke-static {p0, v0}, Lmeizu_jcifs/netbios/NbtAddress;->cacheAddress(Lmeizu_jcifs/netbios/Name;Lmeizu_jcifs/netbios/NbtAddress;)V

    .line 312
    invoke-static {p0}, Lmeizu_jcifs/netbios/NbtAddress;->updateLookupTable(Lmeizu_jcifs/netbios/Name;)V

    throw v2

    .line 319
    :cond_3
    return-object v0
.end method

.method public static getAllByAddress(Ljava/lang/String;)[Lmeizu_jcifs/netbios/NbtAddress;
    .locals 2
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 479
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmeizu_jcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    invoke-static {v0}, Lmeizu_jcifs/netbios/NbtAddress;->getAllByAddress(Lmeizu_jcifs/netbios/NbtAddress;)[Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getAllByAddress(Ljava/lang/String;ILjava/lang/String;)[Lmeizu_jcifs/netbios/NbtAddress;
    .locals 1
    .parameter "host"
    .parameter "type"
    .parameter "scope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-static {p0, p1, p2}, Lmeizu_jcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    invoke-static {v0}, Lmeizu_jcifs/netbios/NbtAddress;->getAllByAddress(Lmeizu_jcifs/netbios/NbtAddress;)[Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getAllByAddress(Lmeizu_jcifs/netbios/NbtAddress;)[Lmeizu_jcifs/netbios/NbtAddress;
    .locals 6
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 519
    :try_start_0
    sget-object v2, Lmeizu_jcifs/netbios/NbtAddress;->CLIENT:Lmeizu_jcifs/netbios/NameServiceClient;

    invoke-virtual {v2, p0}, Lmeizu_jcifs/netbios/NameServiceClient;->getNodeStatus(Lmeizu_jcifs/netbios/NbtAddress;)[Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    .line 520
    .local v0, addrs:[Lmeizu_jcifs/netbios/NbtAddress;
    invoke-static {v0}, Lmeizu_jcifs/netbios/NbtAddress;->cacheAddressArray([Lmeizu_jcifs/netbios/NbtAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    return-object v0

    .line 522
    .end local v0           #addrs:[Lmeizu_jcifs/netbios/NbtAddress;
    :catch_0
    move-exception v1

    .line 523
    .local v1, uhe:Ljava/net/UnknownHostException;
    new-instance v3, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no name with type 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget v4, v4, Lmeizu_jcifs/netbios/Name;->hexCode:I

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget-object v2, v2, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget-object v2, v2, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, " with no scope"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for host "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " with scope "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget-object v5, v5, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getAllByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)[Lmeizu_jcifs/netbios/NbtAddress;
    .locals 2
    .parameter "host"
    .parameter "type"
    .parameter "scope"
    .parameter "svr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 463
    sget-object v0, Lmeizu_jcifs/netbios/NbtAddress;->CLIENT:Lmeizu_jcifs/netbios/NameServiceClient;

    new-instance v1, Lmeizu_jcifs/netbios/Name;

    invoke-direct {v1, p0, p1, p2}, Lmeizu_jcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Lmeizu_jcifs/netbios/NameServiceClient;->getAllByName(Lmeizu_jcifs/netbios/Name;Ljava/net/InetAddress;)[Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Lmeizu_jcifs/netbios/NbtAddress;
    .locals 2
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 379
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmeizu_jcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;ILjava/lang/String;)Lmeizu_jcifs/netbios/NbtAddress;
    .locals 1
    .parameter "host"
    .parameter "type"
    .parameter "scope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmeizu_jcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Lmeizu_jcifs/netbios/NbtAddress;
    .locals 10
    .parameter "host"
    .parameter "type"
    .parameter "scope"
    .parameter "svr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x39

    const/16 v7, 0x30

    const/4 v8, 0x0

    .line 418
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 419
    :cond_0
    invoke-static {}, Lmeizu_jcifs/netbios/NbtAddress;->getLocalHost()Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v6

    .line 454
    :goto_0
    return-object v6

    .line 421
    :cond_1
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 422
    new-instance v6, Lmeizu_jcifs/netbios/Name;

    invoke-direct {v6, p0, p1, p2}, Lmeizu_jcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v6, p3}, Lmeizu_jcifs/netbios/NbtAddress;->doNameQuery(Lmeizu_jcifs/netbios/Name;Ljava/net/InetAddress;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v6

    goto :goto_0

    .line 424
    :cond_2
    const/4 v0, 0x0

    .line 425
    .local v0, IP:I
    const/4 v4, 0x0

    .line 426
    .local v4, hitDots:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 428
    .local v3, data:[C
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_a

    .line 429
    aget-char v2, v3, v5

    .line 430
    .local v2, c:C
    if-lt v2, v7, :cond_3

    if-le v2, v9, :cond_4

    .line 431
    :cond_3
    new-instance v6, Lmeizu_jcifs/netbios/Name;

    invoke-direct {v6, p0, p1, p2}, Lmeizu_jcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v6, p3}, Lmeizu_jcifs/netbios/NbtAddress;->doNameQuery(Lmeizu_jcifs/netbios/Name;Ljava/net/InetAddress;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v6

    goto :goto_0

    .line 433
    :cond_4
    const/4 v1, 0x0

    .line 434
    .local v1, b:I
    :goto_2
    const/16 v6, 0x2e

    if-eq v2, v6, :cond_7

    .line 435
    if-lt v2, v7, :cond_5

    if-le v2, v9, :cond_6

    .line 436
    :cond_5
    new-instance v6, Lmeizu_jcifs/netbios/Name;

    invoke-direct {v6, p0, p1, p2}, Lmeizu_jcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v6, p3}, Lmeizu_jcifs/netbios/NbtAddress;->doNameQuery(Lmeizu_jcifs/netbios/Name;Ljava/net/InetAddress;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v6

    goto :goto_0

    .line 438
    :cond_6
    mul-int/lit8 v6, v1, 0xa

    add-int/2addr v6, v2

    add-int/lit8 v1, v6, -0x30

    .line 440
    add-int/lit8 v5, v5, 0x1

    array-length v6, v3

    if-lt v5, v6, :cond_8

    .line 445
    :cond_7
    const/16 v6, 0xff

    if-le v1, v6, :cond_9

    .line 446
    new-instance v6, Lmeizu_jcifs/netbios/Name;

    invoke-direct {v6, p0, p1, p2}, Lmeizu_jcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v6, p3}, Lmeizu_jcifs/netbios/NbtAddress;->doNameQuery(Lmeizu_jcifs/netbios/Name;Ljava/net/InetAddress;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v6

    goto :goto_0

    .line 443
    :cond_8
    aget-char v2, v3, v5

    goto :goto_2

    .line 448
    :cond_9
    shl-int/lit8 v6, v0, 0x8

    add-int v0, v6, v1

    .line 449
    add-int/lit8 v4, v4, 0x1

    .line 428
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 451
    .end local v1           #b:I
    .end local v2           #c:C
    :cond_a
    const/4 v6, 0x4

    if-ne v4, v6, :cond_b

    const-string v6, "."

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 452
    :cond_b
    new-instance v6, Lmeizu_jcifs/netbios/Name;

    invoke-direct {v6, p0, p1, p2}, Lmeizu_jcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v6, p3}, Lmeizu_jcifs/netbios/NbtAddress;->doNameQuery(Lmeizu_jcifs/netbios/Name;Ljava/net/InetAddress;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v6

    goto :goto_0

    .line 454
    :cond_c
    new-instance v6, Lmeizu_jcifs/netbios/NbtAddress;

    sget-object v7, Lmeizu_jcifs/netbios/NbtAddress;->UNKNOWN_NAME:Lmeizu_jcifs/netbios/Name;

    invoke-direct {v6, v7, v0, v8, v8}, Lmeizu_jcifs/netbios/NbtAddress;-><init>(Lmeizu_jcifs/netbios/Name;IZI)V

    goto/16 :goto_0
.end method

.method static getCachedAddress(Lmeizu_jcifs/netbios/Name;)Lmeizu_jcifs/netbios/NbtAddress;
    .locals 7
    .parameter "hostName"

    .prologue
    const/4 v1, 0x0

    .line 277
    sget v2, Lmeizu_jcifs/netbios/NbtAddress;->CACHE_POLICY:I

    if-nez v2, :cond_0

    .line 286
    :goto_0
    return-object v1

    .line 280
    :cond_0
    sget-object v2, Lmeizu_jcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    monitor-enter v2

    .line 281
    :try_start_0
    sget-object v3, Lmeizu_jcifs/netbios/NbtAddress;->ADDRESS_CACHE:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;

    .line 282
    .local v0, entry:Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;
    if-eqz v0, :cond_1

    iget-wide v3, v0, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    iget-wide v3, v0, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 284
    const/4 v0, 0x0

    .line 286
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;->address:Lmeizu_jcifs/netbios/NbtAddress;

    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 287
    .end local v0           #entry:Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLocalHost()Lmeizu_jcifs/netbios/NbtAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 361
    sget-object v0, Lmeizu_jcifs/netbios/NbtAddress;->localhost:Lmeizu_jcifs/netbios/NbtAddress;

    return-object v0
.end method

.method public static getLocalName()Lmeizu_jcifs/netbios/Name;
    .locals 1

    .prologue
    .line 364
    sget-object v0, Lmeizu_jcifs/netbios/NbtAddress;->localhost:Lmeizu_jcifs/netbios/NbtAddress;

    iget-object v0, v0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    return-object v0
.end method

.method public static getWINSAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 533
    sget-object v0, Lmeizu_jcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmeizu_jcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    sget v1, Lmeizu_jcifs/netbios/NbtAddress;->nbnsIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static isWINS(Ljava/net/InetAddress;)Z
    .locals 3
    .parameter "svr"

    .prologue
    .line 536
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eqz p0, :cond_1

    sget-object v1, Lmeizu_jcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 537
    invoke-virtual {p0}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    sget-object v2, Lmeizu_jcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 538
    const/4 v1, 0x1

    .line 541
    :goto_1
    return v1

    .line 536
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static switchWINS()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 544
    sget v0, Lmeizu_jcifs/netbios/NbtAddress;->nbnsIndex:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lmeizu_jcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget v0, Lmeizu_jcifs/netbios/NbtAddress;->nbnsIndex:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    sput v0, Lmeizu_jcifs/netbios/NbtAddress;->nbnsIndex:I

    .line 545
    sget-object v0, Lmeizu_jcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 544
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 545
    :cond_1
    sget-object v0, Lmeizu_jcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    sget v1, Lmeizu_jcifs/netbios/NbtAddress;->nbnsIndex:I

    aget-object v0, v0, v1

    goto :goto_1
.end method

.method private static updateLookupTable(Lmeizu_jcifs/netbios/Name;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 347
    sget-object v1, Lmeizu_jcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    monitor-enter v1

    .line 348
    :try_start_0
    sget-object v0, Lmeizu_jcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lmeizu_jcifs/netbios/NbtAddress;->LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 350
    monitor-exit v1

    .line 351
    return-void

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method checkData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 690
    iget-object v0, p0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    sget-object v1, Lmeizu_jcifs/netbios/NbtAddress;->UNKNOWN_NAME:Lmeizu_jcifs/netbios/Name;

    if-ne v0, v1, :cond_0

    .line 691
    invoke-static {p0}, Lmeizu_jcifs/netbios/NbtAddress;->getAllByAddress(Lmeizu_jcifs/netbios/NbtAddress;)[Lmeizu_jcifs/netbios/NbtAddress;

    .line 693
    :cond_0
    return-void
.end method

.method checkNodeStatusData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 695
    iget-boolean v0, p0, Lmeizu_jcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    if-nez v0, :cond_0

    .line 696
    invoke-static {p0}, Lmeizu_jcifs/netbios/NbtAddress;->getAllByAddress(Lmeizu_jcifs/netbios/NbtAddress;)[Lmeizu_jcifs/netbios/NbtAddress;

    .line 698
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 868
    if-eqz p1, :cond_0

    instance-of v0, p1, Lmeizu_jcifs/netbios/NbtAddress;

    if-eqz v0, :cond_0

    check-cast p1, Lmeizu_jcifs/netbios/NbtAddress;

    .end local p1
    iget v0, p1, Lmeizu_jcifs/netbios/NbtAddress;->address:I

    iget v1, p0, Lmeizu_jcifs/netbios/NbtAddress;->address:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public firstCalledName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 598
    iget-object v5, p0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget-object v5, v5, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    iput-object v5, p0, Lmeizu_jcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 600
    iget-object v5, p0, Lmeizu_jcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 604
    const/4 v1, 0x0

    .local v1, dots:I
    move v2, v1

    .line 605
    .local v2, i:I
    iget-object v5, p0, Lmeizu_jcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 606
    .local v4, len:I
    iget-object v5, p0, Lmeizu_jcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, data:[C
    move v3, v2

    .line 607
    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_4

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-char v5, v0, v3

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 608
    if-ne v2, v4, :cond_1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    .line 610
    const-string v5, "*SMBSERVER     "

    iput-object v5, p0, Lmeizu_jcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 627
    .end local v0           #data:[C
    .end local v1           #dots:I
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_0
    :goto_1
    iget-object v5, p0, Lmeizu_jcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    return-object v5

    .line 613
    .restart local v0       #data:[C
    .restart local v1       #dots:I
    .restart local v2       #i:I
    .restart local v4       #len:I
    :cond_1
    if-ge v2, v4, :cond_3

    aget-char v5, v0, v2

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_3

    .line 614
    add-int/lit8 v1, v1, 0x1

    .line 615
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 619
    .end local v0           #data:[C
    .end local v1           #dots:I
    .end local v3           #i:I
    .end local v4           #len:I
    :cond_2
    iget-object v5, p0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget v5, v5, Lmeizu_jcifs/netbios/Name;->hexCode:I

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 623
    :pswitch_0
    const-string v5, "*SMBSERVER     "

    iput-object v5, p0, Lmeizu_jcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    goto :goto_1

    .restart local v0       #data:[C
    .restart local v1       #dots:I
    .restart local v2       #i:I
    .restart local v4       #len:I
    :cond_3
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    :cond_4
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAddress()[B
    .locals 3

    .prologue
    .line 812
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 814
    .local v0, addr:[B
    const/4 v1, 0x0

    iget v2, p0, Lmeizu_jcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 815
    const/4 v1, 0x1

    iget v2, p0, Lmeizu_jcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 816
    const/4 v1, 0x2

    iget v2, p0, Lmeizu_jcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 817
    const/4 v1, 0x3

    iget v2, p0, Lmeizu_jcifs/netbios/NbtAddress;->address:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 818
    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lmeizu_jcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmeizu_jcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmeizu_jcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmeizu_jcifs/netbios/NbtAddress;->address:I

    ushr-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    sget-object v1, Lmeizu_jcifs/netbios/NbtAddress;->UNKNOWN_NAME:Lmeizu_jcifs/netbios/Name;

    if-ne v0, v1, :cond_0

    .line 798
    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 800
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget-object v0, v0, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 828
    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 779
    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 780
    iget-object v0, p0, Lmeizu_jcifs/netbios/NbtAddress;->macAddress:[B

    return-object v0
.end method

.method public getNameType()I
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget v0, v0, Lmeizu_jcifs/netbios/Name;->hexCode:I

    return v0
.end method

.method public getNodeType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 722
    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NbtAddress;->checkData()V

    .line 723
    iget v0, p0, Lmeizu_jcifs/netbios/NbtAddress;->nodeType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 858
    iget v0, p0, Lmeizu_jcifs/netbios/NbtAddress;->address:I

    return v0
.end method

.method public isActive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 755
    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 756
    iget-boolean v0, p0, Lmeizu_jcifs/netbios/NbtAddress;->isActive:Z

    return v0
.end method

.method public isBeingDeleted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 733
    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 734
    iget-boolean v0, p0, Lmeizu_jcifs/netbios/NbtAddress;->isBeingDeleted:Z

    return v0
.end method

.method public isGroupAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 708
    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NbtAddress;->checkData()V

    .line 709
    iget-boolean v0, p0, Lmeizu_jcifs/netbios/NbtAddress;->groupName:Z

    return v0
.end method

.method public isInConflict()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 744
    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 745
    iget-boolean v0, p0, Lmeizu_jcifs/netbios/NbtAddress;->isInConflict:Z

    return v0
.end method

.method public isPermanent()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 766
    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NbtAddress;->checkNodeStatusData()V

    .line 767
    iget-boolean v0, p0, Lmeizu_jcifs/netbios/NbtAddress;->isPermanent:Z

    return v0
.end method

.method public nextCalledName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 631
    iget-object v4, p0, Lmeizu_jcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    iget-object v5, p0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget-object v5, v5, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    if-ne v4, v5, :cond_2

    .line 632
    const-string v3, "*SMBSERVER     "

    iput-object v3, p0, Lmeizu_jcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 659
    :cond_0
    :goto_0
    iget-object v3, p0, Lmeizu_jcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    :cond_1
    :goto_1
    return-object v3

    .line 633
    :cond_2
    iget-object v4, p0, Lmeizu_jcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    const-string v5, "*SMBSERVER     "

    if-ne v4, v5, :cond_5

    .line 637
    :try_start_0
    sget-object v4, Lmeizu_jcifs/netbios/NbtAddress;->CLIENT:Lmeizu_jcifs/netbios/NameServiceClient;

    invoke-virtual {v4, p0}, Lmeizu_jcifs/netbios/NameServiceClient;->getNodeStatus(Lmeizu_jcifs/netbios/NbtAddress;)[Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    .line 638
    .local v0, addrs:[Lmeizu_jcifs/netbios/NbtAddress;
    iget-object v4, p0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget v4, v4, Lmeizu_jcifs/netbios/Name;->hexCode:I

    const/16 v5, 0x1d

    if-ne v4, v5, :cond_4

    .line 639
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 640
    aget-object v4, v0, v1

    iget-object v4, v4, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget v4, v4, Lmeizu_jcifs/netbios/Name;->hexCode:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_3

    .line 641
    aget-object v4, v0, v1

    iget-object v4, v4, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget-object v3, v4, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    goto :goto_1

    .line 639
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 645
    .end local v1           #i:I
    :cond_4
    iget-boolean v4, p0, Lmeizu_jcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    if-eqz v4, :cond_0

    .line 649
    const/4 v4, 0x0

    iput-object v4, p0, Lmeizu_jcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    .line 650
    iget-object v4, p0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget-object v3, v4, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 652
    .end local v0           #addrs:[Lmeizu_jcifs/netbios/NbtAddress;
    :catch_0
    move-exception v2

    .line 653
    .local v2, uhe:Ljava/net/UnknownHostException;
    iput-object v3, p0, Lmeizu_jcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    goto :goto_0

    .line 656
    .end local v2           #uhe:Ljava/net/UnknownHostException;
    :cond_5
    iput-object v3, p0, Lmeizu_jcifs/netbios/NbtAddress;->calledName:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    invoke-virtual {v1}, Lmeizu_jcifs/netbios/Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

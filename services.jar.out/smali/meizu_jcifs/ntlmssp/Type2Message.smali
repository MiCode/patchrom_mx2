.class public Lmeizu_jcifs/ntlmssp/Type2Message;
.super Lmeizu_jcifs/ntlmssp/NtlmMessage;
.source "Type2Message.java"


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final DEFAULT_FLAGS:I

.field private static final DEFAULT_TARGET_INFORMATION:[B


# instance fields
.field private challenge:[B

.field private context:[B

.field private target:Ljava/lang/String;

.field private targetInformation:[B


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 50
    const-string v7, "meizu_jcifs.smb.client.useUnicode"

    invoke-static {v7, v8}, Lmeizu_jcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v8

    :goto_0
    or-int/lit16 v7, v7, 0x200

    sput v7, Lmeizu_jcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    .line 53
    const-string v7, "meizu_jcifs.smb.client.domain"

    const/4 v11, 0x0

    invoke-static {v7, v11}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lmeizu_jcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 54
    new-array v0, v10, [B

    .line 55
    .local v0, domain:[B
    sget-object v7, Lmeizu_jcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 57
    :try_start_0
    sget-object v7, Lmeizu_jcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v11, "UTF-16LE"

    invoke-virtual {v7, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 60
    :cond_0
    :goto_1
    array-length v1, v0

    .line 61
    .local v1, domainLength:I
    new-array v4, v10, [B

    .line 63
    .local v4, server:[B
    :try_start_1
    invoke-static {}, Lmeizu_jcifs/netbios/NbtAddress;->getLocalHost()Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v7

    invoke-virtual {v7}, Lmeizu_jcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 64
    .local v2, host:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 66
    :try_start_2
    const-string v7, "UTF-16LE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 70
    .end local v2           #host:Ljava/lang/String;
    :cond_1
    :goto_2
    array-length v5, v4

    .line 71
    .local v5, serverLength:I
    if-lez v1, :cond_5

    add-int/lit8 v7, v1, 0x4

    move v11, v7

    :goto_3
    if-lez v5, :cond_6

    add-int/lit8 v7, v5, 0x4

    :goto_4
    add-int/2addr v7, v11

    add-int/lit8 v7, v7, 0x4

    new-array v6, v7, [B

    .line 73
    .local v6, targetInfo:[B
    const/4 v3, 0x0

    .line 74
    .local v3, offset:I
    if-lez v1, :cond_2

    .line 75
    invoke-static {v6, v3, v9}, Lmeizu_jcifs/ntlmssp/Type2Message;->writeUShort([BII)V

    .line 76
    add-int/lit8 v3, v3, 0x2

    .line 77
    invoke-static {v6, v3, v1}, Lmeizu_jcifs/ntlmssp/Type2Message;->writeUShort([BII)V

    .line 78
    add-int/lit8 v3, v3, 0x2

    .line 79
    invoke-static {v0, v10, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    add-int/lit8 v3, v1, 0x4

    .line 82
    :cond_2
    if-lez v5, :cond_3

    .line 83
    invoke-static {v6, v3, v8}, Lmeizu_jcifs/ntlmssp/Type2Message;->writeUShort([BII)V

    .line 84
    add-int/lit8 v3, v3, 0x2

    .line 85
    invoke-static {v6, v3, v5}, Lmeizu_jcifs/ntlmssp/Type2Message;->writeUShort([BII)V

    .line 86
    add-int/lit8 v3, v3, 0x2

    .line 87
    invoke-static {v4, v10, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    :cond_3
    sput-object v6, Lmeizu_jcifs/ntlmssp/Type2Message;->DEFAULT_TARGET_INFORMATION:[B

    .line 90
    return-void

    .end local v0           #domain:[B
    .end local v1           #domainLength:I
    .end local v3           #offset:I
    .end local v4           #server:[B
    .end local v5           #serverLength:I
    .end local v6           #targetInfo:[B
    :cond_4
    move v7, v9

    .line 50
    goto :goto_0

    .restart local v0       #domain:[B
    .restart local v1       #domainLength:I
    .restart local v4       #server:[B
    .restart local v5       #serverLength:I
    :cond_5
    move v11, v10

    .line 71
    goto :goto_3

    :cond_6
    move v7, v10

    goto :goto_4

    .line 69
    .end local v5           #serverLength:I
    :catch_0
    move-exception v7

    goto :goto_2

    .line 67
    .restart local v2       #host:Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 58
    .end local v1           #domainLength:I
    .end local v2           #host:Ljava/lang/String;
    .end local v4           #server:[B
    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-static {}, Lmeizu_jcifs/ntlmssp/Type2Message;->getDefaultFlags()I

    move-result v0

    invoke-direct {p0, v0, v1, v1}, Lmeizu_jcifs/ntlmssp/Type2Message;-><init>(I[BLjava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(I[BLjava/lang/String;)V
    .locals 1
    .parameter "flags"
    .parameter "challenge"
    .parameter "target"

    .prologue
    .line 130
    invoke-direct {p0}, Lmeizu_jcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 131
    invoke-virtual {p0, p1}, Lmeizu_jcifs/ntlmssp/Type2Message;->setFlags(I)V

    .line 132
    invoke-virtual {p0, p2}, Lmeizu_jcifs/ntlmssp/Type2Message;->setChallenge([B)V

    .line 133
    invoke-virtual {p0, p3}, Lmeizu_jcifs/ntlmssp/Type2Message;->setTarget(Ljava/lang/String;)V

    .line 134
    if-eqz p3, :cond_0

    invoke-static {}, Lmeizu_jcifs/ntlmssp/Type2Message;->getDefaultTargetInformation()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lmeizu_jcifs/ntlmssp/Type2Message;->setTargetInformation([B)V

    .line 135
    :cond_0
    return-void
.end method

.method public constructor <init>(Lmeizu_jcifs/ntlmssp/Type1Message;)V
    .locals 1
    .parameter "type1"

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0, v0}, Lmeizu_jcifs/ntlmssp/Type2Message;-><init>(Lmeizu_jcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lmeizu_jcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V
    .locals 2
    .parameter "type1"
    .parameter "challenge"
    .parameter "target"

    .prologue
    .line 118
    invoke-static {p1}, Lmeizu_jcifs/ntlmssp/Type2Message;->getDefaultFlags(Lmeizu_jcifs/ntlmssp/Type1Message;)I

    move-result v0

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lmeizu_jcifs/ntlmssp/Type1Message;->getFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lmeizu_jcifs/ntlmssp/Type2Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object p3

    .end local p3
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lmeizu_jcifs/ntlmssp/Type2Message;-><init>(I[BLjava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "material"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Lmeizu_jcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 144
    invoke-direct {p0, p1}, Lmeizu_jcifs/ntlmssp/Type2Message;->parse([B)V

    .line 145
    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    sget-object v0, Lmeizu_jcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultFlags()I
    .locals 1

    .prologue
    .line 290
    sget v0, Lmeizu_jcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultFlags(Lmeizu_jcifs/ntlmssp/Type1Message;)I
    .locals 4
    .parameter "type1"

    .prologue
    .line 300
    if-nez p0, :cond_1

    sget v1, Lmeizu_jcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    .line 311
    :cond_0
    :goto_0
    return v1

    .line 301
    :cond_1
    const/16 v1, 0x200

    .line 302
    .local v1, flags:I
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type1Message;->getFlags()I

    move-result v2

    .line 303
    .local v2, type1Flags:I
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    or-int/2addr v1, v3

    .line 305
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_0

    .line 306
    invoke-static {}, Lmeizu_jcifs/ntlmssp/Type2Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, domain:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 308
    const v3, 0x10004

    or-int/2addr v1, v3

    goto :goto_0

    .line 303
    .end local v0           #domain:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    goto :goto_1
.end method

.method public static getDefaultTargetInformation()[B
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lmeizu_jcifs/ntlmssp/Type2Message;->DEFAULT_TARGET_INFORMATION:[B

    return-object v0
.end method

.method private parse([B)V
    .locals 13
    .parameter "material"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x28

    const/16 v10, 0x20

    const/16 v9, 0x8

    .line 328
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v9, :cond_1

    .line 329
    aget-byte v7, p1, v4

    sget-object v8, Lmeizu_jcifs/ntlmssp/Type2Message;->NTLMSSP_SIGNATURE:[B

    aget-byte v8, v8, v4

    if-eq v7, v8, :cond_0

    .line 330
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Not an NTLMSSP message."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 328
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 333
    :cond_1
    invoke-static {p1, v9}, Lmeizu_jcifs/ntlmssp/Type2Message;->readULong([BI)I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 334
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Not a Type 2 message."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 336
    :cond_2
    const/16 v7, 0x14

    invoke-static {p1, v7}, Lmeizu_jcifs/ntlmssp/Type2Message;->readULong([BI)I

    move-result v3

    .line 337
    .local v3, flags:I
    invoke-virtual {p0, v3}, Lmeizu_jcifs/ntlmssp/Type2Message;->setFlags(I)V

    .line 338
    const/4 v6, 0x0

    .line 339
    .local v6, target:Ljava/lang/String;
    const/16 v7, 0xc

    invoke-static {p1, v7}, Lmeizu_jcifs/ntlmssp/Type2Message;->readSecurityBuffer([BI)[B

    move-result-object v0

    .line 340
    .local v0, bytes:[B
    array-length v7, v0

    if-eqz v7, :cond_3

    .line 341
    new-instance v6, Ljava/lang/String;

    .end local v6           #target:Ljava/lang/String;
    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_6

    const-string v7, "UTF-16LE"

    :goto_1
    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 345
    .restart local v6       #target:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v6}, Lmeizu_jcifs/ntlmssp/Type2Message;->setTarget(Ljava/lang/String;)V

    .line 346
    const/16 v4, 0x18

    :goto_2
    if-ge v4, v10, :cond_4

    .line 347
    aget-byte v7, p1, v4

    if-eqz v7, :cond_7

    .line 348
    new-array v1, v9, [B

    .line 349
    .local v1, challenge:[B
    const/16 v7, 0x18

    invoke-static {p1, v7, v1, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    invoke-virtual {p0, v1}, Lmeizu_jcifs/ntlmssp/Type2Message;->setChallenge([B)V

    .line 354
    .end local v1           #challenge:[B
    :cond_4
    const/16 v7, 0x10

    invoke-static {p1, v7}, Lmeizu_jcifs/ntlmssp/Type2Message;->readULong([BI)I

    move-result v5

    .line 355
    .local v5, offset:I
    if-eq v5, v10, :cond_5

    array-length v7, p1

    if-ne v7, v10, :cond_8

    .line 367
    :cond_5
    :goto_3
    return-void

    .line 341
    .end local v5           #offset:I
    .end local v6           #target:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lmeizu_jcifs/ntlmssp/Type2Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 346
    .restart local v6       #target:Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 356
    .restart local v5       #offset:I
    :cond_8
    const/16 v4, 0x20

    :goto_4
    if-ge v4, v11, :cond_9

    .line 357
    aget-byte v7, p1, v4

    if-eqz v7, :cond_a

    .line 358
    new-array v2, v9, [B

    .line 359
    .local v2, context:[B
    invoke-static {p1, v10, v2, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    invoke-virtual {p0, v2}, Lmeizu_jcifs/ntlmssp/Type2Message;->setContext([B)V

    .line 364
    .end local v2           #context:[B
    :cond_9
    if-eq v5, v11, :cond_5

    array-length v7, p1

    if-eq v7, v11, :cond_5

    .line 365
    invoke-static {p1, v11}, Lmeizu_jcifs/ntlmssp/Type2Message;->readSecurityBuffer([BI)[B

    move-result-object v0

    .line 366
    array-length v7, v0

    if-eqz v7, :cond_5

    invoke-virtual {p0, v0}, Lmeizu_jcifs/ntlmssp/Type2Message;->setTargetInformation([B)V

    goto :goto_3

    .line 356
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method


# virtual methods
.method public getChallenge()[B
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lmeizu_jcifs/ntlmssp/Type2Message;->challenge:[B

    return-object v0
.end method

.method public getContext()[B
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lmeizu_jcifs/ntlmssp/Type2Message;->context:[B

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lmeizu_jcifs/ntlmssp/Type2Message;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetInformation()[B
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lmeizu_jcifs/ntlmssp/Type2Message;->targetInformation:[B

    return-object v0
.end method

.method public setChallenge([B)V
    .locals 0
    .parameter "challenge"

    .prologue
    .line 162
    iput-object p1, p0, Lmeizu_jcifs/ntlmssp/Type2Message;->challenge:[B

    .line 163
    return-void
.end method

.method public setContext([B)V
    .locals 0
    .parameter "context"

    .prologue
    .line 223
    iput-object p1, p0, Lmeizu_jcifs/ntlmssp/Type2Message;->context:[B

    .line 224
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 180
    iput-object p1, p0, Lmeizu_jcifs/ntlmssp/Type2Message;->target:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setTargetInformation([B)V
    .locals 0
    .parameter "targetInformation"

    .prologue
    .line 202
    iput-object p1, p0, Lmeizu_jcifs/ntlmssp/Type2Message;->targetInformation:[B

    .line 203
    return-void
.end method

.method public toByteArray()[B
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type2Message;->getTarget()Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, targetName:Ljava/lang/String;
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v0

    .line 230
    .local v0, challenge:[B
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type2Message;->getContext()[B

    move-result-object v1

    .line 231
    .local v1, context:[B
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    move-result-object v6

    .line 232
    .local v6, targetInformation:[B
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type2Message;->getFlags()I

    move-result v4

    .line 233
    .local v4, flags:I
    const/4 v10, 0x0

    new-array v5, v10, [B

    .line 234
    .local v5, target:[B
    and-int/lit8 v10, v4, 0x4

    if-eqz v10, :cond_0

    .line 235
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_8

    .line 236
    and-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_7

    const-string v10, "UTF-16LE"

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 243
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 244
    const/high16 v10, 0x80

    or-int/2addr v4, v10

    .line 246
    if-nez v1, :cond_1

    const/16 v10, 0x8

    new-array v1, v10, [B

    .line 248
    :cond_1
    const/16 v2, 0x20

    .line 249
    .local v2, data:I
    if-eqz v1, :cond_2

    add-int/lit8 v2, v2, 0x8

    .line 250
    :cond_2
    if-eqz v6, :cond_3

    add-int/lit8 v2, v2, 0x8

    .line 251
    :cond_3
    array-length v10, v5

    add-int/2addr v10, v2

    if-eqz v6, :cond_4

    array-length v9, v6

    :cond_4
    add-int/2addr v9, v10

    new-array v8, v9, [B

    .line 253
    .local v8, type2:[B
    sget-object v9, Lmeizu_jcifs/ntlmssp/Type2Message;->NTLMSSP_SIGNATURE:[B

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v9, v10, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    const/16 v9, 0x8

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Lmeizu_jcifs/ntlmssp/Type2Message;->writeULong([BII)V

    .line 255
    const/16 v9, 0xc

    invoke-static {v8, v9, v2, v5}, Lmeizu_jcifs/ntlmssp/Type2Message;->writeSecurityBuffer([BII[B)V

    .line 256
    const/16 v9, 0x14

    invoke-static {v8, v9, v4}, Lmeizu_jcifs/ntlmssp/Type2Message;->writeULong([BII)V

    .line 257
    if-eqz v0, :cond_9

    .end local v0           #challenge:[B
    :goto_1
    const/4 v9, 0x0

    const/16 v10, 0x18

    const/16 v11, 0x8

    invoke-static {v0, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    if-eqz v1, :cond_5

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/16 v11, 0x8

    invoke-static {v1, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    :cond_5
    if-eqz v6, :cond_6

    .line 261
    const/16 v9, 0x28

    array-length v10, v5

    add-int/2addr v10, v2

    invoke-static {v8, v9, v10, v6}, Lmeizu_jcifs/ntlmssp/Type2Message;->writeSecurityBuffer([BII[B)V

    .line 264
    :cond_6
    return-object v8

    .line 236
    .end local v2           #data:I
    .end local v8           #type2:[B
    .restart local v0       #challenge:[B
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lmeizu_jcifs/ntlmssp/Type2Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_0

    .line 240
    :cond_8
    and-int/lit8 v4, v4, -0x5

    goto :goto_0

    .line 257
    .restart local v2       #data:I
    .restart local v8       #type2:[B
    :cond_9
    const/16 v9, 0x8

    new-array v0, v9, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 265
    .end local v0           #challenge:[B
    .end local v1           #context:[B
    .end local v2           #data:I
    .end local v4           #flags:I
    .end local v5           #target:[B
    .end local v6           #targetInformation:[B
    .end local v7           #targetName:Ljava/lang/String;
    .end local v8           #type2:[B
    :catch_0
    move-exception v3

    .line 266
    .local v3, ex:Ljava/io/IOException;
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 271
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type2Message;->getTarget()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, target:Ljava/lang/String;
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v0

    .line 273
    .local v0, challenge:[B
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type2Message;->getContext()[B

    move-result-object v1

    .line 274
    .local v1, context:[B
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    move-result-object v3

    .line 276
    .local v3, targetInformation:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type2Message[target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",challenge="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_0

    const-string v4, "null"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",context="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_1

    const-string v4, "null"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",targetInformation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_2

    const-string v4, "null"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type2Message;->getFlags()I

    move-result v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " bytes>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " bytes>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " bytes>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.class public Lmeizu_jcifs/ntlmssp/Type1Message;
.super Lmeizu_jcifs/ntlmssp/NtlmMessage;
.source "Type1Message.java"


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final DEFAULT_FLAGS:I

.field private static final DEFAULT_WORKSTATION:Ljava/lang/String;


# instance fields
.field private suppliedDomain:Ljava/lang/String;

.field private suppliedWorkstation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 46
    const-string v2, "meizu_jcifs.smb.client.useUnicode"

    invoke-static {v2, v1}, Lmeizu_jcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    or-int/lit16 v1, v1, 0x200

    sput v1, Lmeizu_jcifs/ntlmssp/Type1Message;->DEFAULT_FLAGS:I

    .line 49
    const-string v1, "meizu_jcifs.smb.client.domain"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmeizu_jcifs/ntlmssp/Type1Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, defaultWorkstation:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lmeizu_jcifs/netbios/NbtAddress;->getLocalHost()Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v1

    invoke-virtual {v1}, Lmeizu_jcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_1
    sput-object v0, Lmeizu_jcifs/ntlmssp/Type1Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    .line 55
    return-void

    .line 46
    .end local v0           #defaultWorkstation:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 53
    .restart local v0       #defaultWorkstation:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lmeizu_jcifs/ntlmssp/Type1Message;->getDefaultFlags()I

    move-result v0

    invoke-static {}, Lmeizu_jcifs/ntlmssp/Type1Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmeizu_jcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lmeizu_jcifs/ntlmssp/Type1Message;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "flags"
    .parameter "suppliedDomain"
    .parameter "suppliedWorkstation"

    .prologue
    .line 73
    invoke-direct {p0}, Lmeizu_jcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 74
    invoke-static {}, Lmeizu_jcifs/ntlmssp/Type1Message;->getDefaultFlags()I

    move-result v0

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lmeizu_jcifs/ntlmssp/Type1Message;->setFlags(I)V

    .line 75
    invoke-virtual {p0, p2}, Lmeizu_jcifs/ntlmssp/Type1Message;->setSuppliedDomain(Ljava/lang/String;)V

    .line 76
    if-nez p3, :cond_0

    .line 77
    invoke-static {}, Lmeizu_jcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object p3

    .line 78
    :cond_0
    invoke-virtual {p0, p3}, Lmeizu_jcifs/ntlmssp/Type1Message;->setSuppliedWorkstation(Ljava/lang/String;)V

    .line 79
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
    .line 87
    invoke-direct {p0}, Lmeizu_jcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 88
    invoke-direct {p0, p1}, Lmeizu_jcifs/ntlmssp/Type1Message;->parse([B)V

    .line 89
    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lmeizu_jcifs/ntlmssp/Type1Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultFlags()I
    .locals 1

    .prologue
    .line 184
    sget v0, Lmeizu_jcifs/ntlmssp/Type1Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultWorkstation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lmeizu_jcifs/ntlmssp/Type1Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    return-object v0
.end method

.method private parse([B)V
    .locals 9
    .parameter "material"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    .line 206
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_1

    .line 207
    aget-byte v6, p1, v2

    sget-object v7, Lmeizu_jcifs/ntlmssp/Type1Message;->NTLMSSP_SIGNATURE:[B

    aget-byte v7, v7, v2

    if-eq v6, v7, :cond_0

    .line 208
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Not an NTLMSSP message."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 206
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_1
    invoke-static {p1, v8}, Lmeizu_jcifs/ntlmssp/Type1Message;->readULong([BI)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 212
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Not a Type 1 message."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 214
    :cond_2
    const/16 v6, 0xc

    invoke-static {p1, v6}, Lmeizu_jcifs/ntlmssp/Type1Message;->readULong([BI)I

    move-result v1

    .line 215
    .local v1, flags:I
    const/4 v3, 0x0

    .line 216
    .local v3, suppliedDomain:Ljava/lang/String;
    and-int/lit16 v6, v1, 0x1000

    if-eqz v6, :cond_3

    .line 217
    const/16 v6, 0x10

    invoke-static {p1, v6}, Lmeizu_jcifs/ntlmssp/Type1Message;->readSecurityBuffer([BI)[B

    move-result-object v0

    .line 218
    .local v0, domain:[B
    new-instance v3, Ljava/lang/String;

    .end local v3           #suppliedDomain:Ljava/lang/String;
    invoke-static {}, Lmeizu_jcifs/ntlmssp/Type1Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 220
    .end local v0           #domain:[B
    .restart local v3       #suppliedDomain:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    .line 221
    .local v4, suppliedWorkstation:Ljava/lang/String;
    and-int/lit16 v6, v1, 0x2000

    if-eqz v6, :cond_4

    .line 222
    const/16 v6, 0x18

    invoke-static {p1, v6}, Lmeizu_jcifs/ntlmssp/Type1Message;->readSecurityBuffer([BI)[B

    move-result-object v5

    .line 223
    .local v5, workstation:[B
    new-instance v4, Ljava/lang/String;

    .end local v4           #suppliedWorkstation:Ljava/lang/String;
    invoke-static {}, Lmeizu_jcifs/ntlmssp/Type1Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 225
    .end local v5           #workstation:[B
    .restart local v4       #suppliedWorkstation:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v1}, Lmeizu_jcifs/ntlmssp/Type1Message;->setFlags(I)V

    .line 226
    invoke-virtual {p0, v3}, Lmeizu_jcifs/ntlmssp/Type1Message;->setSuppliedDomain(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, v4}, Lmeizu_jcifs/ntlmssp/Type1Message;->setSuppliedWorkstation(Ljava/lang/String;)V

    .line 228
    return-void
.end method


# virtual methods
.method public getSuppliedDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lmeizu_jcifs/ntlmssp/Type1Message;->suppliedDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getSuppliedWorkstation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lmeizu_jcifs/ntlmssp/Type1Message;->suppliedWorkstation:Ljava/lang/String;

    return-object v0
.end method

.method public setSuppliedDomain(Ljava/lang/String;)V
    .locals 0
    .parameter "suppliedDomain"

    .prologue
    .line 106
    iput-object p1, p0, Lmeizu_jcifs/ntlmssp/Type1Message;->suppliedDomain:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setSuppliedWorkstation(Ljava/lang/String;)V
    .locals 0
    .parameter "suppliedWorkstation"

    .prologue
    .line 124
    iput-object p1, p0, Lmeizu_jcifs/ntlmssp/Type1Message;->suppliedWorkstation:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public toByteArray()[B
    .locals 12

    .prologue
    const/16 v8, 0x10

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type1Message;->getSuppliedDomain()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, suppliedDomain:Ljava/lang/String;
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type1Message;->getSuppliedWorkstation()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, suppliedWorkstation:Ljava/lang/String;
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type1Message;->getFlags()I

    move-result v2

    .line 132
    .local v2, flags:I
    const/4 v3, 0x0

    .line 133
    .local v3, hostInfo:Z
    const/4 v9, 0x0

    new-array v0, v9, [B

    .line 134
    .local v0, domain:[B
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    .line 135
    const/4 v3, 0x1

    .line 136
    or-int/lit16 v2, v2, 0x1000

    .line 137
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lmeizu_jcifs/ntlmssp/Type1Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 142
    :goto_0
    const/4 v9, 0x0

    new-array v7, v9, [B

    .line 143
    .local v7, workstation:[B
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    .line 145
    const/4 v3, 0x1

    .line 146
    or-int/lit16 v2, v2, 0x2000

    .line 147
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lmeizu_jcifs/ntlmssp/Type1Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 154
    :goto_1
    if-eqz v3, :cond_0

    array-length v8, v0

    add-int/lit8 v8, v8, 0x20

    array-length v9, v7

    add-int/2addr v8, v9

    :cond_0
    new-array v6, v8, [B

    .line 156
    .local v6, type1:[B
    sget-object v8, Lmeizu_jcifs/ntlmssp/Type1Message;->NTLMSSP_SIGNATURE:[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {v8, v9, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    const/16 v8, 0x8

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Lmeizu_jcifs/ntlmssp/Type1Message;->writeULong([BII)V

    .line 158
    const/16 v8, 0xc

    invoke-static {v6, v8, v2}, Lmeizu_jcifs/ntlmssp/Type1Message;->writeULong([BII)V

    .line 159
    if-eqz v3, :cond_1

    .line 160
    const/16 v8, 0x10

    const/16 v9, 0x20

    invoke-static {v6, v8, v9, v0}, Lmeizu_jcifs/ntlmssp/Type1Message;->writeSecurityBuffer([BII[B)V

    .line 161
    const/16 v8, 0x18

    array-length v9, v0

    add-int/lit8 v9, v9, 0x20

    invoke-static {v6, v8, v9, v7}, Lmeizu_jcifs/ntlmssp/Type1Message;->writeSecurityBuffer([BII[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_1
    return-object v6

    .line 140
    .end local v6           #type1:[B
    .end local v7           #workstation:[B
    :cond_2
    and-int/lit16 v2, v2, -0x1001

    goto :goto_0

    .line 151
    .restart local v7       #workstation:[B
    :cond_3
    and-int/lit16 v2, v2, -0x2001

    goto :goto_1

    .line 164
    .end local v0           #domain:[B
    .end local v2           #flags:I
    .end local v3           #hostInfo:Z
    .end local v4           #suppliedDomain:Ljava/lang/String;
    .end local v5           #suppliedWorkstation:Ljava/lang/String;
    .end local v7           #workstation:[B
    :catch_0
    move-exception v1

    .line 165
    .local v1, ex:Ljava/io/IOException;
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 170
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type1Message;->getSuppliedDomain()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, suppliedDomain:Ljava/lang/String;
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type1Message;->getSuppliedWorkstation()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, suppliedWorkstation:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type1Message[suppliedDomain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_0

    const-string v0, "null"

    .end local v0           #suppliedDomain:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",suppliedWorkstation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_1

    const-string v1, "null"

    .end local v1           #suppliedWorkstation:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/Type1Message;->getFlags()I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

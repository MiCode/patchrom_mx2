.class public abstract Lmeizu_jcifs/ntlmssp/NtlmMessage;
.super Ljava/lang/Object;
.source "NtlmMessage.java"

# interfaces
.implements Lmeizu_jcifs/ntlmssp/NtlmFlags;


# static fields
.field protected static final NTLMSSP_SIGNATURE:[B = null

.field private static final OEM_ENCODING:Ljava/lang/String; = null

.field protected static final UNI_ENCODING:Ljava/lang/String; = "UTF-16LE"


# instance fields
.field private flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmeizu_jcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    .line 37
    sget-object v0, Lmeizu_jcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    sput-object v0, Lmeizu_jcifs/ntlmssp/NtlmMessage;->OEM_ENCODING:Ljava/lang/String;

    return-void

    .line 32
    :array_0
    .array-data 0x1
        0x4et
        0x54t
        0x4ct
        0x4dt
        0x53t
        0x53t
        0x50t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getOEMEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lmeizu_jcifs/ntlmssp/NtlmMessage;->OEM_ENCODING:Ljava/lang/String;

    return-object v0
.end method

.method static readSecurityBuffer([BI)[B
    .locals 4
    .parameter "src"
    .parameter "index"

    .prologue
    .line 96
    invoke-static {p0, p1}, Lmeizu_jcifs/ntlmssp/NtlmMessage;->readUShort([BI)I

    move-result v1

    .line 97
    .local v1, length:I
    add-int/lit8 v3, p1, 0x4

    invoke-static {p0, v3}, Lmeizu_jcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v2

    .line 98
    .local v2, offset:I
    new-array v0, v1, [B

    .line 99
    .local v0, buffer:[B
    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    return-object v0
.end method

.method static readULong([BI)I
    .locals 2
    .parameter "src"
    .parameter "index"

    .prologue
    .line 85
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static readUShort([BI)I
    .locals 2
    .parameter "src"
    .parameter "index"

    .prologue
    .line 92
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method static writeSecurityBuffer([BII[B)V
    .locals 3
    .parameter "dest"
    .parameter "offset"
    .parameter "bodyOffset"
    .parameter "src"

    .prologue
    const/4 v1, 0x0

    .line 117
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 118
    .local v0, length:I
    :goto_0
    if-nez v0, :cond_1

    .line 123
    :goto_1
    return-void

    .end local v0           #length:I
    :cond_0
    move v0, v1

    .line 117
    goto :goto_0

    .line 119
    .restart local v0       #length:I
    :cond_1
    invoke-static {p0, p1, v0}, Lmeizu_jcifs/ntlmssp/NtlmMessage;->writeUShort([BII)V

    .line 120
    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2, v0}, Lmeizu_jcifs/ntlmssp/NtlmMessage;->writeUShort([BII)V

    .line 121
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2, p2}, Lmeizu_jcifs/ntlmssp/NtlmMessage;->writeULong([BII)V

    .line 122
    invoke-static {p3, v1, p0, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method static writeULong([BII)V
    .locals 2
    .parameter "dest"
    .parameter "offset"
    .parameter "ulong"

    .prologue
    .line 104
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 105
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 106
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 107
    add-int/lit8 v0, p1, 0x3

    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 108
    return-void
.end method

.method static writeUShort([BII)V
    .locals 2
    .parameter "dest"
    .parameter "offset"
    .parameter "ushort"

    .prologue
    .line 111
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 112
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 113
    return-void
.end method


# virtual methods
.method public getFlag(I)Z
    .locals 1
    .parameter "flag"

    .prologue
    .line 68
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lmeizu_jcifs/ntlmssp/NtlmMessage;->flags:I

    return v0
.end method

.method public setFlag(IZ)V
    .locals 2
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 80
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v0

    or-int/2addr v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lmeizu_jcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    .line 82
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lmeizu_jcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v0

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public setFlags(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 58
    iput p1, p0, Lmeizu_jcifs/ntlmssp/NtlmMessage;->flags:I

    .line 59
    return-void
.end method

.method public abstract toByteArray()[B
.end method

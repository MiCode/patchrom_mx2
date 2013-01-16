.class public Lmeizu_jcifs/util/HMACT64;
.super Ljava/security/MessageDigest;
.source "HMACT64.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BLOCK_LENGTH:I = 0x40

.field private static final IPAD:B = 0x36t

.field private static final OPAD:B = 0x5ct


# instance fields
.field private ipad:[B

.field private md5:Ljava/security/MessageDigest;

.field private opad:[B


# direct methods
.method private constructor <init>(Lmeizu_jcifs/util/HMACT64;)V
    .locals 2
    .parameter "hmac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x40

    .line 68
    const-string v0, "HMACT64"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 39
    new-array v0, v1, [B

    iput-object v0, p0, Lmeizu_jcifs/util/HMACT64;->ipad:[B

    .line 41
    new-array v0, v1, [B

    iput-object v0, p0, Lmeizu_jcifs/util/HMACT64;->opad:[B

    .line 69
    iget-object v0, p1, Lmeizu_jcifs/util/HMACT64;->ipad:[B

    iput-object v0, p0, Lmeizu_jcifs/util/HMACT64;->ipad:[B

    .line 70
    iget-object v0, p1, Lmeizu_jcifs/util/HMACT64;->opad:[B

    iput-object v0, p0, Lmeizu_jcifs/util/HMACT64;->opad:[B

    .line 71
    iget-object v0, p1, Lmeizu_jcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    iput-object v0, p0, Lmeizu_jcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    .line 72
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .parameter "key"

    .prologue
    const/16 v5, 0x40

    .line 49
    const-string v3, "HMACT64"

    invoke-direct {p0, v3}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 39
    new-array v3, v5, [B

    iput-object v3, p0, Lmeizu_jcifs/util/HMACT64;->ipad:[B

    .line 41
    new-array v3, v5, [B

    iput-object v3, p0, Lmeizu_jcifs/util/HMACT64;->opad:[B

    .line 50
    array-length v3, p1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 51
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 52
    iget-object v3, p0, Lmeizu_jcifs/util/HMACT64;->ipad:[B

    aget-byte v4, p1, v1

    xor-int/lit8 v4, v4, 0x36

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 53
    iget-object v3, p0, Lmeizu_jcifs/util/HMACT64;->opad:[B

    aget-byte v4, p1, v1

    xor-int/lit8 v4, v4, 0x5c

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_1

    .line 56
    iget-object v3, p0, Lmeizu_jcifs/util/HMACT64;->ipad:[B

    const/16 v4, 0x36

    aput-byte v4, v3, v1

    .line 57
    iget-object v3, p0, Lmeizu_jcifs/util/HMACT64;->opad:[B

    const/16 v4, 0x5c

    aput-byte v4, v3, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 60
    :cond_1
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    iput-object v3, p0, Lmeizu_jcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    invoke-virtual {p0}, Lmeizu_jcifs/util/HMACT64;->engineReset()V

    .line 65
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 76
    :try_start_0
    new-instance v1, Lmeizu_jcifs/util/HMACT64;

    invoke-direct {v1, p0}, Lmeizu_jcifs/util/HMACT64;-><init>(Lmeizu_jcifs/util/HMACT64;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineDigest([BII)I
    .locals 4
    .parameter "buf"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 89
    iget-object v2, p0, Lmeizu_jcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 90
    .local v0, digest:[B
    iget-object v2, p0, Lmeizu_jcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    iget-object v3, p0, Lmeizu_jcifs/util/HMACT64;->opad:[B

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 91
    iget-object v2, p0, Lmeizu_jcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 93
    :try_start_0
    iget-object v2, p0, Lmeizu_jcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v2, p1, p2, p3}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method protected engineDigest()[B
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lmeizu_jcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 84
    .local v0, digest:[B
    iget-object v1, p0, Lmeizu_jcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    iget-object v2, p0, Lmeizu_jcifs/util/HMACT64;->opad:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 85
    iget-object v1, p0, Lmeizu_jcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method protected engineGetDigestLength()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmeizu_jcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method protected engineReset()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lmeizu_jcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 105
    iget-object v0, p0, Lmeizu_jcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    iget-object v1, p0, Lmeizu_jcifs/util/HMACT64;->ipad:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 106
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1
    .parameter "b"

    .prologue
    .line 109
    iget-object v0, p0, Lmeizu_jcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 110
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 113
    iget-object v0, p0, Lmeizu_jcifs/util/HMACT64;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 114
    return-void
.end method

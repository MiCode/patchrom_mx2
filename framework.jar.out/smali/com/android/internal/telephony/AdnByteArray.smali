.class Lcom/android/internal/telephony/AdnByteArray;
.super Ljava/lang/Object;
.source "AdnRecord.java"


# static fields
.field static final HEX:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 944
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/AdnByteArray;->HEX:[B

    return-void

    :array_0
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 942
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gsmToHex(Ljava/lang/String;)[B
    .locals 7
    .parameter "s"

    .prologue
    .line 968
    if-nez p0, :cond_1

    .line 969
    const/4 v2, 0x0

    .line 980
    :cond_0
    return-object v2

    .line 971
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 973
    .local v3, strlen:I
    mul-int/lit8 v4, v3, 0x2

    new-array v2, v4, [B

    .line 975
    .local v2, ret:[B
    const/4 v1, 0x0

    .local v1, pos:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 976
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 977
    .local v0, c:C
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/android/internal/telephony/AdnByteArray;->HEX:[B

    and-int/lit8 v6, v0, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, v2, v4

    .line 978
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x0

    sget-object v5, Lcom/android/internal/telephony/AdnByteArray;->HEX:[B

    and-int/lit16 v6, v0, 0xf0

    shr-int/lit8 v6, v6, 0x4

    aget-byte v5, v5, v6

    aput-byte v5, v2, v4

    .line 975
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static gsmToHex([B)[B
    .locals 6
    .parameter "b"

    .prologue
    .line 985
    if-nez p0, :cond_1

    .line 986
    const/4 v1, 0x0

    .line 997
    :cond_0
    return-object v1

    .line 988
    :cond_1
    array-length v2, p0

    .line 990
    .local v2, strlen:I
    mul-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 992
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, pos:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 994
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/internal/telephony/AdnByteArray;->HEX:[B

    aget-byte v5, p0, v0

    and-int/lit8 v5, v5, 0xf

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 995
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    sget-object v4, Lcom/android/internal/telephony/AdnByteArray;->HEX:[B

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 992
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stringToAdnUcs2(Ljava/lang/String;)[B
    .locals 7
    .parameter "s"

    .prologue
    .line 949
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 950
    .local v4, strlen:I
    const/4 v3, 0x0

    .line 952
    .local v3, septets:I
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v3, v5, 0x1

    .line 955
    new-array v2, v3, [B

    .line 956
    .local v2, ret:[B
    const/4 v5, 0x0

    const/16 v6, -0x80

    aput-byte v6, v2, v5

    .line 958
    const/4 v1, 0x0

    .local v1, pos:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 959
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 960
    .local v0, c:C
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x2

    int-to-byte v6, v0

    and-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 961
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    and-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 958
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 963
    .end local v0           #c:C
    :cond_0
    return-object v2
.end method

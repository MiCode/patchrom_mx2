.class public Lmeizu_jcifs/dcerpc/UUID;
.super Lmeizu_jcifs/dcerpc/rpc$uuid_t;
.source "UUID.java"


# static fields
.field static final HEXCHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lmeizu_jcifs/dcerpc/UUID;->HEXCHARS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 81
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/rpc$uuid_t;-><init>()V

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 83
    .local v0, arr:[C
    const/16 v1, 0x8

    invoke-static {v0, v3, v1}, Lmeizu_jcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 84
    const/16 v1, 0x9

    invoke-static {v0, v1, v5}, Lmeizu_jcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Lmeizu_jcifs/dcerpc/UUID;->S(I)S

    move-result v1

    iput-short v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 85
    const/16 v1, 0xe

    invoke-static {v0, v1, v5}, Lmeizu_jcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Lmeizu_jcifs/dcerpc/UUID;->S(I)S

    move-result v1

    iput-short v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 86
    const/16 v1, 0x13

    invoke-static {v0, v1, v4}, Lmeizu_jcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Lmeizu_jcifs/dcerpc/UUID;->B(I)B

    move-result v1

    iput-byte v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 87
    const/16 v1, 0x15

    invoke-static {v0, v1, v4}, Lmeizu_jcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Lmeizu_jcifs/dcerpc/UUID;->B(I)B

    move-result v1

    iput-byte v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 88
    const/4 v1, 0x6

    new-array v1, v1, [B

    iput-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 89
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    const/16 v2, 0x18

    invoke-static {v0, v2, v4}, Lmeizu_jcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v2

    invoke-static {v2}, Lmeizu_jcifs/dcerpc/UUID;->B(I)B

    move-result v2

    aput-byte v2, v1, v3

    .line 90
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v2, 0x1

    const/16 v3, 0x1a

    invoke-static {v0, v3, v4}, Lmeizu_jcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v3

    invoke-static {v3}, Lmeizu_jcifs/dcerpc/UUID;->B(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 91
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    const/16 v2, 0x1c

    invoke-static {v0, v2, v4}, Lmeizu_jcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v2

    invoke-static {v2}, Lmeizu_jcifs/dcerpc/UUID;->B(I)B

    move-result v2

    aput-byte v2, v1, v4

    .line 92
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v2, 0x3

    const/16 v3, 0x1e

    invoke-static {v0, v3, v4}, Lmeizu_jcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v3

    invoke-static {v3}, Lmeizu_jcifs/dcerpc/UUID;->B(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 93
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    const/16 v2, 0x20

    invoke-static {v0, v2, v4}, Lmeizu_jcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v2

    invoke-static {v2}, Lmeizu_jcifs/dcerpc/UUID;->B(I)B

    move-result v2

    aput-byte v2, v1, v5

    .line 94
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v2, 0x5

    const/16 v3, 0x22

    invoke-static {v0, v3, v4}, Lmeizu_jcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v3

    invoke-static {v3}, Lmeizu_jcifs/dcerpc/UUID;->B(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 95
    return-void
.end method

.method public constructor <init>(Lmeizu_jcifs/dcerpc/rpc$uuid_t;)V
    .locals 7
    .parameter "uuid"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/rpc$uuid_t;-><init>()V

    .line 68
    iget v0, p1, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_low:I

    iput v0, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 69
    iget-short v0, p1, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_mid:S

    iput-short v0, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 70
    iget-short v0, p1, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    iput-short v0, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 71
    iget-byte v0, p1, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    iput-byte v0, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 72
    iget-byte v0, p1, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    iput-byte v0, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 73
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 74
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    iget-object v1, p1, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    .line 75
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    iget-object v1, p1, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v1, v1, v3

    aput-byte v1, v0, v3

    .line 76
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    iget-object v1, p1, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v1, v1, v4

    aput-byte v1, v0, v4

    .line 77
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    iget-object v1, p1, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v1, v1, v5

    aput-byte v1, v0, v5

    .line 78
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    iget-object v1, p1, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v1, v1, v6

    aput-byte v1, v0, v6

    .line 79
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v1, 0x5

    iget-object v2, p1, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 80
    return-void
.end method

.method private static B(I)B
    .locals 1
    .parameter "i"

    .prologue
    .line 64
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method private static S(I)S
    .locals 1
    .parameter "i"

    .prologue
    .line 65
    const v0, 0xffff

    and-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method

.method public static bin_to_hex(II)Ljava/lang/String;
    .locals 5
    .parameter "value"
    .parameter "length"

    .prologue
    .line 56
    new-array v2, p1, [C

    .line 57
    .local v2, arr:[C
    array-length v0, v2

    .local v0, ai:I
    move v1, v0

    .line 58
    .end local v0           #ai:I
    .local v1, ai:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #ai:I
    .restart local v0       #ai:I
    if-lez v1, :cond_0

    .line 59
    sget-object v3, Lmeizu_jcifs/dcerpc/UUID;->HEXCHARS:[C

    and-int/lit8 v4, p0, 0xf

    aget-char v3, v3, v4

    aput-char v3, v2, v0

    .line 60
    ushr-int/lit8 p0, p0, 0x4

    move v1, v0

    .end local v0           #ai:I
    .restart local v1       #ai:I
    goto :goto_0

    .line 62
    .end local v1           #ai:I
    .restart local v0       #ai:I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static hex_to_bin([CII)I
    .locals 5
    .parameter "arr"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 27
    const/4 v2, 0x0

    .line 30
    .local v2, value:I
    const/4 v1, 0x0

    .line 31
    .local v1, count:I
    move v0, p1

    .local v0, ai:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    if-ge v1, p2, :cond_0

    .line 32
    shl-int/lit8 v2, v2, 0x4

    .line 33
    aget-char v3, p0, v0

    sparse-switch v3, :sswitch_data_0

    .line 45
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 36
    :sswitch_0
    aget-char v3, p0, v0

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    .line 47
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :sswitch_1
    aget-char v3, p0, v0

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    .line 40
    goto :goto_1

    .line 42
    :sswitch_2
    aget-char v3, p0, v0

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    .line 43
    goto :goto_1

    .line 50
    :cond_0
    return v2

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x41 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_1
        0x44 -> :sswitch_1
        0x45 -> :sswitch_1
        0x46 -> :sswitch_1
        0x61 -> :sswitch_2
        0x62 -> :sswitch_2
        0x63 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/16 v4, 0x2d

    const/4 v3, 0x2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_low:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lmeizu_jcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_mid:S

    invoke-static {v1, v5}, Lmeizu_jcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    invoke-static {v1, v5}, Lmeizu_jcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    invoke-static {v1, v3}, Lmeizu_jcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    invoke-static {v1, v3}, Lmeizu_jcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-static {v1, v3}, Lmeizu_jcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    invoke-static {v1, v3}, Lmeizu_jcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v1, v1, v3

    invoke-static {v1, v3}, Lmeizu_jcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    invoke-static {v1, v3}, Lmeizu_jcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v1, v1, v5

    invoke-static {v1, v3}, Lmeizu_jcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    invoke-static {v1, v3}, Lmeizu_jcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

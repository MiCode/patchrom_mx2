.class public Lmeizu_jcifs/dcerpc/UnicodeString;
.super Lmeizu_jcifs/dcerpc/rpc$unicode_string;
.source "UnicodeString.java"


# instance fields
.field zterm:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 6
    .parameter "str"
    .parameter "zterm"

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/rpc$unicode_string;-><init>()V

    .line 37
    iput-boolean p2, p0, Lmeizu_jcifs/dcerpc/UnicodeString;->zterm:Z

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 40
    .local v1, len:I
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    .line 42
    .local v2, zt:I
    :goto_0
    add-int v4, v1, v2

    mul-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    iput-short v4, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    iput-short v4, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->length:S

    .line 43
    add-int v4, v1, v2

    new-array v4, v4, [S

    iput-object v4, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 46
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 47
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v2           #zt:I
    :cond_0
    move v2, v3

    .line 40
    goto :goto_0

    .line 49
    .restart local v0       #i:I
    .restart local v2       #zt:I
    :cond_1
    if-eqz p2, :cond_2

    .line 50
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    aput-short v3, v4, v0

    .line 52
    :cond_2
    return-void
.end method

.method public constructor <init>(Lmeizu_jcifs/dcerpc/rpc$unicode_string;Z)V
    .locals 1
    .parameter "rus"
    .parameter "zterm"

    .prologue
    .line 29
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/rpc$unicode_string;-><init>()V

    .line 30
    iget-short v0, p1, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->length:S

    iput-short v0, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->length:S

    .line 31
    iget-short v0, p1, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    iput-short v0, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 32
    iget-object v0, p1, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    iput-object v0, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 33
    iput-boolean p2, p0, Lmeizu_jcifs/dcerpc/UnicodeString;->zterm:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "zterm"

    .prologue
    .line 26
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/rpc$unicode_string;-><init>()V

    .line 27
    iput-boolean p1, p0, Lmeizu_jcifs/dcerpc/UnicodeString;->zterm:Z

    .line 28
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 55
    iget-short v3, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->length:S

    div-int/lit8 v5, v3, 0x2

    iget-boolean v3, p0, Lmeizu_jcifs/dcerpc/UnicodeString;->zterm:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    sub-int v2, v5, v3

    .line 56
    .local v2, len:I
    new-array v0, v2, [C

    .line 57
    .local v0, ca:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 58
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->buffer:[S

    aget-short v3, v3, v1

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #ca:[C
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_0
    move v3, v4

    .line 55
    goto :goto_0

    .line 60
    .restart local v0       #ca:[C
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.class public Lmeizu_jcifs/netbios/Name;
.super Ljava/lang/Object;
.source "Name.java"


# static fields
.field private static final DEFAULT_SCOPE:Ljava/lang/String; = null

.field static final OEM_ENCODING:Ljava/lang/String; = null

.field private static final SCOPE_OFFSET:I = 0x21

.field private static final TYPE_OFFSET:I = 0x1f


# instance fields
.field public hexCode:I

.field public name:Ljava/lang/String;

.field public scope:Ljava/lang/String;

.field srcHashCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "meizu_jcifs.netbios.scope"

    invoke-static {v0}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmeizu_jcifs/netbios/Name;->DEFAULT_SCOPE:Ljava/lang/String;

    .line 32
    const-string v0, "meizu_jcifs.encoding"

    const-string v1, "file.encoding"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmeizu_jcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "hexCode"
    .parameter "scope"

    .prologue
    const/16 v2, 0xf

    const/4 v1, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 46
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    .line 49
    iput p2, p0, Lmeizu_jcifs/netbios/Name;->hexCode:I

    .line 50
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .end local p3
    :goto_0
    iput-object p3, p0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 51
    iput v1, p0, Lmeizu_jcifs/netbios/Name;->srcHashCode:I

    .line 52
    return-void

    .line 50
    .restart local p3
    :cond_1
    sget-object p3, Lmeizu_jcifs/netbios/Name;->DEFAULT_SCOPE:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    instance-of v3, p1, Lmeizu_jcifs/netbios/Name;

    if-nez v3, :cond_1

    move v1, v2

    .line 175
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 171
    check-cast v0, Lmeizu_jcifs/netbios/Name;

    .line 172
    .local v0, n:Lmeizu_jcifs/netbios/Name;
    iget-object v3, p0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 173
    iget-object v3, p0, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    iget-object v4, v0, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lmeizu_jcifs/netbios/Name;->hexCode:I

    iget v4, v0, Lmeizu_jcifs/netbios/Name;->hexCode:I

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 175
    :cond_3
    iget-object v3, p0, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    iget-object v4, v0, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lmeizu_jcifs/netbios/Name;->hexCode:I

    iget v4, v0, Lmeizu_jcifs/netbios/Name;->hexCode:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    iget-object v4, v0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const v2, 0x1003f

    .line 155
    iget-object v1, p0, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 156
    .local v0, result:I
    iget v1, p0, Lmeizu_jcifs/netbios/Name;->hexCode:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 157
    iget v1, p0, Lmeizu_jcifs/netbios/Name;->srcHashCode:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 160
    iget-object v1, p0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    :cond_0
    return v0
.end method

.method readScopeWireFormat([BI)I
    .locals 7
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 129
    move v3, p2

    .line 133
    .local v3, start:I
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .local v2, srcIndex:I
    aget-byte v4, p1, p2

    and-int/lit16 v0, v4, 0xff

    .local v0, n:I
    if-nez v0, :cond_0

    .line 134
    const/4 v4, 0x0

    iput-object v4, p0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 135
    const/4 v4, 0x1

    move p2, v2

    .line 149
    .end local v2           #srcIndex:I
    .restart local p2
    :goto_0
    return v4

    .line 139
    .end local p2
    .restart local v2       #srcIndex:I
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lmeizu_jcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v4, p1, v2, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .local v1, sb:Ljava/lang/StringBuffer;
    add-int p2, v2, v0

    .end local v2           #srcIndex:I
    .restart local p2
    move v2, p2

    .line 141
    .end local p2
    .restart local v2       #srcIndex:I
    :goto_1
    add-int/lit8 p2, v2, 0x1

    .end local v2           #srcIndex:I
    .restart local p2
    :try_start_1
    aget-byte v4, p1, v2

    and-int/lit16 v0, v4, 0xff

    if-eqz v0, :cond_1

    .line 142
    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    sget-object v6, Lmeizu_jcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v5, p1, p2, v0, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    add-int/2addr p2, v0

    move v2, p2

    .end local p2
    .restart local v2       #srcIndex:I
    goto :goto_1

    .line 145
    .end local v2           #srcIndex:I
    .restart local p2
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :goto_2
    sub-int v4, p2, v3

    goto :goto_0

    .line 146
    .end local p2
    .restart local v2       #srcIndex:I
    :catch_0
    move-exception v4

    move p2, v2

    .end local v2           #srcIndex:I
    .restart local p2
    goto :goto_2

    .restart local v1       #sb:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method readWireFormat([BI)I
    .locals 6
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 79
    const/16 v3, 0x21

    new-array v2, v3, [B

    .line 80
    .local v2, tmp:[B
    const/16 v1, 0xf

    .line 81
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0xf

    if-ge v0, v3, :cond_1

    .line 82
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x41

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 83
    aget-byte v3, v2, v0

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x41

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 84
    aget-byte v3, v2, v0

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    .line 85
    add-int/lit8 v1, v0, 0x1

    .line 81
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lmeizu_jcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v3, v2, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, p0, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_1
    add-int/lit8 v3, p2, 0x1f

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x41

    shl-int/lit8 v3, v3, 0x4

    iput v3, p0, Lmeizu_jcifs/netbios/Name;->hexCode:I

    .line 93
    iget v3, p0, Lmeizu_jcifs/netbios/Name;->hexCode:I

    add-int/lit8 v4, p2, 0x1f

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x41

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    iput v3, p0, Lmeizu_jcifs/netbios/Name;->hexCode:I

    .line 94
    add-int/lit8 v3, p2, 0x21

    invoke-virtual {p0, p1, v3}, Lmeizu_jcifs/netbios/Name;->readScopeWireFormat([BI)I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    return v3

    .line 90
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x2e

    .line 178
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v2, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    .line 182
    .local v1, n:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 183
    const-string v1, "null"

    .line 192
    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lmeizu_jcifs/netbios/Name;->hexCode:I

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    iget-object v3, p0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 194
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 184
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    .line 185
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 186
    .local v0, c:[C
    aput-char v4, v0, v5

    .line 187
    aput-char v4, v0, v6

    .line 188
    const/16 v3, 0xe

    aput-char v4, v0, v3

    .line 189
    new-instance v1, Ljava/lang/String;

    .end local v1           #n:Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .restart local v1       #n:Ljava/lang/String;
    goto :goto_0
.end method

.method writeScopeWireFormat([BI)I
    .locals 10
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/16 v9, 0x2e

    const/4 v8, 0x0

    .line 97
    iget-object v5, p0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 98
    aput-byte v8, p1, p2

    .line 99
    const/4 v5, 0x1

    .line 126
    :goto_0
    return v5

    .line 103
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, dstIndex:I
    aput-byte v9, p1, p2

    .line 105
    :try_start_0
    iget-object v5, p0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    sget-object v6, Lmeizu_jcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v5, v6, p1, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    iget-object v5, p0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int p2, v1, v5

    .line 110
    .end local v1           #dstIndex:I
    .restart local p2
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #dstIndex:I
    aput-byte v8, p1, p2

    .line 114
    add-int/lit8 v3, v1, -0x2

    .line 115
    .local v3, i:I
    iget-object v5, p0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v2, v3, v5

    .line 116
    .local v2, e:I
    const/4 v0, 0x0

    .line 119
    .local v0, c:I
    :goto_2
    aget-byte v5, p1, v3

    if-ne v5, v9, :cond_1

    .line 120
    int-to-byte v5, v0

    aput-byte v5, p1, v3

    .line 121
    const/4 v0, 0x0

    .line 125
    :goto_3
    add-int/lit8 v4, v3, -0x1

    .end local v3           #i:I
    .local v4, i:I
    if-gt v3, v2, :cond_2

    .line 126
    iget-object v5, p0, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    move p2, v1

    .end local v1           #dstIndex:I
    .restart local p2
    goto :goto_0

    .line 123
    .end local v4           #i:I
    .end local p2
    .restart local v1       #dstIndex:I
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 106
    .end local v0           #c:I
    .end local v2           #e:I
    .end local v3           #i:I
    :catch_0
    move-exception v5

    goto :goto_1

    .restart local v0       #c:I
    .restart local v2       #e:I
    .restart local v4       #i:I
    :cond_2
    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_2
.end method

.method writeWireFormat([BI)I
    .locals 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 56
    const/16 v2, 0x20

    aput-byte v2, p1, p2

    .line 60
    :try_start_0
    iget-object v2, p0, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    sget-object v3, Lmeizu_jcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 62
    .local v1, tmp:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 63
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p2

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 64
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    aget-byte v3, v1, v0

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    :goto_1
    const/16 v2, 0xf

    if-ge v0, v2, :cond_1

    .line 67
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p2

    const/16 v3, 0x43

    aput-byte v3, p1, v2

    .line 68
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    const/16 v3, 0x41

    aput-byte v3, p1, v2

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_1
    add-int/lit8 v2, p2, 0x1f

    iget v3, p0, Lmeizu_jcifs/netbios/Name;->hexCode:I

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 71
    add-int/lit8 v2, p2, 0x1f

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lmeizu_jcifs/netbios/Name;->hexCode:I

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    aput-byte v3, p1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0           #i:I
    .end local v1           #tmp:[B
    :goto_2
    add-int/lit8 v2, p2, 0x21

    invoke-virtual {p0, p1, v2}, Lmeizu_jcifs/netbios/Name;->writeScopeWireFormat([BI)I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    return v2

    .line 72
    :catch_0
    move-exception v2

    goto :goto_2
.end method

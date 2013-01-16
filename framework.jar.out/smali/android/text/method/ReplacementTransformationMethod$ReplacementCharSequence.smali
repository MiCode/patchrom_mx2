.class Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;
.super Ljava/lang/Object;
.source "ReplacementTransformationMethod.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/ReplacementTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReplacementCharSequence"
.end annotation


# static fields
.field private static final ORIGINAL:[[C

.field private static final REPLACEMENT:[[C


# instance fields
.field private final kCount:I

.field private mOriginal:[C

.field private mReplacement:[C

.field private mSource:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    new-array v0, v6, [[C

    new-array v1, v5, [C

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v4, [C

    aput-char v3, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [C

    const/16 v2, 0xd

    aput-char v2, v1, v3

    aput-object v1, v0, v5

    sput-object v0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->ORIGINAL:[[C

    .line 113
    new-array v0, v6, [[C

    new-array v1, v5, [C

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    new-array v1, v4, [C

    const v2, 0xfeff

    aput-char v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [C

    const/16 v2, 0xa

    aput-char v2, v1, v3

    aput-object v1, v0, v5

    sput-object v0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->REPLACEMENT:[[C

    return-void

    .line 111
    :array_0
    .array-data 0x2
        0xdt 0x0t
        0xat 0x0t
    .end array-data

    .line 113
    :array_1
    .array-data 0x2
        0xfft 0xfet
        0xat 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/CharSequence;[C[CZ)V
    .locals 1
    .parameter "source"
    .parameter "original"
    .parameter "replacement"
    .parameter "singleLine"

    .prologue
    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    if-eqz p4, :cond_0

    sget-object v0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->ORIGINAL:[[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->kCount:I

    .line 122
    iput-object p1, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 123
    iput-object p2, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    .line 124
    iput-object p3, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mReplacement:[C

    .line 125
    return-void

    .line 121
    :cond_0
    sget-object v0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->ORIGINAL:[[C

    array-length v0, v0

    goto :goto_0
.end method

.method private charAtInner(I)C
    .locals 8
    .parameter "i"

    .prologue
    const/4 v4, 0x0

    .line 146
    iget-object v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 147
    .local v6, c:C
    const/4 v7, 0x0

    .local v7, j:I
    :goto_0
    iget v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->kCount:I

    if-ge v7, v0, :cond_2

    .line 148
    sget-object v0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->ORIGINAL:[[C

    aget-object v3, v0, v7

    .line 149
    .local v3, orig:[C
    array-length v0, v3

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 147
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 152
    :cond_1
    iget-object v1, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    array-length v5, v3

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->charsEquals(Ljava/lang/CharSequence;I[CII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->REPLACEMENT:[[C

    aget-object v0, v0, v7

    aget-char v6, v0, v4

    .line 157
    .end local v3           #orig:[C
    .end local v6           #c:C
    :cond_2
    return v6
.end method

.method private charsEquals(Ljava/lang/CharSequence;I[CII)Z
    .locals 3
    .parameter "s1"
    .parameter "st1"
    .parameter "s2"
    .parameter "st2"
    .parameter "len"

    .prologue
    .line 129
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p5, :cond_1

    .line 130
    add-int v1, p2, v0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int v2, p4, v0

    aget-char v2, p3, v2

    if-eq v1, v2, :cond_0

    .line 131
    const/4 v1, 0x0

    .line 133
    :goto_1
    return v1

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private charsEquals([CI[CII)Z
    .locals 3
    .parameter "s1"
    .parameter "st1"
    .parameter "s2"
    .parameter "st2"
    .parameter "len"

    .prologue
    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p5, :cond_1

    .line 139
    add-int v1, p2, v0

    aget-char v1, p1, v1

    add-int v2, p4, v0

    aget-char v2, p3, v2

    if-eq v1, v2, :cond_0

    .line 140
    const/4 v1, 0x0

    .line 142
    :goto_1
    return v1

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getCharsInner(II[CI)V
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "off"

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 162
    sub-int v0, p2, p1

    add-int v7, v0, p4

    .line 163
    .local v7, offend:I
    move v4, p4

    .local v4, i:I
    :goto_0
    if-ge v4, v7, :cond_3

    .line 164
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    iget v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->kCount:I

    if-ge v6, v0, :cond_2

    .line 165
    sget-object v0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->ORIGINAL:[[C

    aget-object v1, v0, v6

    .line 166
    .local v1, orig:[C
    array-length v0, v1

    add-int/2addr v0, v4

    if-le v0, v7, :cond_1

    .line 164
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 169
    :cond_1
    array-length v5, v1

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->charsEquals([CI[CII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->REPLACEMENT:[[C

    aget-object v0, v0, v6

    aget-char v0, v0, v2

    aput-char v0, p3, v4

    .line 171
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v4, v0

    .line 163
    .end local v1           #orig:[C
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    .end local v6           #j:I
    :cond_3
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 4
    .parameter "i"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->charAtInner(I)C

    move-result v0

    .line 185
    .local v0, c:C
    iget-object v3, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    array-length v2, v3

    .line 186
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 187
    iget-object v3, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    aget-char v3, v3, v1

    if-ne v0, v3, :cond_0

    .line 188
    iget-object v3, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mReplacement:[C

    aget-char v0, v3, v1

    .line 186
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_1
    return v0
.end method

.method public getChars(II[CI)V
    .locals 6
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "off"

    .prologue
    .line 210
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->getCharsInner(II[CI)V

    .line 211
    sub-int v5, p2, p1

    add-int v4, v5, p4

    .line 212
    .local v4, offend:I
    iget-object v5, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    array-length v3, v5

    .line 214
    .local v3, n:I
    move v1, p4

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 215
    aget-char v0, p3, v1

    .line 217
    .local v0, c:C
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 218
    iget-object v5, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    aget-char v5, v5, v2

    if-ne v0, v5, :cond_0

    .line 219
    iget-object v5, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mReplacement:[C

    aget-char v5, v5, v2

    aput-char v5, p3, v1

    .line 217
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v0           #c:C
    .end local v2           #j:I
    :cond_2
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 196
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .line 198
    .local v0, c:[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->getChars(II[CI)V

    .line 199
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 205
    .local v0, c:[C
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->getChars(II[CI)V

    .line 206
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

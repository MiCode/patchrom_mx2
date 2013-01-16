.class public Lcom/meizu/widget/AlphabetIndexerPlus;
.super Ljava/lang/Object;
.source "AlphabetIndexerPlus.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field private mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetLength:I

.field private mCollator:Ljava/text/Collator;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter
    .parameter "alphabet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/meizu/widget/AlphabetIndexerPlus;,"Lcom/meizu/widget/AlphabetIndexerPlus<TT;>;"
    .local p1, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mList:Ljava/util/List;

    .line 61
    iput-object p2, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabet:Ljava/lang/CharSequence;

    .line 62
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabetLength:I

    .line 63
    iget v1, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabetArray:[Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabetLength:I

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 69
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mCollator:Ljava/text/Collator;

    .line 70
    iget-object v1, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mCollator:Ljava/text/Collator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 71
    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "word"
    .parameter "letter"

    .prologue
    .line 78
    .local p0, this:Lcom/meizu/widget/AlphabetIndexerPlus;,"Lcom/meizu/widget/AlphabetIndexerPlus<TT;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const-string v0, " "

    .line 84
    .local v0, firstLetter:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, v0, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 81
    .end local v0           #firstLetter:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #firstLetter:Ljava/lang/String;
    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 14
    .parameter "sectionIndex"

    .prologue
    .line 101
    .local p0, this:Lcom/meizu/widget/AlphabetIndexerPlus;,"Lcom/meizu/widget/AlphabetIndexerPlus<TT;>;"
    iget-object v0, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 103
    .local v0, alphaMap:Landroid/util/SparseIntArray;
    iget-object v12, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mList:Ljava/util/List;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabet:Ljava/lang/CharSequence;

    if-nez v12, :cond_2

    .line 104
    :cond_0
    const/4 v7, 0x0

    .line 202
    :cond_1
    :goto_0
    return v7

    .line 109
    :cond_2
    if-gtz p1, :cond_3

    .line 110
    const/4 v7, 0x0

    goto :goto_0

    .line 112
    :cond_3
    iget v12, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabetLength:I

    if-lt p1, v12, :cond_4

    .line 113
    iget v12, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabetLength:I

    add-int/lit8 p1, v12, -0x1

    .line 116
    :cond_4
    iget-object v12, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    .line 117
    .local v1, count:I
    const/4 v10, 0x0

    .line 118
    .local v10, start:I
    move v4, v1

    .line 121
    .local v4, end:I
    iget-object v12, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v12, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 122
    .local v6, letter:C
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    .line 123
    .local v11, targetLetter:Ljava/lang/String;
    move v5, v6

    .line 126
    .local v5, key:I
    const/high16 v12, -0x8000

    const/high16 v13, -0x8000

    invoke-virtual {v0, v5, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .local v7, pos:I
    if-eq v12, v7, :cond_5

    .line 130
    if-gez v7, :cond_1

    .line 131
    neg-int v7, v7

    .line 132
    move v4, v7

    .line 140
    :cond_5
    if-lez p1, :cond_6

    .line 141
    iget-object v12, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v13, p1, -0x1

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 143
    .local v8, prevLetter:I
    const/high16 v12, -0x8000

    invoke-virtual {v0, v8, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 144
    .local v9, prevLetterPos:I
    const/high16 v12, -0x8000

    if-eq v9, v12, :cond_6

    .line 145
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 151
    .end local v8           #prevLetter:I
    .end local v9           #prevLetterPos:I
    :cond_6
    add-int v12, v4, v10

    div-int/lit8 v7, v12, 0x2

    .line 153
    :goto_1
    if-ge v7, v4, :cond_7

    .line 158
    iget-object v12, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mList:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, curName:Ljava/lang/String;
    if-nez v2, :cond_9

    .line 160
    if-nez v7, :cond_8

    .line 201
    .end local v2           #curName:Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 163
    .restart local v2       #curName:Ljava/lang/String;
    :cond_8
    add-int/lit8 v7, v7, -0x1

    .line 164
    goto :goto_1

    .line 167
    :cond_9
    invoke-virtual {p0, v2, v11}, Lcom/meizu/widget/AlphabetIndexerPlus;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 168
    .local v3, diff:I
    if-eqz v3, :cond_c

    .line 180
    if-gez v3, :cond_a

    .line 181
    add-int/lit8 v10, v7, 0x1

    .line 182
    if-lt v10, v1, :cond_b

    .line 183
    move v7, v1

    .line 184
    goto :goto_2

    .line 187
    :cond_a
    move v4, v7

    .line 199
    :cond_b
    :goto_3
    add-int v12, v10, v4

    div-int/lit8 v7, v12, 0x2

    .line 200
    goto :goto_1

    .line 191
    :cond_c
    if-eq v10, v7, :cond_7

    .line 196
    move v4, v7

    goto :goto_3
.end method

.method public getSectionForPosition(I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 209
    .local p0, this:Lcom/meizu/widget/AlphabetIndexerPlus;,"Lcom/meizu/widget/AlphabetIndexerPlus<TT;>;"
    iget-object v6, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, curName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v6, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabetLength:I

    if-ge v2, v6, :cond_3

    .line 211
    iget-object v6, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 212
    .local v4, letter:C
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, targetLetter:Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/meizu/widget/AlphabetIndexerPlus;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 214
    .local v0, compareResult:I
    if-nez v0, :cond_0

    .line 230
    .end local v0           #compareResult:I
    .end local v2           #i:I
    .end local v4           #letter:C
    .end local v5           #targetLetter:Ljava/lang/String;
    :goto_1
    return v2

    .line 216
    .restart local v0       #compareResult:I
    .restart local v2       #i:I
    .restart local v4       #letter:C
    .restart local v5       #targetLetter:Ljava/lang/String;
    :cond_0
    if-gez v0, :cond_2

    .line 220
    add-int/lit8 v3, v2, -0x1

    .local v3, j:I
    :goto_2
    if-lez v3, :cond_2

    .line 222
    iget-object v6, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v6, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 223
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 224
    invoke-virtual {p0, v1, v5}, Lcom/meizu/widget/AlphabetIndexerPlus;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 225
    if-lez v0, :cond_1

    move v2, v3

    .line 226
    goto :goto_1

    .line 220
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 210
    .end local v3           #j:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    .end local v0           #compareResult:I
    .end local v4           #letter:C
    .end local v5           #targetLetter:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    .local p0, this:Lcom/meizu/widget/AlphabetIndexerPlus;,"Lcom/meizu/widget/AlphabetIndexerPlus<TT;>;"
    iget-object v0, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Lcom/meizu/widget/AlphabetIndexerPlus;,"Lcom/meizu/widget/AlphabetIndexerPlus<TT;>;"
    .local p1, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mList:Ljava/util/List;

    .line 94
    iget-object v0, p0, Lcom/meizu/widget/AlphabetIndexerPlus;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 95
    return-void
.end method

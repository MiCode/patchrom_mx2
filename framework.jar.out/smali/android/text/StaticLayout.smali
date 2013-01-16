.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$BreakType;
    }
.end annotation


# static fields
.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_COMMA:C = ','

.field private static final CHAR_DOT:C = '.'

.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SEMICOLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CH_NON_ENDERS:Ljava/lang/String; = "$\u00a5\uffe5\uff04\uffe1(\u3014\ufe3f\ufe5d[\ufe39\u300c\u2018{\u3010\ufe41\u201c\uff08\ufe3b\u300e\u301d\ufe35\u300a\ufe43\u2035\uff5b\ufe3d\ufe59\ufe37\u3008\ufe5b(\u300a\uff10\uff17[\u300c\uff11\uff18{\u300e\uff12\uff19\u2018\u3016\uff13\uff3b\u201c\u3010\uff14\uff58\u3014\uff08\uff15\u3008\uff0e\uff16"

.field private static final CH_NON_STARTERS:Ljava/lang/String; = "\u2103%\uffe0\uff05\u2030!\uff1a\u2013\u300b)\uff1f\ufe31\ufe3e,\uff01\u2014\u3009.\ufe30\ufe33\ufe40:\u2026\u2574\u300d;\u2025\ufe34\ufe42?\ufe50\ufe4f\u300f]\ufe51\uff09\ufe44}\ufe52\ufe36\ufe5a\uff0c\u00b7\uff5d\ufe5c\u3001\ufe54\ufe38\u25cf\u3002\ufe55\u3015\u2019\uff0e\ufe56\ufe3a\u201d\u2027\ufe57\u3011\u301e\uff1b\uff5c\ufe3c\u2032!\u00b7\u201d\uff07)\u02c9\u3015\uff09,\u02c7\u3009\uff0c.\u00a8\u300b\uff0e:\u3003\u300d\uff1a;\u3005\u300f\uff1b?\u2014\u3017\uff1f]\uff5e\u3011\uff3d}\u2016\u2236\uff40\u3001\u2026\u3000\uff2f\u3002\u2019\uff02\uff5d"

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final EN_NON_ENDERS:Ljava/lang/String; = "([{\u00ab"

.field private static final EN_NON_STARTERS:Ljava/lang/String; = ")]}%\u00b0\u00b7\u00bb!?/"

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 150
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1073
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1102
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 152
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 153
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 154
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 156
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 69
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 91
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 81
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"
    .parameter "maxLines"

    .prologue
    .line 105
    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1073
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1102
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 120
    if-eqz p11, :cond_2

    .line 121
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 123
    .local v14, e:Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 124
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 125
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 126
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 128
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 134
    .end local v14           #e:Landroid/text/Layout$Ellipsizer;
    :goto_1
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 135
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 137
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 139
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 141
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 145
    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 147
    return-void

    .line 105
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 130
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 131
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 49
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 60
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 62
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 20
    .parameter "lineStart"
    .parameter "lineEnd"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "avail"
    .parameter "where"
    .parameter "line"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "forceEllipsis"

    .prologue
    .line 846
    cmpg-float v17, p8, p5

    if-gtz v17, :cond_0

    if-nez p10, :cond_0

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x3

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 943
    :goto_0
    return-void

    .line 853
    :cond_0
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isTruncateAtSmall(Landroid/text/TextUtils$TruncateAt;)Z

    move-result v17

    if-eqz v17, :cond_4

    sget-object v17, Landroid/text/StaticLayout;->ELLIPSIS_TWO_DOTS:[C

    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 856
    .local v6, ellipsisWidth:F
    const/4 v5, 0x0

    .line 857
    .local v5, ellipsisStart:I
    const/4 v4, 0x0

    .line 858
    .local v4, ellipsisCount:I
    sub-int v10, p2, p1

    .line 861
    .local v10, len:I
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->START_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 862
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 863
    const/4 v15, 0x0

    .line 866
    .local v15, sum:F
    move v7, v10

    .local v7, i:I
    :goto_2
    if-ltz v7, :cond_2

    .line 867
    add-int/lit8 v17, v7, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 869
    .local v16, w:F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_5

    .line 876
    .end local v16           #w:F
    :cond_2
    const/4 v5, 0x0

    .line 877
    move v4, v7

    .line 941
    .end local v7           #i:I
    .end local v15           #sum:F
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x3

    aput v5, v17, v18

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    aput v4, v17, v18

    goto :goto_0

    .line 853
    .end local v4           #ellipsisCount:I
    .end local v5           #ellipsisStart:I
    .end local v6           #ellipsisWidth:F
    .end local v10           #len:I
    :cond_4
    sget-object v17, Landroid/text/StaticLayout;->ELLIPSIS_NORMAL:[C

    goto :goto_1

    .line 873
    .restart local v4       #ellipsisCount:I
    .restart local v5       #ellipsisStart:I
    .restart local v6       #ellipsisWidth:F
    .restart local v7       #i:I
    .restart local v10       #len:I
    .restart local v15       #sum:F
    .restart local v16       #w:F
    :cond_5
    add-float v15, v15, v16

    .line 866
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 879
    .end local v7           #i:I
    .end local v15           #sum:F
    .end local v16           #w:F
    :cond_6
    const-string v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 880
    const-string v17, "StaticLayout"

    const-string v18, "Start Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 883
    :cond_7
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_8

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_8

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 885
    :cond_8
    const/4 v15, 0x0

    .line 888
    .restart local v15       #sum:F
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    if-ge v7, v10, :cond_9

    .line 889
    add-int v17, v7, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 891
    .restart local v16       #w:F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_a

    .line 898
    .end local v16           #w:F
    :cond_9
    move v5, v7

    .line 899
    sub-int v4, v10, v7

    .line 900
    if-eqz p10, :cond_3

    if-nez v4, :cond_3

    if-lez v10, :cond_3

    .line 901
    add-int/lit8 v5, v10, -0x1

    .line 902
    const/4 v4, 0x1

    goto :goto_3

    .line 895
    .restart local v16       #w:F
    :cond_a
    add-float v15, v15, v16

    .line 888
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 906
    .end local v7           #i:I
    .end local v15           #sum:F
    .end local v16           #w:F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 907
    const/4 v11, 0x0

    .local v11, lsum:F
    const/4 v14, 0x0

    .line 908
    .local v14, rsum:F
    const/4 v9, 0x0

    .local v9, left:I
    move v13, v10

    .line 910
    .local v13, right:I
    sub-float v17, p5, v6

    const/high16 v18, 0x4000

    div-float v12, v17, v18

    .line 911
    .local v12, ravail:F
    move v13, v10

    :goto_5
    if-ltz v13, :cond_c

    .line 912
    add-int/lit8 v17, v13, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 914
    .restart local v16       #w:F
    add-float v17, v16, v14

    cmpl-float v17, v17, v12

    if-lez v17, :cond_e

    .line 921
    .end local v16           #w:F
    :cond_c
    sub-float v17, p5, v6

    sub-float v8, v17, v14

    .line 922
    .local v8, lavail:F
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v13, :cond_d

    .line 923
    add-int v17, v9, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 925
    .restart local v16       #w:F
    add-float v17, v16, v11

    cmpl-float v17, v17, v8

    if-lez v17, :cond_f

    .line 932
    .end local v16           #w:F
    :cond_d
    move v5, v9

    .line 933
    sub-int v4, v13, v9

    .line 934
    goto/16 :goto_3

    .line 918
    .end local v8           #lavail:F
    .restart local v16       #w:F
    :cond_e
    add-float v14, v14, v16

    .line 911
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 929
    .restart local v8       #lavail:F
    :cond_f
    add-float v11, v11, v16

    .line 922
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 935
    .end local v8           #lavail:F
    .end local v9           #left:I
    .end local v11           #lsum:F
    .end local v12           #ravail:F
    .end local v13           #right:I
    .end local v14           #rsum:F
    .end local v16           #w:F
    :cond_10
    const-string v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 936
    const-string v17, "StaticLayout"

    const-string v18, "Middle Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static final getBreakType([CIIIZ)Landroid/text/StaticLayout$BreakType;
    .locals 6
    .parameter "chs"
    .parameter "index"
    .parameter "st"
    .parameter "en"
    .parameter "hasIdeographic"

    .prologue
    const/16 v5, 0x2e80

    const/4 v3, 0x0

    .line 646
    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 647
    :cond_0
    array-length v4, p0

    if-le p3, v4, :cond_1

    array-length p3, p0

    .line 648
    :cond_1
    if-lt p1, p2, :cond_2

    if-lt p1, p3, :cond_3

    .line 649
    :cond_2
    sget-object v3, Landroid/text/StaticLayout$BreakType;->NONE:Landroid/text/StaticLayout$BreakType;

    .line 692
    :goto_0
    return-object v3

    .line 651
    :cond_3
    aget-char v0, p0, p1

    .line 653
    .local v0, c:C
    const/16 v4, 0x20

    if-eq v0, v4, :cond_4

    const/16 v4, 0x9

    if-ne v0, v4, :cond_5

    .line 654
    :cond_4
    sget-object v3, Landroid/text/StaticLayout$BreakType;->EN:Landroid/text/StaticLayout$BreakType;

    goto :goto_0

    .line 656
    :cond_5
    add-int/lit8 v4, p1, 0x1

    if-ge v4, p3, :cond_7

    add-int/lit8 v4, p1, 0x1

    aget-char v2, p0, v4

    .line 658
    .local v2, c2:C
    :goto_1
    const/16 v4, 0x2f

    if-eq v0, v4, :cond_6

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_8

    :cond_6
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 659
    sget-object v3, Landroid/text/StaticLayout$BreakType;->NONE:Landroid/text/StaticLayout$BreakType;

    goto :goto_0

    .end local v2           #c2:C
    :cond_7
    move v2, v3

    .line 656
    goto :goto_1

    .line 662
    .restart local v2       #c2:C
    :cond_8
    add-int/lit8 v4, p1, -0x1

    if-lt v4, p2, :cond_a

    add-int/lit8 v4, p1, -0x1

    aget-char v1, p0, v4

    .line 664
    .local v1, c0:C
    :goto_2
    const/16 v4, 0x2e

    if-eq v0, v4, :cond_9

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_9

    const/16 v4, 0x3a

    if-eq v0, v4, :cond_9

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_b

    :cond_9
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 666
    sget-object v3, Landroid/text/StaticLayout$BreakType;->NONE:Landroid/text/StaticLayout$BreakType;

    goto :goto_0

    .end local v1           #c0:C
    :cond_a
    move v1, v3

    .line 662
    goto :goto_2

    .line 670
    .restart local v1       #c0:C
    :cond_b
    const-string v4, "([{\u00ab"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_c

    const-string v4, ")]}%\u00b0\u00b7\u00bb!?/"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_c

    const-string v4, "$\u00a5\uffe5\uff04\uffe1(\u3014\ufe3f\ufe5d[\ufe39\u300c\u2018{\u3010\ufe41\u201c\uff08\ufe3b\u300e\u301d\ufe35\u300a\ufe43\u2035\uff5b\ufe3d\ufe59\ufe37\u3008\ufe5b(\u300a\uff10\uff17[\u300c\uff11\uff18{\u300e\uff12\uff19\u2018\u3016\uff13\uff3b\u201c\u3010\uff14\uff58\u3014\uff08\uff15\u3008\uff0e\uff16"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_c

    const-string/jumbo v4, "\u2103%\uffe0\uff05\u2030!\uff1a\u2013\u300b)\uff1f\ufe31\ufe3e,\uff01\u2014\u3009.\ufe30\ufe33\ufe40:\u2026\u2574\u300d;\u2025\ufe34\ufe42?\ufe50\ufe4f\u300f]\ufe51\uff09\ufe44}\ufe52\ufe36\ufe5a\uff0c\u00b7\uff5d\ufe5c\u3001\ufe54\ufe38\u25cf\u3002\ufe55\u3015\u2019\uff0e\ufe56\ufe3a\u201d\u2027\ufe57\u3011\u301e\uff1b\uff5c\ufe3c\u2032!\u00b7\u201d\uff07)\u02c9\u3015\uff09,\u02c7\u3009\uff0c.\u00a8\u300b\uff0e:\u3003\u300d\uff1a;\u3005\u300f\uff1b?\u2014\u3017\uff1f]\uff5e\u3011\uff3d}\u2016\u2236\uff40\u3001\u2026\u3000\uff2f\u3002\u2019\uff02\uff5d"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_d

    .line 672
    :cond_c
    sget-object v3, Landroid/text/StaticLayout$BreakType;->NONE:Landroid/text/StaticLayout$BreakType;

    goto :goto_0

    .line 676
    :cond_d
    if-lt v0, v5, :cond_f

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 677
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Landroid/text/StaticLayout$BreakType;->CH:Landroid/text/StaticLayout$BreakType;

    goto/16 :goto_0

    :cond_e
    sget-object v3, Landroid/text/StaticLayout$BreakType;->SYM:Landroid/text/StaticLayout$BreakType;

    goto/16 :goto_0

    .line 679
    :cond_f
    if-lt v2, v5, :cond_11

    invoke-static {v2, v3}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 680
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Landroid/text/StaticLayout$BreakType;->CH:Landroid/text/StaticLayout$BreakType;

    goto/16 :goto_0

    :cond_10
    sget-object v3, Landroid/text/StaticLayout$BreakType;->SYM:Landroid/text/StaticLayout$BreakType;

    goto/16 :goto_0

    .line 684
    :cond_11
    if-eqz p4, :cond_12

    .line 685
    sget-object v3, Landroid/text/StaticLayout$BreakType;->CH:Landroid/text/StaticLayout$BreakType;

    goto/16 :goto_0

    .line 689
    :cond_12
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 690
    sget-object v3, Landroid/text/StaticLayout$BreakType;->NONE:Landroid/text/StaticLayout$BreakType;

    goto/16 :goto_0

    .line 692
    :cond_13
    sget-object v3, Landroid/text/StaticLayout$BreakType;->SYM:Landroid/text/StaticLayout$BreakType;

    goto/16 :goto_0
.end method

.method private static insideSpans(Landroid/text/Spanned;I[Ljava/lang/Object;)Z
    .locals 6
    .parameter "spanned"
    .parameter "index"
    .parameter "spans"

    .prologue
    const/4 v4, 0x0

    .line 700
    if-eqz p2, :cond_0

    array-length v5, p2

    if-nez v5, :cond_1

    .line 709
    :cond_0
    :goto_0
    return v4

    .line 703
    :cond_1
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 704
    .local v3, span:Ljava/lang/Object;
    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-lt p1, v5, :cond_2

    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ge p1, v5, :cond_2

    .line 706
    const/4 v4, 0x1

    goto :goto_0

    .line 703
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 529
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    .line 606
    :cond_0
    :goto_0
    return v0

    .line 532
    :cond_1
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_0

    .line 535
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_2

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_2

    .line 536
    if-nez p1, :cond_0

    .line 537
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 554
    goto :goto_0

    .line 559
    :cond_2
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_3

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_3

    .line 560
    if-nez p1, :cond_0

    .line 561
    sparse-switch p0, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 579
    goto :goto_0

    .line 584
    :cond_3
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_4

    const/16 v2, 0x4db5

    if-le p0, v2, :cond_0

    .line 587
    :cond_4
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_5

    const v2, 0x9fbb

    if-le p0, v2, :cond_0

    .line 590
    :cond_5
    const v2, 0xf900

    if-lt p0, v2, :cond_6

    const v2, 0xfad9

    if-le p0, v2, :cond_0

    .line 593
    :cond_6
    const v2, 0xa000

    if-lt p0, v2, :cond_7

    const v2, 0xa48f

    if-le p0, v2, :cond_0

    .line 596
    :cond_7
    const v2, 0xa490

    if-lt p0, v2, :cond_8

    const v2, 0xa4cf

    if-le p0, v2, :cond_0

    .line 599
    :cond_8
    const v2, 0xfe62

    if-lt p0, v2, :cond_9

    const v2, 0xfe66

    if-le p0, v2, :cond_0

    .line 602
    :cond_9
    const v2, 0xff10

    if-lt p0, v2, :cond_a

    const v2, 0xff19

    if-le p0, v2, :cond_0

    :cond_a
    invoke-static {p0, p1}, Landroid/text/StaticLayout$Injector;->isIdeographic(CZ)Z

    move-result v0

    .line 606
    goto :goto_0

    .line 537
    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 561
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "above"
    .parameter "below"
    .parameter "top"
    .parameter "bottom"
    .parameter "v"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "chooseHt"
    .parameter "chooseHtv"
    .parameter "fm"
    .parameter "hasTabOrEmoji"
    .parameter "needMultiply"
    .parameter "chdirs"
    .parameter "dir"
    .parameter "easy"
    .parameter "bufEnd"
    .parameter "includePad"
    .parameter "trackPad"
    .parameter "chs"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "ellipsize"
    .parameter "ellipsisWidth"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "moreChars"

    .prologue
    .line 723
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 724
    .local v22, j:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 725
    .local v26, off:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 726
    .local v27, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v24, v0

    .line 728
    .local v24, lines:[I
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 729
    add-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v25

    .line 730
    .local v25, nlen:I
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 731
    .local v19, grow:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 732
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 733
    move-object/from16 v24, v19

    .line 735
    move/from16 v0, v25

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v20, v0

    .line 736
    .local v20, grow2:[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 738
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 741
    .end local v19           #grow:[I
    .end local v20           #grow2:[Landroid/text/Layout$Directions;
    .end local v25           #nlen:I
    :cond_0
    if-eqz p11, :cond_3

    .line 742
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 743
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 744
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 745
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 747
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 748
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 749
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 747
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 753
    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 757
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 758
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 759
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 760
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 763
    .end local v21           #i:I
    :cond_3
    if-nez v22, :cond_5

    .line 764
    if-eqz p21, :cond_4

    .line 765
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 768
    :cond_4
    if-eqz p20, :cond_5

    .line 769
    move/from16 p4, p6

    .line 772
    :cond_5
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_7

    .line 773
    if-eqz p21, :cond_6

    .line 774
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 777
    :cond_6
    if-eqz p20, :cond_7

    .line 778
    move/from16 p5, p7

    .line 784
    :cond_7
    if-eqz p15, :cond_10

    .line 785
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v15, v2

    .line 786
    .local v15, ex:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_f

    .line 787
    const-wide/high16 v2, 0x3fe0

    add-double/2addr v2, v15

    double-to-int v0, v2

    move/from16 v17, v0

    .line 795
    .end local v15           #ex:D
    .local v17, extra:I
    :goto_2
    add-int/lit8 v2, v26, 0x0

    aput p2, v24, v2

    .line 796
    add-int/lit8 v2, v26, 0x1

    aput p8, v24, v2

    .line 797
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v17

    aput v3, v24, v2

    .line 799
    sub-int v2, p5, p4

    add-int v2, v2, v17

    add-int p8, p8, v2

    .line 800
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    .line 801
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    .line 803
    if-eqz p14, :cond_8

    .line 804
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 806
    :cond_8
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 807
    sget-object v23, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 811
    .local v23, linedirs:Landroid/text/Layout$Directions;
    if-eqz p18, :cond_11

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v22

    .line 818
    :goto_3
    if-eqz p25, :cond_e

    .line 821
    if-nez v22, :cond_12

    const/16 v18, 0x1

    .line 822
    .local v18, firstLine:Z
    :goto_4
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_13

    const/4 v13, 0x1

    .line 823
    .local v13, currentLineIsTheLastVisibleOne:Z
    :goto_5
    if-eqz p29, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_14

    const/4 v12, 0x1

    .line 825
    .local v12, forceEllipsis:Z
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    if-nez p29, :cond_a

    :cond_9
    if-eqz v18, :cond_b

    if-nez p29, :cond_b

    :cond_a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_d

    :cond_b
    if-nez v18, :cond_15

    if-nez v13, :cond_c

    if-nez p29, :cond_15

    :cond_c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_15

    :cond_d
    const/4 v14, 0x1

    .line 830
    .local v14, doEllipsis:Z
    :goto_7
    if-eqz v14, :cond_e

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 831
    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 837
    .end local v12           #forceEllipsis:Z
    .end local v13           #currentLineIsTheLastVisibleOne:Z
    .end local v14           #doEllipsis:Z
    .end local v18           #firstLine:Z
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 838
    return p8

    .line 789
    .end local v17           #extra:I
    .end local v23           #linedirs:Landroid/text/Layout$Directions;
    .restart local v15       #ex:D
    :cond_f
    neg-double v2, v15

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    .restart local v17       #extra:I
    goto/16 :goto_2

    .line 792
    .end local v15           #ex:D
    .end local v17           #extra:I
    :cond_10
    const/16 v17, 0x0

    .restart local v17       #extra:I
    goto/16 :goto_2

    .line 814
    .restart local v23       #linedirs:Landroid/text/Layout$Directions;
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto/16 :goto_3

    .line 821
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 822
    .restart local v18       #firstLine:Z
    :cond_13
    const/4 v13, 0x0

    goto :goto_5

    .line 823
    .restart local v13       #currentLineIsTheLastVisibleOne:Z
    :cond_14
    const/4 v12, 0x0

    goto :goto_6

    .line 825
    .restart local v12       #forceEllipsis:Z
    :cond_15
    const/4 v14, 0x0

    goto :goto_7
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1054
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 132
    .parameter "source"
    .parameter "bufStart"
    .parameter "bufEnd"
    .parameter "paint"
    .parameter "outerWidth"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "ellipsizedWidth"
    .parameter "ellipsize"

    .prologue
    .line 165
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 167
    const/4 v13, 0x0

    .line 168
    .local v13, v:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_3

    :cond_0
    const/16 v20, 0x1

    .line 170
    .local v20, needMultiply:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    .line 171
    .local v18, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v17, 0x0

    .line 173
    .local v17, chooseHtv:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v111, v0

    .line 175
    .local v111, measured:Landroid/text/MeasuredText;
    const/16 v124, 0x0

    .line 176
    .local v124, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object/from16 v124, p1

    .line 177
    check-cast v124, Landroid/text/Spanned;

    .line 179
    :cond_1
    const/16 v80, 0x1

    .line 182
    .local v80, DEFAULT_DIR:I
    move/from16 v29, p2

    .local v29, paraStart:I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, p3

    if-gt v0, v1, :cond_29

    .line 183
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v38

    .line 184
    .local v38, paraEnd:I
    if-gez v38, :cond_4

    .line 185
    move/from16 v38, p3

    .line 189
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v97, v5, 0x1

    .line 190
    .local v97, firstWidthLineLimit:I
    move/from16 v96, p5

    .line 191
    .local v96, firstWidth:I
    move/from16 v119, p5

    .line 193
    .local v119, restWidth:I
    const/16 v16, 0x0

    .line 194
    .local v16, chooseHt:[Landroid/text/style/LineHeightSpan;
    const/16 v128, 0x0

    .line 196
    .local v128, urlSpans:[Landroid/text/style/URLSpan;
    if-eqz v124, :cond_a

    .line 197
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v124

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v120

    check-cast v120, [Landroid/text/style/LeadingMarginSpan;

    .line 199
    .local v120, sp:[Landroid/text/style/LeadingMarginSpan;
    const/16 v106, 0x0

    .local v106, i:I
    :goto_3
    move-object/from16 v0, v120

    array-length v5, v0

    move/from16 v0, v106

    if-ge v0, v5, :cond_5

    .line 200
    aget-object v108, v120, v106

    .line 201
    .local v108, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v120, v106

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v96, v96, v5

    .line 202
    aget-object v5, v120, v106

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v119, v119, v5

    .line 208
    move-object/from16 v0, v108

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_2

    move-object/from16 v109, v108

    .line 209
    check-cast v109, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 210
    .local v109, lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v124

    move-object/from16 v1, v109

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v110

    .line 211
    .local v110, lmsFirstLine:I
    invoke-interface/range {v109 .. v109}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v97, v110, v5

    .line 199
    .end local v109           #lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v110           #lmsFirstLine:I
    :cond_2
    add-int/lit8 v106, v106, 0x1

    goto :goto_3

    .line 168
    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v17           #chooseHtv:[I
    .end local v18           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v20           #needMultiply:Z
    .end local v29           #paraStart:I
    .end local v38           #paraEnd:I
    .end local v80           #DEFAULT_DIR:I
    .end local v96           #firstWidth:I
    .end local v97           #firstWidthLineLimit:I
    .end local v106           #i:I
    .end local v108           #lms:Landroid/text/style/LeadingMarginSpan;
    .end local v111           #measured:Landroid/text/MeasuredText;
    .end local v119           #restWidth:I
    .end local v120           #sp:[Landroid/text/style/LeadingMarginSpan;
    .end local v124           #spanned:Landroid/text/Spanned;
    .end local v128           #urlSpans:[Landroid/text/style/URLSpan;
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 187
    .restart local v17       #chooseHtv:[I
    .restart local v18       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20       #needMultiply:Z
    .restart local v29       #paraStart:I
    .restart local v38       #paraEnd:I
    .restart local v80       #DEFAULT_DIR:I
    .restart local v111       #measured:Landroid/text/MeasuredText;
    .restart local v124       #spanned:Landroid/text/Spanned;
    :cond_4
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .line 215
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v96       #firstWidth:I
    .restart local v97       #firstWidthLineLimit:I
    .restart local v106       #i:I
    .restart local v119       #restWidth:I
    .restart local v120       #sp:[Landroid/text/style/LeadingMarginSpan;
    .restart local v128       #urlSpans:[Landroid/text/style/URLSpan;
    :cond_5
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v124

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    check-cast v16, [Landroid/text/style/LineHeightSpan;

    .line 217
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v16

    array-length v5, v0

    if-eqz v5, :cond_9

    .line 218
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_7

    .line 220
    :cond_6
    move-object/from16 v0, v16

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 224
    :cond_7
    const/16 v106, 0x0

    :goto_4
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v106

    if-ge v0, v5, :cond_9

    .line 225
    aget-object v5, v16, v106

    move-object/from16 v0, v124

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v112

    .line 227
    .local v112, o:I
    move/from16 v0, v112

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 231
    move-object/from16 v0, p0

    move/from16 v1, v112

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v106

    .line 224
    :goto_5
    add-int/lit8 v106, v106, 0x1

    goto :goto_4

    .line 235
    :cond_8
    aput v13, v17, v106

    goto :goto_5

    .line 239
    .end local v112           #o:I
    :cond_9
    const-class v5, Landroid/text/style/URLSpan;

    move-object/from16 v0, v124

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v128

    .end local v128           #urlSpans:[Landroid/text/style/URLSpan;
    check-cast v128, [Landroid/text/style/URLSpan;

    .line 242
    .end local v106           #i:I
    .end local v120           #sp:[Landroid/text/style/LeadingMarginSpan;
    .restart local v128       #urlSpans:[Landroid/text/style/URLSpan;
    :cond_a
    move-object/from16 v0, v111

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v38

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 243
    move-object/from16 v0, v111

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v27, v0

    .line 244
    .local v27, chs:[C
    move-object/from16 v0, v111

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v28, v0

    .line 245
    .local v28, widths:[F
    move-object/from16 v0, v111

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v21, v0

    .line 246
    .local v21, chdirs:[B
    move-object/from16 v0, v111

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v22, v0

    .line 247
    .local v22, dir:I
    move-object/from16 v0, v111

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v23, v0

    .line 249
    .local v23, easy:Z
    move/from16 v131, v96

    .line 251
    .local v131, width:I
    const/16 v62, 0x0

    .line 253
    .local v62, w:F
    move/from16 v7, v29

    .line 254
    .local v7, here:I
    const/16 v104, 0x0

    .line 258
    .local v104, hasIdeographic:Z
    move/from16 v113, v29

    .line 259
    .local v113, ok:I
    move/from16 v118, v62

    .line 260
    .local v118, okWidth:F
    const/16 v114, 0x0

    .local v114, okAscent:I
    const/16 v116, 0x0

    .local v116, okDescent:I
    const/16 v117, 0x0

    .local v117, okTop:I
    const/16 v115, 0x0

    .line 264
    .local v115, okBottom:I
    move/from16 v98, v29

    .line 265
    .local v98, fit:I
    move/from16 v99, v62

    .line 266
    .local v99, fitWidth:F
    const/16 v39, 0x0

    .local v39, fitAscent:I
    const/16 v40, 0x0

    .local v40, fitDescent:I
    const/16 v41, 0x0

    .local v41, fitTop:I
    const/16 v42, 0x0

    .line 268
    .local v42, fitBottom:I
    const/16 v19, 0x0

    .line 269
    .local v19, hasTabOrEmoji:Z
    const/16 v105, 0x0

    .line 270
    .local v105, hasTab:Z
    const/16 v126, 0x0

    .line 272
    .local v126, tabStops:Landroid/text/Layout$TabStops;
    move/from16 v123, v29

    .local v123, spanStart:I
    :goto_6
    move/from16 v0, v123

    move/from16 v1, v38

    if-ge v0, v1, :cond_26

    .line 274
    if-nez v124, :cond_11

    .line 275
    move/from16 v121, v38

    .line 276
    .local v121, spanEnd:I
    sub-int v122, v121, v123

    .line 277
    .local v122, spanLen:I
    move-object/from16 v0, v111

    move-object/from16 v1, p4

    move/from16 v2, v122

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 288
    :goto_7
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v103, v0

    .line 289
    .local v103, fmTop:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v101, v0

    .line 290
    .local v101, fmBottom:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v100, v0

    .line 291
    .local v100, fmAscent:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v102, v0

    .line 293
    .local v102, fmDescent:I
    move/from16 v107, v123

    .local v107, j:I
    :goto_8
    move/from16 v0, v107

    move/from16 v1, v121

    if-ge v0, v1, :cond_10

    .line 294
    sub-int v5, v107, v29

    aget-char v94, v27, v5

    .line 296
    .local v94, c:C
    const/16 v5, 0xa

    move/from16 v0, v94

    if-ne v0, v5, :cond_12

    .line 347
    :goto_9
    move/from16 v0, v131

    int-to-float v5, v0

    cmpg-float v5, v62, v5

    if-gtz v5, :cond_1f

    .line 348
    move/from16 v99, v62

    .line 349
    add-int/lit8 v98, v107, 0x1

    .line 351
    move/from16 v0, v103

    move/from16 v1, v41

    if-ge v0, v1, :cond_b

    .line 352
    move/from16 v41, v103

    .line 353
    :cond_b
    move/from16 v0, v100

    move/from16 v1, v39

    if-ge v0, v1, :cond_c

    .line 354
    move/from16 v39, v100

    .line 355
    :cond_c
    move/from16 v0, v102

    move/from16 v1, v40

    if-le v0, v1, :cond_d

    .line 356
    move/from16 v40, v102

    .line 357
    :cond_d
    move/from16 v0, v101

    move/from16 v1, v42

    if-le v0, v1, :cond_e

    .line 358
    move/from16 v42, v101

    .line 376
    :cond_e
    ####
    #invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout$Injector;->validateCJKCharAsSpace(C[CIII)C
    ####
    sub-int v5, v107, v29

    sub-int v6, v7, v29

    sub-int v14, v121, v29

    move-object/from16 v0, v27

    move/from16 v1, v104

    invoke-static {v0, v5, v6, v14, v1}, Landroid/text/StaticLayout;->getBreakType([CIIIZ)Landroid/text/StaticLayout$BreakType;

    move-result-object v127

    .line 377
    .local v127, type:Landroid/text/StaticLayout$BreakType;
    sget-object v5, Landroid/text/StaticLayout$BreakType;->NONE:Landroid/text/StaticLayout$BreakType;

    move-object/from16 v0, v127

    if-eq v0, v5, :cond_f

    .line 378
    sget-object v5, Landroid/text/StaticLayout$BreakType;->EN:Landroid/text/StaticLayout$BreakType;

    move-object/from16 v0, v127

    if-eq v0, v5, :cond_1a

    move-object/from16 v0, v124

    move/from16 v1, v107

    move-object/from16 v2, v128

    invoke-static {v0, v1, v2}, Landroid/text/StaticLayout;->insideSpans(Landroid/text/Spanned;I[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 380
    const/16 v104, 0x0

    .line 463
    .end local v127           #type:Landroid/text/StaticLayout$BreakType;
    :cond_f
    :goto_a
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_25

    .line 272
    .end local v94           #c:C
    :cond_10
    :goto_b
    move/from16 v123, v121

    goto/16 :goto_6

    .line 279
    .end local v100           #fmAscent:I
    .end local v101           #fmBottom:I
    .end local v102           #fmDescent:I
    .end local v103           #fmTop:I
    .end local v107           #j:I
    .end local v121           #spanEnd:I
    .end local v122           #spanLen:I
    :cond_11
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v124

    move/from16 v1, v123

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v121

    .line 281
    .restart local v121       #spanEnd:I
    sub-int v122, v121, v123

    .line 282
    .restart local v122       #spanLen:I
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v124

    move/from16 v1, v123

    move/from16 v2, v121

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v125

    check-cast v125, [Landroid/text/style/MetricAffectingSpan;

    .line 284
    .local v125, spans:[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v125

    move-object/from16 v1, v124

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v125

    .end local v125           #spans:[Landroid/text/style/MetricAffectingSpan;
    check-cast v125, [Landroid/text/style/MetricAffectingSpan;

    .line 285
    .restart local v125       #spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v111

    move-object/from16 v1, p4

    move-object/from16 v2, v125

    move/from16 v3, v122

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_7

    .line 298
    .end local v125           #spans:[Landroid/text/style/MetricAffectingSpan;
    .restart local v94       #c:C
    .restart local v100       #fmAscent:I
    .restart local v101       #fmBottom:I
    .restart local v102       #fmDescent:I
    .restart local v103       #fmTop:I
    .restart local v107       #j:I
    :cond_12
    const/16 v5, 0x9

    move/from16 v0, v94

    if-ne v0, v5, :cond_15

    .line 299
    if-nez v105, :cond_13

    .line 300
    const/16 v105, 0x1

    .line 301
    const/16 v19, 0x1

    .line 302
    if-eqz v124, :cond_13

    .line 304
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v124

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v125

    check-cast v125, [Landroid/text/style/TabStopSpan;

    .line 306
    .local v125, spans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v125

    array-length v5, v0

    if-lez v5, :cond_13

    .line 307
    new-instance v126, Landroid/text/Layout$TabStops;

    .end local v126           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v126

    move-object/from16 v1, v125

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 311
    .end local v125           #spans:[Landroid/text/style/TabStopSpan;
    .restart local v126       #tabStops:Landroid/text/Layout$TabStops;
    :cond_13
    if-eqz v126, :cond_14

    .line 312
    move-object/from16 v0, v126

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v62

    goto/16 :goto_9

    .line 314
    :cond_14
    const/16 v5, 0x14

    move/from16 v0, v62

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v62

    goto/16 :goto_9

    .line 316
    :cond_15
    const v5, 0xd800

    move/from16 v0, v94

    if-lt v0, v5, :cond_19

    const v5, 0xdfff

    move/from16 v0, v94

    if-gt v0, v5, :cond_19

    add-int/lit8 v5, v107, 0x1

    move/from16 v0, v121

    if-ge v5, v0, :cond_19

    .line 318
    sub-int v5, v107, v29

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v95

    .line 320
    .local v95, emoji:I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v95

    if-lt v0, v5, :cond_18

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v95

    if-gt v0, v5, :cond_18

    .line 321
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v95

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v93

    .line 323
    .local v93, bm:Landroid/graphics/Bitmap;
    if-eqz v93, :cond_17

    .line 326
    if-nez v124, :cond_16

    .line 327
    move-object/from16 v129, p4

    .line 332
    .local v129, whichPaint:Landroid/graphics/Paint;
    :goto_c
    invoke-virtual/range {v93 .. v93}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v129 .. v129}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v93 .. v93}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v130, v5, v6

    .line 334
    .local v130, wid:F
    add-float v62, v62, v130

    .line 335
    const/16 v19, 0x1

    .line 336
    add-int/lit8 v107, v107, 0x1

    .line 337
    goto/16 :goto_9

    .line 329
    .end local v129           #whichPaint:Landroid/graphics/Paint;
    .end local v130           #wid:F
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v129, v0

    .restart local v129       #whichPaint:Landroid/graphics/Paint;
    goto :goto_c

    .line 338
    .end local v129           #whichPaint:Landroid/graphics/Paint;
    :cond_17
    sub-int v5, v107, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_9

    .line 341
    .end local v93           #bm:Landroid/graphics/Bitmap;
    :cond_18
    sub-int v5, v107, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_9

    .line 344
    .end local v95           #emoji:I
    :cond_19
    sub-int v5, v107, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_9

    .line 382
    .restart local v127       #type:Landroid/text/StaticLayout$BreakType;
    :cond_1a
    sget-object v5, Landroid/text/StaticLayout$BreakType;->CH:Landroid/text/StaticLayout$BreakType;

    move-object/from16 v0, v127

    if-ne v0, v5, :cond_1e

    const/16 v104, 0x1

    .line 383
    :goto_d
    move/from16 v118, v62

    .line 384
    add-int/lit8 v113, v107, 0x1

    .line 386
    move/from16 v0, v41

    move/from16 v1, v117

    if-ge v0, v1, :cond_1b

    .line 387
    move/from16 v117, v41

    .line 388
    :cond_1b
    move/from16 v0, v39

    move/from16 v1, v114

    if-ge v0, v1, :cond_1c

    .line 389
    move/from16 v114, v39

    .line 390
    :cond_1c
    move/from16 v0, v40

    move/from16 v1, v116

    if-le v0, v1, :cond_1d

    .line 391
    move/from16 v116, v40

    .line 392
    :cond_1d
    move/from16 v0, v42

    move/from16 v1, v115

    if-le v0, v1, :cond_f

    .line 393
    move/from16 v115, v42

    goto/16 :goto_a

    .line 382
    :cond_1e
    const/16 v104, 0x0

    goto :goto_d

    .line 397
    .end local v127           #type:Landroid/text/StaticLayout$BreakType;
    :cond_1f
    add-int/lit8 v5, v107, 0x1

    move/from16 v0, v121

    if-ge v5, v0, :cond_22

    const/16 v34, 0x1

    .line 402
    .local v34, moreChars:Z
    :goto_e
    move/from16 v0, v113

    if-eq v0, v7, :cond_23

    .line 404
    const/16 v5, 0x20

    move/from16 v0, v94

    if-ne v0, v5, :cond_20

    add-int/lit8 v113, v107, 0x1

    .line 413
    :cond_20
    move/from16 v8, v113

    .line 414
    .local v8, endPos:I
    move/from16 v9, v114

    .line 415
    .local v9, above:I
    move/from16 v10, v116

    .line 416
    .local v10, below:I
    move/from16 v11, v117

    .line 417
    .local v11, top:I
    move/from16 v12, v115

    .line 418
    .local v12, bottom:I
    move/from16 v32, v118

    .local v32, currentTextWidth:F
    :goto_f
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v24, p3

    move/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v30, p12

    move/from16 v31, p11

    move-object/from16 v33, p4

    .line 435
    invoke-direct/range {v5 .. v34}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 442
    const/16 v104, 0x0

    .line 443
    move v7, v8

    .line 444
    add-int/lit8 v107, v7, -0x1

    .line 445
    move/from16 v98, v7

    move/from16 v113, v7

    .line 446
    const/16 v62, 0x0

    .line 447
    const/16 v42, 0x0

    move/from16 v41, v42

    move/from16 v40, v42

    move/from16 v39, v42

    .line 448
    const/16 v115, 0x0

    move/from16 v117, v115

    move/from16 v116, v115

    move/from16 v114, v115

    .line 450
    add-int/lit8 v97, v97, -0x1

    if-gtz v97, :cond_21

    .line 451
    move/from16 v131, v119

    .line 454
    :cond_21
    move/from16 v0, v123

    if-ge v7, v0, :cond_f

    .line 457
    move-object/from16 v0, v111

    invoke-virtual {v0, v7}, Landroid/text/MeasuredText;->setPos(I)V

    .line 458
    move/from16 v121, v7

    .line 459
    goto/16 :goto_b

    .line 397
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    .end local v34           #moreChars:Z
    :cond_22
    const/16 v34, 0x0

    goto :goto_e

    .line 419
    .restart local v34       #moreChars:Z
    :cond_23
    move/from16 v0, v98

    if-eq v0, v7, :cond_24

    .line 420
    move/from16 v8, v98

    .line 421
    .restart local v8       #endPos:I
    move/from16 v9, v39

    .line 422
    .restart local v9       #above:I
    move/from16 v10, v40

    .line 423
    .restart local v10       #below:I
    move/from16 v11, v41

    .line 424
    .restart local v11       #top:I
    move/from16 v12, v42

    .line 425
    .restart local v12       #bottom:I
    move/from16 v32, v99

    .restart local v32       #currentTextWidth:F
    goto :goto_f

    .line 427
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    :cond_24
    add-int/lit8 v8, v7, 0x1

    .line 428
    .restart local v8       #endPos:I
    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 429
    .restart local v9       #above:I
    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 430
    .restart local v10       #below:I
    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 431
    .restart local v11       #top:I
    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 432
    .restart local v12       #bottom:I
    sub-int v5, v7, v29

    aget v32, v28, v5

    .restart local v32       #currentTextWidth:F
    goto :goto_f

    .line 293
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    .end local v34           #moreChars:Z
    :cond_25
    add-int/lit8 v107, v107, 0x1

    goto/16 :goto_8

    .line 469
    .end local v94           #c:C
    .end local v100           #fmAscent:I
    .end local v101           #fmBottom:I
    .end local v102           #fmDescent:I
    .end local v103           #fmTop:I
    .end local v107           #j:I
    .end local v121           #spanEnd:I
    .end local v122           #spanLen:I
    :cond_26
    move/from16 v0, v38

    if-eq v0, v7, :cond_28

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_28

    .line 470
    or-int v5, v41, v42

    or-int v5, v5, v40

    or-int v5, v5, v39

    if-nez v5, :cond_27

    .line 471
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 473
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v41, v0

    .line 474
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v42, v0

    .line 475
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v39, v0

    .line 476
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v40, v0

    .line 481
    :cond_27
    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_2c

    const/16 v64, 0x1

    :goto_10
    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move/from16 v37, v7

    move/from16 v43, v13

    move/from16 v44, p7

    move/from16 v45, p8

    move-object/from16 v46, v16

    move-object/from16 v47, v17

    move-object/from16 v48, v18

    move/from16 v49, v19

    move/from16 v50, v20

    move-object/from16 v51, v21

    move/from16 v52, v22

    move/from16 v53, v23

    move/from16 v54, p3

    move/from16 v55, p9

    move/from16 v56, p10

    move-object/from16 v57, v27

    move-object/from16 v58, v28

    move/from16 v59, v29

    move-object/from16 v60, p12

    move/from16 v61, p11

    move-object/from16 v63, p4

    invoke-direct/range {v35 .. v64}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 493
    :cond_28
    move/from16 v29, v38

    .line 495
    move/from16 v0, v38

    move/from16 v1, p3

    if-ne v0, v1, :cond_2d

    .line 499
    .end local v7           #here:I
    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v19           #hasTabOrEmoji:Z
    .end local v21           #chdirs:[B
    .end local v22           #dir:I
    .end local v23           #easy:Z
    .end local v27           #chs:[C
    .end local v28           #widths:[F
    .end local v38           #paraEnd:I
    .end local v39           #fitAscent:I
    .end local v40           #fitDescent:I
    .end local v41           #fitTop:I
    .end local v42           #fitBottom:I
    .end local v62           #w:F
    .end local v96           #firstWidth:I
    .end local v97           #firstWidthLineLimit:I
    .end local v98           #fit:I
    .end local v99           #fitWidth:F
    .end local v104           #hasIdeographic:Z
    .end local v105           #hasTab:Z
    .end local v113           #ok:I
    .end local v114           #okAscent:I
    .end local v115           #okBottom:I
    .end local v116           #okDescent:I
    .end local v117           #okTop:I
    .end local v118           #okWidth:F
    .end local v119           #restWidth:I
    .end local v123           #spanStart:I
    .end local v126           #tabStops:Landroid/text/Layout$TabStops;
    .end local v128           #urlSpans:[Landroid/text/style/URLSpan;
    .end local v131           #width:I
    :cond_29
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_2a

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2b

    :cond_2a
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_2b

    .line 503
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 505
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v68, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v69, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v70, v0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v81, 0x1

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v90, 0x0

    const/16 v92, 0x0

    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move/from16 v65, p3

    move/from16 v66, p3

    move/from16 v71, v13

    move/from16 v72, p7

    move/from16 v73, p8

    move-object/from16 v76, v18

    move/from16 v78, v20

    move/from16 v82, p3

    move/from16 v83, p9

    move/from16 v84, p10

    move/from16 v87, p2

    move-object/from16 v88, p12

    move/from16 v89, p11

    move-object/from16 v91, p4

    invoke-direct/range {v63 .. v92}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 516
    :cond_2b
    return-void

    .line 481
    .restart local v7       #here:I
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v19       #hasTabOrEmoji:Z
    .restart local v21       #chdirs:[B
    .restart local v22       #dir:I
    .restart local v23       #easy:Z
    .restart local v27       #chs:[C
    .restart local v28       #widths:[F
    .restart local v38       #paraEnd:I
    .restart local v39       #fitAscent:I
    .restart local v40       #fitDescent:I
    .restart local v41       #fitTop:I
    .restart local v42       #fitBottom:I
    .restart local v62       #w:F
    .restart local v96       #firstWidth:I
    .restart local v97       #firstWidthLineLimit:I
    .restart local v98       #fit:I
    .restart local v99       #fitWidth:F
    .restart local v104       #hasIdeographic:Z
    .restart local v105       #hasTab:Z
    .restart local v113       #ok:I
    .restart local v114       #okAscent:I
    .restart local v115       #okBottom:I
    .restart local v116       #okDescent:I
    .restart local v117       #okTop:I
    .restart local v118       #okWidth:F
    .restart local v119       #restWidth:I
    .restart local v123       #spanStart:I
    .restart local v126       #tabStops:Landroid/text/Layout$TabStops;
    .restart local v128       #urlSpans:[Landroid/text/style/URLSpan;
    .restart local v131       #width:I
    :cond_2c
    const/16 v64, 0x0

    goto/16 :goto_10

    .line 182
    :cond_2d
    move/from16 v29, v38

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 1022
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1027
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1028
    const/4 v0, 0x0

    .line 1031
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1036
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1037
    const/4 v0, 0x0

    .line 1040
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .parameter "line"

    .prologue
    .line 1007
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 972
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 987
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 988
    .local v0, descent:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 990
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 992
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    .line 1012
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .parameter "vertical"

    .prologue
    .line 951
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 952
    .local v1, high:I
    const/4 v3, -0x1

    .line 954
    .local v3, low:I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 955
    .local v2, lines:[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 956
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 957
    .local v0, guess:I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 958
    move v1, v0

    goto :goto_0

    .line 960
    :cond_0
    move v3, v0

    goto :goto_0

    .line 963
    .end local v0           #guess:I
    :cond_1
    if-gez v3, :cond_2

    .line 964
    const/4 v3, 0x0

    .line 966
    .end local v3           #low:I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 997
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 977
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 978
    .local v0, top:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 980
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 982
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1002
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 1017
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 1049
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1050
    return-void
.end method

.method static callIsIdeographic(CZ)Z
    .locals 1
    .parameter "c"
    .parameter "includeNonStarters"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 44
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v0

    return v0
.end method
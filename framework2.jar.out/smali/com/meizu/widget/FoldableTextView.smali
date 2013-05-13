.class public Lcom/meizu/widget/FoldableTextView;
.super Landroid/widget/TextView;
.source "FoldableTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/FoldableTextView$FoldingListener;,
        Lcom/meizu/widget/FoldableTextView$MoreClickSpan;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HEAD_MORE_TEXT:Ljava/lang/String; = "\u2026"

.field private static final TAG:Ljava/lang/String; = "FoldableTextView"


# instance fields
.field private mAlignViewEdge:Z

.field private mEllipseText:Ljava/lang/String;

.field private mFoldLineMax:I

.field private mHasUnfolded:Z

.field private mListener:Lcom/meizu/widget/FoldableTextView$FoldingListener;

.field private mUnfoldText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    iput-boolean v0, p0, Lcom/meizu/widget/FoldableTextView;->mHasUnfolded:Z

    .line 38
    iput-boolean v0, p0, Lcom/meizu/widget/FoldableTextView;->mAlignViewEdge:Z

    .line 42
    invoke-direct {p0, p1}, Lcom/meizu/widget/FoldableTextView;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-boolean v0, p0, Lcom/meizu/widget/FoldableTextView;->mHasUnfolded:Z

    .line 38
    iput-boolean v0, p0, Lcom/meizu/widget/FoldableTextView;->mAlignViewEdge:Z

    .line 47
    invoke-direct {p0, p1}, Lcom/meizu/widget/FoldableTextView;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-boolean v0, p0, Lcom/meizu/widget/FoldableTextView;->mHasUnfolded:Z

    .line 38
    iput-boolean v0, p0, Lcom/meizu/widget/FoldableTextView;->mAlignViewEdge:Z

    .line 52
    invoke-direct {p0, p1}, Lcom/meizu/widget/FoldableTextView;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/widget/FoldableTextView;)Lcom/meizu/widget/FoldableTextView$FoldingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/widget/FoldableTextView;->mListener:Lcom/meizu/widget/FoldableTextView$FoldingListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/widget/FoldableTextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/meizu/widget/FoldableTextView;->mHasUnfolded:Z

    return p1
.end method

.method private foldText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 12
    .parameter "text"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/meizu/widget/FoldableTextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 124
    .local v11, layout:Landroid/text/Layout;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    .local v1, sb:Landroid/text/SpannableStringBuilder;
    new-instance v0, Landroid/text/DynamicLayout;

    invoke-virtual {v11}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    move-result v3

    invoke-virtual {v11}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v4

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 127
    .local v0, tmpLayout:Landroid/text/DynamicLayout;
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/FoldableTextView;->mFoldLineMax:I

    if-gt v2, v3, :cond_0

    .line 162
    .end local p1
    :goto_0
    return-object p1

    .line 132
    .restart local p1
    :cond_0
    iget v2, p0, Lcom/meizu/widget/FoldableTextView;->mFoldLineMax:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/text/DynamicLayout;->getLineVisibleEnd(I)I

    move-result v10

    .line 133
    .local v10, en:I
    iget-object v2, p0, Lcom/meizu/widget/FoldableTextView;->mEllipseText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v10, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 138
    :goto_1
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 140
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 141
    .local v8, addIndex:I
    iget-object v2, p0, Lcom/meizu/widget/FoldableTextView;->mUnfoldText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 142
    new-instance v2, Lcom/meizu/widget/FoldableTextView$MoreClickSpan;

    invoke-direct {v2, p0, p1}, Lcom/meizu/widget/FoldableTextView$MoreClickSpan;-><init>(Lcom/meizu/widget/FoldableTextView;Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 145
    if-lez v10, :cond_4

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/FoldableTextView;->mFoldLineMax:I

    if-le v2, v3, :cond_4

    .line 146
    move v9, v10

    .line 148
    .local v9, delIndex:I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    .line 149
    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v1, v9, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 150
    if-lez v9, :cond_2

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/FoldableTextView;->mFoldLineMax:I

    if-gt v2, v3, :cond_1

    .end local v9           #delIndex:I
    :cond_2
    :goto_2
    move-object p1, v1

    .line 162
    goto :goto_0

    .line 136
    .end local v8           #addIndex:I
    :cond_3
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/widget/FoldableTextView;->mEllipseText:Ljava/lang/String;

    invoke-virtual {v1, v10, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 151
    .restart local v8       #addIndex:I
    :cond_4
    iget-boolean v2, p0, Lcom/meizu/widget/FoldableTextView;->mAlignViewEdge:Z

    if-eqz v2, :cond_2

    .line 152
    :goto_3
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/FoldableTextView;->mFoldLineMax:I

    if-ne v2, v3, :cond_2

    .line 153
    const-string v2, " "

    invoke-virtual {v1, v8, v8, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 154
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/FoldableTextView;->mFoldLineMax:I

    if-le v2, v3, :cond_5

    .line 155
    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v8, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 158
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/FoldableTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x10403ed

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/FoldableTextView;->mUnfoldText:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x0

    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 98
    iget-boolean v4, p0, Lcom/meizu/widget/FoldableTextView;->mHasUnfolded:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/meizu/widget/FoldableTextView;->mFoldLineMax:I

    if-gtz v4, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/FoldableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 103
    .local v3, text:Ljava/lang/CharSequence;
    move-object v2, v3

    .line 104
    .local v2, src:Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    instance-of v4, v2, Landroid/text/Spanned;

    if-eqz v4, :cond_2

    move-object v4, v2

    .line 105
    check-cast v4, Landroid/text/Spanned;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Lcom/meizu/widget/FoldableTextView$MoreClickSpan;

    invoke-interface {v4, v7, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/meizu/widget/FoldableTextView$MoreClickSpan;

    .line 106
    .local v1, spans:[Lcom/meizu/widget/FoldableTextView$MoreClickSpan;
    if-eqz v1, :cond_2

    array-length v4, v1

    if-lez v4, :cond_2

    .line 107
    aget-object v4, v1, v7

    #getter for: Lcom/meizu/widget/FoldableTextView$MoreClickSpan;->mText:Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/meizu/widget/FoldableTextView$MoreClickSpan;->access$000(Lcom/meizu/widget/FoldableTextView$MoreClickSpan;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 111
    .end local v1           #spans:[Lcom/meizu/widget/FoldableTextView$MoreClickSpan;
    :cond_2
    invoke-direct {p0, v2}, Lcom/meizu/widget/FoldableTextView;->foldText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    .local v0, dst:Ljava/lang/CharSequence;
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    iget-object v4, p0, Lcom/meizu/widget/FoldableTextView;->mListener:Lcom/meizu/widget/FoldableTextView$FoldingListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/meizu/widget/FoldableTextView;->mListener:Lcom/meizu/widget/FoldableTextView$FoldingListener;

    const/4 v5, 0x1

    invoke-interface {v4, p0, v5}, Lcom/meizu/widget/FoldableTextView$FoldingListener;->onFolding(Lcom/meizu/widget/FoldableTextView;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    :cond_3
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 118
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setFoldText(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "strEllipse"
    .parameter "strUnfold"
    .parameter "alignViewEdge"

    .prologue
    .line 69
    iput-boolean p3, p0, Lcom/meizu/widget/FoldableTextView;->mAlignViewEdge:Z

    .line 70
    iput-object p1, p0, Lcom/meizu/widget/FoldableTextView;->mEllipseText:Ljava/lang/String;

    .line 71
    if-eqz p2, :cond_0

    .line 72
    iput-object p2, p0, Lcom/meizu/widget/FoldableTextView;->mUnfoldText:Ljava/lang/String;

    .line 76
    :cond_0
    return-void
.end method

.method public setFolding(ILcom/meizu/widget/FoldableTextView$FoldingListener;)V
    .locals 1
    .parameter "lineMax"
    .parameter "l"

    .prologue
    .line 86
    iput p1, p0, Lcom/meizu/widget/FoldableTextView;->mFoldLineMax:I

    .line 87
    iput-object p2, p0, Lcom/meizu/widget/FoldableTextView;->mListener:Lcom/meizu/widget/FoldableTextView$FoldingListener;

    .line 88
    iget-boolean v0, p0, Lcom/meizu/widget/FoldableTextView;->mHasUnfolded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/FoldableTextView;->mFoldLineMax:I

    if-lez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/FoldableTextView;->mHasUnfolded:Z

    .line 90
    invoke-virtual {p0}, Lcom/meizu/widget/FoldableTextView;->requestLayout()V

    .line 91
    invoke-virtual {p0}, Lcom/meizu/widget/FoldableTextView;->invalidate()V

    .line 93
    :cond_0
    return-void
.end method

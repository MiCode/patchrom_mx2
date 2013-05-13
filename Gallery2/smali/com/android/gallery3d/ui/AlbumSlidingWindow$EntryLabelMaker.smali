.class public Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryLabelMaker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;
    }
.end annotation


# instance fields
.field private mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;

.field private final mInfoMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mInfoPaint:Landroid/text/TextPaint;

.field private mLabelWidth:I

.field private final mSpec:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

.field private final mTitleMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mTitlePaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;)V
    .locals 2
    .parameter "spec"

    .prologue
    .line 666
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    .line 668
    iget v0, p1, Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->titleFontSize:I

    int-to-float v0, v0

    sget v1, Lcom/android/gallery3d/common/Utils;->sFontScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const v1, -0x1a1a1b

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->getTextPaint(II)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mTitlePaint:Landroid/text/TextPaint;

    .line 669
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mTitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mTitleMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 670
    iget v0, p1, Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->infoFontSize:I

    int-to-float v0, v0

    sget v1, Lcom/android/gallery3d/common/Utils;->sFontScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const v1, -0x7f7f80

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->getTextPaint(II)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mInfoPaint:Landroid/text/TextPaint;

    .line 671
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mInfoPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mInfoMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 672
    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;
    .locals 1
    .parameter "x0"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 650
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mLabelWidth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)Lcom/android/gallery3d/data/BitmapPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)Landroid/text/TextPaint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mTitlePaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mTitleMetrics:Landroid/graphics/Paint$FontMetricsInt;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)Landroid/text/TextPaint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mInfoPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mInfoMetrics:Landroid/graphics/Paint$FontMetricsInt;

    return-object v0
.end method

.method static drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextUtils$TruncateAt;Z)V
    .locals 2
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "text"
    .parameter "lengthLimit"
    .parameter "p"
    .parameter "metrics"
    .parameter "where"
    .parameter "truncated"

    .prologue
    .line 708
    monitor-enter p5

    .line 709
    if-nez p8, :cond_0

    .line 710
    int-to-float v0, p4

    :try_start_0
    invoke-static {p3, p5, v0, p7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 712
    :cond_0
    int-to-float v0, p1

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {p0, p3, v0, v1, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 713
    monitor-exit p5

    .line 714
    return-void

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getBorderSize()I
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x1

    return v0
.end method

.method private static getTextPaint(II)Landroid/text/TextPaint;
    .locals 4
    .parameter "textSize"
    .parameter "color"

    .prologue
    const/4 v3, 0x0

    .line 683
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 684
    .local v0, paint:Landroid/text/TextPaint;
    int-to-float v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 685
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 686
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 687
    const/high16 v1, 0x4000

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 688
    return-object v0
.end method


# virtual methods
.method public clearRecycledLabels()V
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/BitmapPool;->clear()V

    .line 789
    :cond_0
    return-void
.end method

.method public getLabelHeight()I
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    iget v0, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    return v0
.end method

.method public recycleLabel(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 785
    return-void
.end method

.method public requestLabel(Ljava/lang/String;Ljava/lang/String;)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .parameter "title"
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;-><init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized setLabelWidth(I)V
    .locals 5
    .parameter "width"

    .prologue
    .line 692
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mLabelWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    .line 697
    :goto_0
    monitor-exit p0

    return-void

    .line 693
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mLabelWidth:I

    .line 694
    const/4 v0, 0x2

    .line 695
    .local v0, borders:I
    new-instance v1, Lcom/android/gallery3d/data/BitmapPool;

    add-int v2, p1, v0

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    iget v3, v3, Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int/2addr v3, v0

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/data/BitmapPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 692
    .end local v0           #borders:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

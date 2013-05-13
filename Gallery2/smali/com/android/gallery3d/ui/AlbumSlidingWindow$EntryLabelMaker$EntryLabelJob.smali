.class Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryLabelJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInfo:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "title"
    .parameter "info"

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 721
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;->mTitle:Ljava/lang/String;

    .line 722
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;->mInfo:Ljava/lang/String;

    .line 723
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 22
    .parameter "jc"

    .prologue
    .line 727
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->access$1100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    move-result-object v21

    .line 729
    .local v21, s:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;->mTitle:Ljava/lang/String;

    .line 730
    .local v4, title:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 731
    const-string v4, ""

    .line 733
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;->mInfo:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 738
    .local v19, info:Ljava/lang/String;
    monitor-enter p0

    .line 739
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mLabelWidth:I
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->access$1200(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)I

    move-result v20

    .line 740
    .local v20, labelWidth:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->access$1300(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 741
    .local v15, bitmap:Landroid/graphics/Bitmap;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    if-nez v15, :cond_1

    .line 744
    const/16 v18, 0x2

    .line 745
    .local v18, borders:I
    add-int v6, v20, v18

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int v7, v7, v18

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 749
    .end local v18           #borders:I
    :cond_1
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 750
    .local v17, bitmapWidth:I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 752
    .local v16, bitmapHeight:I
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 753
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v6, 0x1

    const/4 v7, 0x1

    add-int/lit8 v8, v17, -0x1

    add-int/lit8 v9, v16, -0x1

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 757
    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 759
    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 762
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v15, 0x0

    .line 779
    .end local v15           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v15

    .line 741
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v16           #bitmapHeight:I
    .end local v17           #bitmapWidth:I
    .end local v20           #labelWidth:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 763
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    .restart local v15       #bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #bitmapHeight:I
    .restart local v17       #bitmapWidth:I
    .restart local v20       #labelWidth:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mTitlePaint:Landroid/text/TextPaint;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->access$1400(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)Landroid/text/TextPaint;

    move-result-object v6

    move/from16 v0, v20

    int-to-float v7, v0

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v6, v7, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 765
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mTitlePaint:Landroid/text/TextPaint;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->access$1400(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Landroid/util/FloatMath;->ceil(F)F

    move-result v6

    float-to-int v5, v6

    .line 766
    .local v5, textWidth:I
    sub-int v6, v20, v5

    div-int/lit8 v2, v6, 0x2

    .line 767
    .local v2, x:I
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->titleOffset:I

    .line 768
    .local v3, y:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mTitlePaint:Landroid/text/TextPaint;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->access$1400(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)Landroid/text/TextPaint;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mTitleMetrics:Landroid/graphics/Paint$FontMetricsInt;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->access$1500(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v9, 0x1

    invoke-static/range {v1 .. v9}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextUtils$TruncateAt;Z)V

    .line 772
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v15, 0x0

    goto :goto_0

    .line 773
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mInfoPaint:Landroid/text/TextPaint;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->access$1600(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)Landroid/text/TextPaint;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Landroid/util/FloatMath;->ceil(F)F

    move-result v6

    float-to-int v5, v6

    .line 774
    sub-int v6, v20, v5

    div-int/lit8 v2, v6, 0x2

    .line 775
    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->infoFontSize:I

    int-to-float v7, v7

    sget v8, Lcom/android/gallery3d/common/Utils;->sFontScale:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    sub-int v3, v6, v7

    .line 776
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mInfoPaint:Landroid/text/TextPaint;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->access$1600(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)Landroid/text/TextPaint;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->mInfoMetrics:Landroid/graphics/Paint$FontMetricsInt;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->access$1700(Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v14, 0x1

    move-object v6, v1

    move v7, v2

    move v8, v3

    move-object/from16 v9, v19

    move v10, v5

    invoke-static/range {v6 .. v14}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextUtils$TruncateAt;Z)V

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 716
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker$EntryLabelJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

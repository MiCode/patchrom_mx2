.class Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumLabelJob"
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

.field private final mSourceType:I

.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/AlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "title"
    .parameter "info"
    .parameter "sourceType"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mInfo:Ljava/lang/String;

    .line 166
    iput p4, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mSourceType:I

    .line 167
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 31
    .parameter "jc"

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$100(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    move-result-object v29

    .line 173
    .local v29, s:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 174
    .local v5, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mInfo:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 179
    .local v27, info:Ljava/lang/String;
    monitor-enter p0

    .line 180
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$200(Lcom/android/gallery3d/ui/AlbumLabelMaker;)I

    move-result v28

    .line 181
    .local v28, labelWidth:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$300(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    .line 182
    .local v21, bitmap:Landroid/graphics/Bitmap;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    if-nez v21, :cond_0

    .line 185
    const/16 v24, 0x2

    .line 186
    .local v24, borders:I
    add-int v7, v28, v24

    move-object/from16 v0, v29

    iget v8, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int v8, v8, v24

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 190
    .end local v24           #borders:I
    :cond_0
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 191
    .local v23, bitmapWidth:I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .line 193
    .local v22, bitmapHeight:I
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 194
    .local v2, canvas:Landroid/graphics/Canvas;
    const/4 v7, 0x1

    const/4 v8, 0x1

    add-int/lit8 v9, v23, -0x1

    add-int/lit8 v10, v22, -0x1

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 198
    sget v7, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_7

    .line 199
    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 201
    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 203
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mInfoPaint:Landroid/text/TextPaint;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$400(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Landroid/util/FloatMath;->ceil(F)F

    move-result v7

    float-to-int v11, v7

    .line 205
    .local v11, infoWidth:I
    sub-int v8, v28, v11

    move-object/from16 v0, v29

    iget v9, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    :goto_0
    mul-int/2addr v7, v9

    sub-int v25, v8, v7

    .line 206
    .local v25, freeSpace:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$500(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v7

    move/from16 v0, v25

    int-to-float v8, v0

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MIDDLE_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v5, v7, v8, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 209
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$500(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Landroid/util/FloatMath;->ceil(F)F

    move-result v7

    float-to-int v6, v7

    .line 211
    .local v6, titleWidth:I
    const/4 v3, 0x0

    .line 212
    .local v3, x:I
    sub-int v25, v25, v6

    .line 213
    const/4 v7, 0x1

    move/from16 v0, v25

    if-le v0, v7, :cond_1

    .line 214
    div-int/lit8 v7, v25, 0x2

    add-int/2addr v3, v7

    .line 218
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v21, 0x0

    .line 261
    .end local v3           #x:I
    .end local v6           #titleWidth:I
    .end local v11           #infoWidth:I
    .end local v21           #bitmap:Landroid/graphics/Bitmap;
    .end local v25           #freeSpace:I
    :cond_2
    :goto_1
    return-object v21

    .line 182
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v22           #bitmapHeight:I
    .end local v23           #bitmapWidth:I
    .end local v28           #labelWidth:I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 205
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    .restart local v11       #infoWidth:I
    .restart local v21       #bitmap:Landroid/graphics/Bitmap;
    .restart local v22       #bitmapHeight:I
    .restart local v23       #bitmapWidth:I
    .restart local v28       #labelWidth:I
    :cond_3
    const/4 v7, 0x3

    goto :goto_0

    .line 219
    .restart local v3       #x:I
    .restart local v6       #titleWidth:I
    .restart local v25       #freeSpace:I
    :cond_4
    move-object/from16 v0, v29

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    add-int/2addr v3, v7

    .line 220
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->topMargin:I

    .line 221
    .local v4, y:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$500(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mTitleMetrics:Landroid/graphics/Paint$FontMetricsInt;
    invoke-static {v8}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$600(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v10, 0x1

    invoke-static/range {v2 .. v10}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextUtils$TruncateAt;Z)V

    .line 225
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v21, 0x0

    goto :goto_1

    .line 226
    :cond_5
    move-object/from16 v0, v29

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    add-int/2addr v7, v6

    add-int/2addr v3, v7

    .line 227
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mOnlyInfoPaint:Landroid/text/TextPaint;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$700(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v12

    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mInfoMetrics:Landroid/graphics/Paint$FontMetricsInt;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$800(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v15, 0x1

    move-object v7, v2

    move v8, v3

    move v9, v4

    move-object/from16 v10, v27

    invoke-static/range {v7 .. v15}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextUtils$TruncateAt;Z)V

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mInfoPaint:Landroid/text/TextPaint;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$400(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v12

    goto :goto_2

    .line 230
    .end local v3           #x:I
    .end local v4           #y:I
    .end local v6           #titleWidth:I
    .end local v11           #infoWidth:I
    .end local v25           #freeSpace:I
    :cond_7
    const/high16 v7, 0x6000

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 232
    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 235
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v21, 0x0

    goto :goto_1

    .line 236
    :cond_8
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    .line 237
    .restart local v3       #x:I
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleOffset:I

    .line 238
    .restart local v4       #y:I
    move-object/from16 v0, v29

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    sub-int v16, v28, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$500(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mTitleMetrics:Landroid/graphics/Paint$FontMetricsInt;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$600(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v18

    sget-object v19, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v20, 0x0

    move-object v12, v2

    move v13, v3

    move v14, v4

    move-object v15, v5

    invoke-static/range {v12 .. v20}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextUtils$TruncateAt;Z)V

    .line 242
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v21, 0x0

    goto/16 :goto_1

    .line 243
    :cond_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mSourceType:I

    #calls: Lcom/android/gallery3d/ui/AlbumLabelMaker;->getOverlayAlbumIcon(I)Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$900(Lcom/android/gallery3d/ui/AlbumLabelMaker;I)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 244
    .local v26, icon:Landroid/graphics/Bitmap;
    if-eqz v26, :cond_a

    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->iconSize:I

    .line 245
    :cond_a
    move-object/from16 v0, v29

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    move-object/from16 v0, v29

    iget v8, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->infoOffset:I

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 246
    move-object/from16 v0, v29

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    sub-int v7, v28, v7

    move-object/from16 v0, v29

    iget v8, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->iconSize:I

    sub-int v16, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mInfoPaint:Landroid/text/TextPaint;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$400(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mInfoMetrics:Landroid/graphics/Paint$FontMetricsInt;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$800(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v18

    sget-object v19, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v20, 0x0

    move-object v12, v2

    move v13, v3

    move v14, v4

    move-object/from16 v15, v27

    invoke-static/range {v12 .. v20}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextUtils$TruncateAt;Z)V

    .line 251
    if-eqz v26, :cond_2

    .line 252
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v21, 0x0

    goto/16 :goto_1

    .line 253
    :cond_b
    move-object/from16 v0, v29

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->iconSize:I

    int-to-float v7, v7

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v30, v7, v8

    .line 254
    .local v30, scale:F
    const/4 v7, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v30

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 256
    move/from16 v0, v30

    move/from16 v1, v30

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 257
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

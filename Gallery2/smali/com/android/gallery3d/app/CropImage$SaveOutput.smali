.class Lcom/android/gallery3d/app/CropImage$SaveOutput;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCropRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/RectF;)V
    .locals 0
    .parameter
    .parameter "cropRect"

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p2, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 501
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 14
    .parameter "jc"

    .prologue
    const/4 v8, 0x0

    const/4 v13, 0x0

    .line 504
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 505
    .local v0, cropRect:Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 507
    .local v3, extra:Landroid/os/Bundle;
    new-instance v5, Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget v11, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-direct {v5, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 511
    .local v5, rect:Landroid/graphics/Rect;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 512
    .local v6, result:Landroid/content/Intent;
    const-string v9, "cropped-rect"

    invoke-virtual {v6, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 514
    const/4 v1, 0x0

    .line 515
    .local v1, cropped:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 516
    .local v4, outputted:Z
    if-eqz v3, :cond_9

    .line 517
    const-string v9, "output"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 518
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_2

    .line 519
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v6, v8

    .line 547
    .end local v6           #result:Landroid/content/Intent;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v6

    .line 520
    .restart local v6       #result:Landroid/content/Intent;
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_1
    const/4 v4, 0x1

    .line 521
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    invoke-static {v9, v5, v13}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 522
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    invoke-static {v9, p1, v1, v7}, Lcom/android/gallery3d/app/CropImage;->access$900(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v9

    if-nez v9, :cond_2

    move-object v6, v8

    goto :goto_0

    .line 524
    :cond_2
    const-string v9, "return-data"

    invoke-virtual {v3, v9, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 525
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v6, v8

    goto :goto_0

    .line 526
    :cond_3
    const/4 v4, 0x1

    .line 527
    if-nez v1, :cond_4

    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    const/4 v10, 0x1

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    invoke-static {v9, v5, v10}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 528
    :cond_4
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mCroppedWidth:I
    invoke-static {v9}, Lcom/android/gallery3d/app/CropImage;->access$1000(Lcom/android/gallery3d/app/CropImage;)I

    move-result v9

    iget-object v10, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mCroppedHeight:I
    invoke-static {v10}, Lcom/android/gallery3d/app/CropImage;->access$1100(Lcom/android/gallery3d/app/CropImage;)I

    move-result v10

    mul-int/2addr v9, v10

    const/16 v10, 0x7a12

    if-le v9, v10, :cond_6

    const-string v9, "return-path-if-too-large"

    invoke-virtual {v3, v9, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 529
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->saveOutputByFilePath(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/content/Intent;)Z
    invoke-static {v9, p1, v1, v6}, Lcom/android/gallery3d/app/CropImage;->access$1200(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/content/Intent;)Z

    .line 534
    :cond_5
    :goto_1
    const-string v9, "set-as-wallpaper"

    invoke-virtual {v3, v9, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 535
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v6, v8

    goto :goto_0

    .line 531
    :cond_6
    const-string v9, "data"

    invoke-virtual {v6, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 536
    :cond_7
    const/4 v4, 0x1

    .line 537
    if-nez v1, :cond_8

    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    invoke-static {v9, v5, v13}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 538
    :cond_8
    iget-object v9, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->setAsWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    invoke-static {v9, p1, v1}, Lcom/android/gallery3d/app/CropImage;->access$1300(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v9

    if-nez v9, :cond_9

    move-object v6, v8

    goto :goto_0

    .line 541
    .end local v7           #uri:Landroid/net/Uri;
    :cond_9
    if-nez v4, :cond_0

    .line 542
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_a

    move-object v6, v8

    goto :goto_0

    .line 543
    :cond_a
    if-nez v1, :cond_b

    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    invoke-static {v8, v5, v13}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 544
    :cond_b
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->saveToMediaProvider(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    invoke-static {v8, p1, v1}, Lcom/android/gallery3d/app/CropImage;->access$1400(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    .line 545
    .local v2, data:Landroid/net/Uri;
    if-eqz v2, :cond_0

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/CropImage$SaveOutput;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

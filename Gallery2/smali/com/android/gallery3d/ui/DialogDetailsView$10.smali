.class Lcom/android/gallery3d/ui/DialogDetailsView$10;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/DialogDetailsView;->createFile(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

.field final synthetic val$newPath:Ljava/lang/String;

.field final synthetic val$overwrite:Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/DialogDetailsView;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    iput-object p2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->val$newPath:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->val$overwrite:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const v11, 0x7f0a01f2

    .line 594
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;
    invoke-static {v0}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1600(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1400(Lcom/android/gallery3d/ui/DialogDetailsView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->val$newPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mNewTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1500(Lcom/android/gallery3d/ui/DialogDetailsView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mImageW:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1200(Lcom/android/gallery3d/ui/DialogDetailsView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mImageH:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1000(Lcom/android/gallery3d/ui/DialogDetailsView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mNewWidth:I
    invoke-static {v6}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1100(Lcom/android/gallery3d/ui/DialogDetailsView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mNewHeight:I
    invoke-static {v7}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$900(Lcom/android/gallery3d/ui/DialogDetailsView;)I

    move-result v7

    iget-boolean v8, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->val$overwrite:Z

    invoke-virtual/range {v0 .. v8}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->saveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZ)Z

    move-result v10

    .line 596
    .local v10, success:Z
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;
    invoke-static {v0}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1600(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->val$newPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->setScanFile(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1700(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 598
    if-eqz v10, :cond_1

    .line 599
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->val$overwrite:Z

    if-eqz v0, :cond_0

    .line 600
    const-string v9, "/sdcard/"

    .line 601
    .local v9, sdcardStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;
    invoke-static {v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1800(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->val$newPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->val$newPath:Ljava/lang/String;

    const-string v4, "/sdcard/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "/sdcard/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->val$newPath:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/gallery3d/ui/DialogDetailsView;->sendShowToasMessage(ILjava/lang/String;)V
    invoke-static {v0, v11, v1}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1900(Lcom/android/gallery3d/ui/DialogDetailsView;ILjava/lang/String;)V

    .line 611
    .end local v9           #sdcardStr:Ljava/lang/String;
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;
    invoke-static {v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1800(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/gallery3d/ui/DialogDetailsView;->sendShowToasMessage(ILjava/lang/String;)V
    invoke-static {v0, v11, v1}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1900(Lcom/android/gallery3d/ui/DialogDetailsView;ILjava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    const v1, 0x7f0a01f1

    const/4 v2, 0x0

    #calls: Lcom/android/gallery3d/ui/DialogDetailsView;->sendShowToasMessage(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1900(Lcom/android/gallery3d/ui/DialogDetailsView;ILjava/lang/String;)V

    goto :goto_0
.end method

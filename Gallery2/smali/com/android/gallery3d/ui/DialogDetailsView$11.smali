.class Lcom/android/gallery3d/ui/DialogDetailsView$11;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/DialogDetailsView;->renameFile(ZLjava/lang/String;)V
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
    .line 616
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    iput-object p2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->val$newPath:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->val$overwrite:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const v8, 0x7f0a01f2

    .line 619
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;
    invoke-static {v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1600(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mFilePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1400(Lcom/android/gallery3d/ui/DialogDetailsView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->val$newPath:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->val$overwrite:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->changeFileName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 620
    .local v1, success:Z
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;
    invoke-static {v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1600(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->val$newPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->setScanFile(Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1700(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 622
    if-eqz v1, :cond_1

    .line 623
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->val$overwrite:Z

    if-eqz v2, :cond_0

    .line 624
    const-string v0, "/sdcard/"

    .line 625
    .local v0, sdcardStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;
    invoke-static {v4}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1800(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a01ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->val$newPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->val$newPath:Ljava/lang/String;

    const-string v6, "/sdcard/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, "/sdcard/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->val$newPath:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/gallery3d/ui/DialogDetailsView;->sendShowToasMessage(ILjava/lang/String;)V
    invoke-static {v2, v8, v3}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1900(Lcom/android/gallery3d/ui/DialogDetailsView;ILjava/lang/String;)V

    .line 635
    .end local v0           #sdcardStr:Ljava/lang/String;
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;
    invoke-static {v4}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1800(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a01b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/gallery3d/ui/DialogDetailsView;->sendShowToasMessage(ILjava/lang/String;)V
    invoke-static {v2, v8, v3}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1900(Lcom/android/gallery3d/ui/DialogDetailsView;ILjava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    const v3, 0x7f0a01f1

    const/4 v4, 0x0

    #calls: Lcom/android/gallery3d/ui/DialogDetailsView;->sendShowToasMessage(ILjava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1900(Lcom/android/gallery3d/ui/DialogDetailsView;ILjava/lang/String;)V

    goto :goto_0
.end method

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
    .line 581
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    iput-object p2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->val$newPath:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->val$overwrite:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 584
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

    move-result v9

    .line 586
    .local v9, success:Z
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;
    invoke-static {v0}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1600(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->val$newPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->setScanFile(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1700(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 588
    if-eqz v9, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    const v1, 0x7f0a01e3

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->val$newPath:Ljava/lang/String;

    #calls: Lcom/android/gallery3d/ui/DialogDetailsView;->sendShowToasMessage(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1800(Lcom/android/gallery3d/ui/DialogDetailsView;ILjava/lang/String;)V

    .line 593
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$10;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    const v1, 0x7f0a01e2

    const/4 v2, 0x0

    #calls: Lcom/android/gallery3d/ui/DialogDetailsView;->sendShowToasMessage(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1800(Lcom/android/gallery3d/ui/DialogDetailsView;ILjava/lang/String;)V

    goto :goto_0
.end method

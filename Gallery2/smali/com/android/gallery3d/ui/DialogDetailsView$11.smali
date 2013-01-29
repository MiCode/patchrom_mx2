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
    .line 598
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    iput-object p2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->val$newPath:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->val$overwrite:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 601
    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;
    invoke-static {v1}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1600(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1400(Lcom/android/gallery3d/ui/DialogDetailsView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->val$newPath:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->val$overwrite:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->changeFileName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 602
    .local v0, success:Z
    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mSaveFileHelper:Lcom/android/gallery3d/ui/DetailsSaveFileHelper;
    invoke-static {v1}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1600(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/ui/DetailsSaveFileHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->val$newPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->setScanFile(Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1700(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 604
    if-eqz v0, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    const v2, 0x7f0a01e3

    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->val$newPath:Ljava/lang/String;

    #calls: Lcom/android/gallery3d/ui/DialogDetailsView;->sendShowToasMessage(ILjava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1800(Lcom/android/gallery3d/ui/DialogDetailsView;ILjava/lang/String;)V

    .line 609
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$11;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    const v2, 0x7f0a01e2

    const/4 v3, 0x0

    #calls: Lcom/android/gallery3d/ui/DialogDetailsView;->sendShowToasMessage(ILjava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$1800(Lcom/android/gallery3d/ui/DialogDetailsView;ILjava/lang/String;)V

    goto :goto_0
.end method

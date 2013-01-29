.class Lcom/android/gallery3d/ui/MenuExecutor$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 143
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$000(Lcom/android/gallery3d/ui/MenuExecutor;)V

    .line 146
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 147
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 148
    .local v0, listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onProgressComplete(I)V

    .line 150
    .end local v0           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$100(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 151
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    const/4 v2, -0x1

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmWhat:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->access$202(Lcom/android/gallery3d/ui/MenuExecutor;I)I

    .line 152
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->mSrcRootDirPath:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->access$302(Lcom/android/gallery3d/ui/MenuExecutor;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->mDstDirPath:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->access$402(Lcom/android/gallery3d/ui/MenuExecutor;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$500(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$500(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 158
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 159
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 160
    .restart local v0       #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onProgressUpdate(I)V

    goto :goto_0

    .line 165
    .end local v0           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :pswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$600(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

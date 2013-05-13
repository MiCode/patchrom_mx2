.class Lcom/android/gallery3d/ui/DialogDetailsView$1;
.super Landroid/os/Handler;
.source "DialogDetailsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/DialogDetailsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/DialogDetailsView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$1;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 98
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 101
    .local v0, msgId:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 102
    .local v1, tip:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$1;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #calls: Lcom/android/gallery3d/ui/DialogDetailsView;->showToast(ILjava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$000(Lcom/android/gallery3d/ui/DialogDetailsView;ILjava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v0           #msgId:I
    .end local v1           #tip:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$1;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$100(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$1;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$100(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$1;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$100(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$1;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$100(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$1;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$100(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

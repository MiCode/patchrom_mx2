.class Lcom/android/gallery3d/app/MoviePlayer$8;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 315
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDlnaHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1600(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mDimissRemoteBuffering:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$2100(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-nez v2, :cond_0

    .line 317
    const v1, 0x1030323

    .line 318
    .local v1, styleId:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$1300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$2102(Lcom/android/gallery3d/app/MoviePlayer;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 319
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$2100(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 320
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$2100(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 321
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, buffering:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$2100(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$2100(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/app/MoviePlayer$8$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/MoviePlayer$8$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer$8;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 331
    .end local v0           #buffering:Ljava/lang/String;
    .end local v1           #styleId:I
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$2100(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 332
    return-void
.end method

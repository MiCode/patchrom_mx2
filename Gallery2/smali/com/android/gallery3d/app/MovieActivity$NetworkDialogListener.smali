.class Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;
.super Ljava/lang/Object;
.source "MovieActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkDialogListener"
.end annotation


# instance fields
.field private mNetworkType:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

.field final synthetic this$0:Lcom/android/gallery3d/app/MovieActivity;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/MovieActivity;Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;)V
    .locals 0
    .parameter
    .parameter "mNetworkType"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    .line 411
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p2, p0, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;->mNetworkType:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    .line 413
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 437
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 416
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;->mNetworkType:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;->WIFI_MOBILE:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    if-ne v0, v1, :cond_1

    .line 418
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->getIsPrepareFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->getIsPrepareFinish()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->storePlayHistory()V

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    goto :goto_0

    .line 427
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->getIsPrepareFinish()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 429
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->storePlayHistory()V

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$NetworkDialogListener;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    goto :goto_0
.end method

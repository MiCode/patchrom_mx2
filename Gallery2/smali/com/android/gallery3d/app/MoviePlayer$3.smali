.class Lcom/android/gallery3d/app/MoviePlayer$3;
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
    .line 247
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$3;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$3;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$3;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$3;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mRemoteBuffering:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 252
    :cond_0
    return-void
.end method

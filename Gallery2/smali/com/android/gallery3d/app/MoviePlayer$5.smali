.class Lcom/android/gallery3d/app/MoviePlayer$5;
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
    .line 276
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$5;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$5;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$2000(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v0

    .line 280
    .local v0, pos:I
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$5;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$5;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$2100(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v2

    rem-int/lit16 v3, v0, 0x3e8

    rsub-int v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 281
    return-void
.end method

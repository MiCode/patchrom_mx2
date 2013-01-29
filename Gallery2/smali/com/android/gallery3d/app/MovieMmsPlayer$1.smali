.class Lcom/android/gallery3d/app/MovieMmsPlayer$1;
.super Landroid/os/Handler;
.source "MovieMmsPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieMmsPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieMmsPlayer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieMmsPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieMmsPlayer$1;->this$0:Lcom/android/gallery3d/app/MovieMmsPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 30
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 36
    :goto_0
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer$1;->this$0:Lcom/android/gallery3d/app/MovieMmsPlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieMmsPlayer;->onPlayPause()V

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

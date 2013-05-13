.class Lcom/android/gallery3d/app/MoviePlayer$1;
.super Landroid/os/Handler;
.source "MoviePlayer.java"


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
    .line 189
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 191
    iget v0, p1, Landroid/os/Message;->what:I

    .line 192
    .local v0, what:I
    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 194
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->turnOnM03XLed()V

    goto :goto_0

    .line 197
    :pswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$1;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->turnOffLed()V

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x3f2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

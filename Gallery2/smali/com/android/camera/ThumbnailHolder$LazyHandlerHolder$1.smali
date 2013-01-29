.class final Lcom/android/camera/ThumbnailHolder$LazyHandlerHolder$1;
.super Ljava/lang/Object;
.source "ThumbnailHolder.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ThumbnailHolder$LazyHandlerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 43
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 40
    :pswitch_0
    #calls: Lcom/android/camera/ThumbnailHolder;->cleanLastThumbnail()V
    invoke-static {}, Lcom/android/camera/ThumbnailHolder;->access$000()V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

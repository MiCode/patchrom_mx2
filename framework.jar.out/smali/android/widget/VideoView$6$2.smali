.class Landroid/widget/VideoView$6$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/VideoView$6;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/VideoView$6;


# direct methods
.method constructor <init>(Landroid/widget/VideoView$6;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Landroid/widget/VideoView$6$2;->this$1:Landroid/widget/VideoView$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 617
    iget-object v0, p0, Landroid/widget/VideoView$6$2;->this$1:Landroid/widget/VideoView$6;

    iget-object v0, v0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Landroid/widget/VideoView;->access$2000(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Landroid/widget/VideoView$6$2;->this$1:Landroid/widget/VideoView$6;

    iget-object v0, v0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Landroid/widget/VideoView;->access$2000(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView$6$2;->this$1:Landroid/widget/VideoView$6;

    iget-object v1, v1, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 620
    :cond_0
    return-void
.end method

.class Landroid/widget/VideoView$7;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 632
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mCurrentBufferPercentage:I
    invoke-static {v0, p2}, Landroid/widget/VideoView;->access$2602(Landroid/widget/VideoView;I)I

    .line 633
    return-void
.end method

.class Landroid/widget/VideoView$8$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/VideoView$8;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/VideoView$8;


# direct methods
.method constructor <init>(Landroid/widget/VideoView$8;)V
    .locals 0
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Landroid/widget/VideoView$8$1;->this$1:Landroid/widget/VideoView$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Landroid/widget/VideoView$8$1;->this$1:Landroid/widget/VideoView$8;

    iget-object v0, v0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #calls: Landroid/widget/VideoView;->openVideo()V
    invoke-static {v0}, Landroid/widget/VideoView;->access$2500(Landroid/widget/VideoView;)V

    .line 730
    return-void
.end method

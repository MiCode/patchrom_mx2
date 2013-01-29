.class Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;
.super Ljava/util/TimerTask;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->isCurrentPage:Z
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$000(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    :cond_0
    return-void
.end method

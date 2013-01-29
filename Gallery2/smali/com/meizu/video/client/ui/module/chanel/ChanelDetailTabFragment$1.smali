.class Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$1;
.super Ljava/lang/Object;
.source "ChanelDetailTabFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChanelDetailTabFragment onPageScrollStateChanged position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 122
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChanelDetailTabFragment onPageSelected position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    invoke-virtual {v0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->changeTabView(I)V

    .line 116
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mSelectedPos:I
    invoke-static {v0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;I)I

    .line 117
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$1;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->checkDataAndUpdateView()V

    .line 118
    return-void
.end method

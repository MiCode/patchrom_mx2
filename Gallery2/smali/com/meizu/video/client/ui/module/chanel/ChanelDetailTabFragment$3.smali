.class Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$3;
.super Ljava/lang/Object;
.source "ChanelDetailTabFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->initCustomView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    iput p2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$3;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor",
            "ResourceAsColor",
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->access$200(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$3;->val$position:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 193
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$3;->val$position:I

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->changeTabView(I)V

    .line 194
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$3;->val$position:I

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mSelectedPos:I
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;I)I

    .line 195
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$3;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->checkDataAndUpdateView()V

    .line 196
    return-void
.end method

.class final Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;
.super Ljava/lang/Object;
.source "TabHostPlus.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayNext"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;)V
    .locals 0
    .parameter

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;->this$1:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;Lcom/meizu/widget/TabHostPlus$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1100
    invoke-direct {p0, p1}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;-><init>(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, -0x1

    .line 1108
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;->this$1:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    #getter for: Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->forward:I
    invoke-static {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->access$1700(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;->this$1:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    #getter for: Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mHandler:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$FlpperHandler;
    invoke-static {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->access$2000(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;)Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$FlpperHandler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$FlpperHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;->this$1:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    #getter for: Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->forward:I
    invoke-static {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->access$1700(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;)I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;->this$1:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    iget-object v0, v0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    iget-object v0, v0, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-eqz v0, :cond_1

    .line 1113
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;->this$1:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    iget-object v0, v0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;->this$1:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    iget-object v1, v1, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    iget-object v1, v1, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    #calls: Lcom/meizu/widget/TabHostPlus;->updateWindowFocus(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/meizu/widget/TabHostPlus;->access$2100(Lcom/meizu/widget/TabHostPlus;Landroid/app/Activity;)V

    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;->this$1:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    #getter for: Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v0}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->access$1900(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 1116
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;->this$1:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    #setter for: Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->forward:I
    invoke-static {v0, v4}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->access$1702(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;I)I

    .line 1117
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1120
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1105
    return-void
.end method

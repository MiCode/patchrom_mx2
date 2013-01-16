.class final Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$FlpperHandler;
.super Landroid/os/Handler;
.source "TabHostPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlpperHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$FlpperHandler;->this$1:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    .line 1086
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1087
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1091
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1092
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$FlpperHandler;->this$1:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    const/4 v2, -0x1

    #setter for: Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->forward:I
    invoke-static {v1, v2}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->access$1702(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;I)I

    .line 1093
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$FlpperHandler;->this$1:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    invoke-virtual {v1}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->destroyLastActivity()V

    .line 1094
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$FlpperHandler;->this$1:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    #getter for: Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->access$1800(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1095
    .local v0, size:I
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$FlpperHandler;->this$1:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    #getter for: Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->access$1900(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 1097
    .end local v0           #size:I
    :cond_0
    return-void
.end method

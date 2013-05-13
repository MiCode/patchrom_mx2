.class Lcom/meizu/widget/MzContactHeaderWidget$1;
.super Ljava/lang/Object;
.source "MzContactHeaderWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/MzContactHeaderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/MzContactHeaderWidget;


# direct methods
.method constructor <init>(Lcom/meizu/widget/MzContactHeaderWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/meizu/widget/MzContactHeaderWidget$1;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 190
    iget-object v1, p0, Lcom/meizu/widget/MzContactHeaderWidget$1;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget$1;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeOn:Z
    invoke-static {v0}, Lcom/meizu/widget/MzContactHeaderWidget;->access$100(Lcom/meizu/widget/MzContactHeaderWidget;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeOn:Z
    invoke-static {v1, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->access$102(Lcom/meizu/widget/MzContactHeaderWidget;Z)Z

    .line 191
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget$1;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;
    invoke-static {v0}, Lcom/meizu/widget/MzContactHeaderWidget;->access$200(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/FlymeButton;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/widget/MzContactHeaderWidget$1;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeOn:Z
    invoke-static {v1}, Lcom/meizu/widget/MzContactHeaderWidget;->access$100(Lcom/meizu/widget/MzContactHeaderWidget;)Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget$1;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    invoke-virtual {v2}, Lcom/meizu/widget/MzContactHeaderWidget;->containsEmail()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/FlymeButton;->setFlymeState(ZZ)V

    .line 193
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget$1;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;
    invoke-static {v0}, Lcom/meizu/widget/MzContactHeaderWidget;->access$300(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget$1;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;
    invoke-static {v0}, Lcom/meizu/widget/MzContactHeaderWidget;->access$300(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/widget/MzContactHeaderWidget$1;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget$1;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    invoke-virtual {v2}, Lcom/meizu/widget/MzContactHeaderWidget;->getSipDestState()Lcom/meizu/widget/RecipientStateInfo$SipState;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    .line 197
    :cond_0
    return-void

    .line 190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

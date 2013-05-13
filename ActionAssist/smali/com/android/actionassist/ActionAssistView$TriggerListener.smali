.class Lcom/android/actionassist/ActionAssistView$TriggerListener;
.super Ljava/lang/Object;
.source "ActionAssistView.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/actionassist/ActionAssistView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TriggerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/actionassist/ActionAssistView;


# direct methods
.method constructor <init>(Lcom/android/actionassist/ActionAssistView;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/actionassist/ActionAssistView$TriggerListener;->this$0:Lcom/android/actionassist/ActionAssistView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onFocused(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "target"

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-static {}, Lcom/android/actionassist/ActionAssistView;->access$200()I

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static {}, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->cancelKeyTrigger()V

    .line 85
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 86
    invoke-static {v2}, Lcom/android/actionassist/ActionAssistView;->access$202(I)I

    .line 105
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/android/actionassist/ActionAssistView$TriggerListener;->this$0:Lcom/android/actionassist/ActionAssistView;

    #getter for: Lcom/android/actionassist/ActionAssistView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;
    invoke-static {v1}, Lcom/android/actionassist/ActionAssistView;->access$000(Lcom/android/actionassist/ActionAssistView;)Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->getResourceIdForTarget(I)I

    move-result v0

    .line 91
    .local v0, resId:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 93
    :pswitch_1
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/actionassist/ActionAssistView;->access$202(I)I

    .line 94
    invoke-static {}, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->downKeyTrigger()V

    goto :goto_0

    .line 97
    :pswitch_2
    invoke-static {v2}, Lcom/android/actionassist/ActionAssistView;->access$202(I)I

    goto :goto_0

    .line 100
    :pswitch_3
    const/16 v1, 0x52

    invoke-static {v1}, Lcom/android/actionassist/ActionAssistView;->access$202(I)I

    .line 101
    invoke-static {}, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->downKeyTrigger()V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x7f020000
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 59
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "handle"

    .prologue
    const/4 v1, 0x1

    .line 109
    if-ne p2, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/actionassist/ActionAssistView$TriggerListener;->this$0:Lcom/android/actionassist/ActionAssistView;

    #setter for: Lcom/android/actionassist/ActionAssistView;->handled:Z
    invoke-static {v0, v1}, Lcom/android/actionassist/ActionAssistView;->access$302(Lcom/android/actionassist/ActionAssistView;Z)Z

    .line 111
    iget-object v0, p0, Lcom/android/actionassist/ActionAssistView$TriggerListener;->this$0:Lcom/android/actionassist/ActionAssistView;

    #getter for: Lcom/android/actionassist/ActionAssistView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;
    invoke-static {v0}, Lcom/android/actionassist/ActionAssistView;->access$000(Lcom/android/actionassist/ActionAssistView;)Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 112
    invoke-static {}, Lcom/android/actionassist/AssistReceiver;->dismissUserGuide()V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    if-nez p2, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/actionassist/ActionAssistView$TriggerListener;->this$0:Lcom/android/actionassist/ActionAssistView;

    const/4 v1, 0x0

    #setter for: Lcom/android/actionassist/ActionAssistView;->handled:Z
    invoke-static {v0, v1}, Lcom/android/actionassist/ActionAssistView;->access$302(Lcom/android/actionassist/ActionAssistView;Z)Z

    .line 115
    iget-object v0, p0, Lcom/android/actionassist/ActionAssistView$TriggerListener;->this$0:Lcom/android/actionassist/ActionAssistView;

    invoke-virtual {v0}, Lcom/android/actionassist/ActionAssistView;->hide()V

    goto :goto_0
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 63
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "target"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/actionassist/ActionAssistView$TriggerListener;->this$0:Lcom/android/actionassist/ActionAssistView;

    #getter for: Lcom/android/actionassist/ActionAssistView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;
    invoke-static {v1}, Lcom/android/actionassist/ActionAssistView;->access$000(Lcom/android/actionassist/ActionAssistView;)Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->getResourceIdForTarget(I)I

    move-result v0

    .line 68
    .local v0, resId:I
    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    :pswitch_0
    return-void

    .line 71
    :pswitch_1
    invoke-static {}, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->upKeyTrigger()V

    goto :goto_0

    .line 74
    :pswitch_2
    iget-object v1, p0, Lcom/android/actionassist/ActionAssistView$TriggerListener;->this$0:Lcom/android/actionassist/ActionAssistView;

    #calls: Lcom/android/actionassist/ActionAssistView;->launchRecentPanel()V
    invoke-static {v1}, Lcom/android/actionassist/ActionAssistView;->access$100(Lcom/android/actionassist/ActionAssistView;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x7f020000
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

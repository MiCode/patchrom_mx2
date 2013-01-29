.class Lcom/android/camera/ui/InLineSettingKnob$3;
.super Ljava/lang/Object;
.source "InLineSettingKnob.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/InLineSettingKnob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/InLineSettingKnob;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/InLineSettingKnob;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingKnob$3;->this$0:Lcom/android/camera/ui/InLineSettingKnob;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 82
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingKnob$3;->this$0:Lcom/android/camera/ui/InLineSettingKnob;

    iget-object v2, v2, Lcom/android/camera/ui/InLineSettingItem;->mOverrideValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 93
    :goto_0
    return v0

    .line 83
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 84
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingKnob$3;->this$0:Lcom/android/camera/ui/InLineSettingKnob;

    #getter for: Lcom/android/camera/ui/InLineSettingKnob;->mPrevious:Z
    invoke-static {v2}, Lcom/android/camera/ui/InLineSettingKnob;->access$200(Lcom/android/camera/ui/InLineSettingKnob;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingKnob$3;->this$0:Lcom/android/camera/ui/InLineSettingKnob;

    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingKnob$3;->this$0:Lcom/android/camera/ui/InLineSettingKnob;

    iget v3, v3, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/InLineSettingKnob;->changeIndex(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingKnob$3;->this$0:Lcom/android/camera/ui/InLineSettingKnob;

    #setter for: Lcom/android/camera/ui/InLineSettingKnob;->mPrevious:Z
    invoke-static {v2, v0}, Lcom/android/camera/ui/InLineSettingKnob;->access$202(Lcom/android/camera/ui/InLineSettingKnob;Z)Z

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingKnob$3;->this$0:Lcom/android/camera/ui/InLineSettingKnob;

    #getter for: Lcom/android/camera/ui/InLineSettingKnob;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/ui/InLineSettingKnob;->access$100(Lcom/android/camera/ui/InLineSettingKnob;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingKnob$3;->this$0:Lcom/android/camera/ui/InLineSettingKnob;

    #getter for: Lcom/android/camera/ui/InLineSettingKnob;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/camera/ui/InLineSettingKnob;->access$300(Lcom/android/camera/ui/InLineSettingKnob;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_1
    move v0, v1

    .line 93
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingKnob$3;->this$0:Lcom/android/camera/ui/InLineSettingKnob;

    #setter for: Lcom/android/camera/ui/InLineSettingKnob;->mPrevious:Z
    invoke-static {v0, v1}, Lcom/android/camera/ui/InLineSettingKnob;->access$202(Lcom/android/camera/ui/InLineSettingKnob;Z)Z

    goto :goto_1
.end method

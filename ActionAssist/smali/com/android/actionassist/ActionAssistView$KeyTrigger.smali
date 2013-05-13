.class Lcom/android/actionassist/ActionAssistView$KeyTrigger;
.super Ljava/lang/Object;
.source "ActionAssistView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/actionassist/ActionAssistView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyTrigger"
.end annotation


# static fields
.field static mDownTime:J

.field private static mHandler:Landroid/os/Handler;

.field static mLongPress:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->mHandler:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/android/actionassist/ActionAssistView$KeyTrigger$1;

    invoke-direct {v0}, Lcom/android/actionassist/ActionAssistView$KeyTrigger$1;-><init>()V

    sput-object v0, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->mLongPress:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelKeyTrigger()V
    .locals 5

    .prologue
    .line 175
    invoke-static {}, Lcom/android/actionassist/ActionAssistView;->access$200()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->sendEvent(IIIJ)V

    .line 176
    sget-object v0, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->mLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method static downKeyTrigger()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->mDownTime:J

    .line 165
    invoke-static {}, Lcom/android/actionassist/ActionAssistView;->access$200()I

    move-result v0

    sget-wide v1, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->mDownTime:J

    invoke-static {v0, v3, v3, v1, v2}, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->sendEvent(IIIJ)V

    .line 166
    sget-object v0, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->mLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    return-void
.end method

.method static sendEvent(IIIJ)V
    .locals 13
    .parameter "keyCode"
    .parameter "action"
    .parameter "flags"
    .parameter "when"

    .prologue
    .line 180
    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    .line 181
    .local v7, repeatCount:I
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    sget-wide v1, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->mDownTime:J

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    or-int/lit8 v3, p2, 0x8

    or-int/lit8 v11, v3, 0x40

    const/16 v12, 0x101

    move-wide/from16 v3, p3

    move v5, p1

    move v6, p0

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 185
    .local v0, ev:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 187
    return-void

    .line 180
    .end local v0           #ev:Landroid/view/KeyEvent;
    .end local v7           #repeatCount:I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method static upKeyTrigger()V
    .locals 5

    .prologue
    .line 170
    invoke-static {}, Lcom/android/actionassist/ActionAssistView;->access$200()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->sendEvent(IIIJ)V

    .line 171
    sget-object v0, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->mLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

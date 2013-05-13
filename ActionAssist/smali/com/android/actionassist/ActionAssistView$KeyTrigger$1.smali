.class final Lcom/android/actionassist/ActionAssistView$KeyTrigger$1;
.super Ljava/lang/Object;
.source "ActionAssistView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/actionassist/ActionAssistView$KeyTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 158
    invoke-static {}, Lcom/android/actionassist/ActionAssistView;->access$200()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/actionassist/ActionAssistView$KeyTrigger;->sendEvent(IIIJ)V

    .line 159
    return-void
.end method

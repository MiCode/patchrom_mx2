.class Lcom/android/internal/view/menu/KeyBackButton$1;
.super Ljava/lang/Object;
.source "KeyBackButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/KeyBackButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/KeyBackButton;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/KeyBackButton;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/internal/view/menu/KeyBackButton$1;->this$0:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton$1;->this$0:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/KeyBackButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton$1;->this$0:Lcom/android/internal/view/menu/KeyBackButton;

    #getter for: Lcom/android/internal/view/menu/KeyBackButton;->mCode:I
    invoke-static {v0}, Lcom/android/internal/view/menu/KeyBackButton;->access$000(Lcom/android/internal/view/menu/KeyBackButton;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton$1;->this$0:Lcom/android/internal/view/menu/KeyBackButton;

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/KeyBackButton;->sendEvent(II)V

    .line 40
    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton$1;->this$0:Lcom/android/internal/view/menu/KeyBackButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/KeyBackButton;->sendAccessibilityEvent(I)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton$1;->this$0:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/KeyBackButton;->performLongClick()Z

    goto :goto_0
.end method
